<?php

namespace App\Http\Controllers\API;
use App\Http\Controllers\BaseController;
use App\Models\User;
use App\Models\UserRole;
use App\Models\LoginM;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\UserRequest;
use Illuminate\Support\Facades\Mail;


class UserController extends BaseController
{


    public function deleteRole(Request $request){
        $idRole= $request->idRole;
        $checknull=BaseController::checkNull($idRole);
        $checkint = BaseController::checkInt($idRole);
        if($checknull==false|| $checkint==false){
            return response()->json(['status'=>400]);
        }else{
            UserRole::where('id', $idRole)->delete();
            return response()->json(['check'=>200]);
        }

    }

    // ===============================

    public function AllRole(){
        $result = DB::Table('userrole')->get();
        return response()->json($result);
    }

    // ============================================================
    public function addUserRole(){
        $newUsRole= $_POST['newUsRole'];
        if(BaseController::SQLValidate($newUsRole)==true){
            $check =UserRole::where('name',$newUsRole)->count();
            if($check==0){
                DB::Table('userrole')->insert(['name'=>$newUsRole,'created_at'=>now()]);
                return response()->json(['check'=>200]);
            }else{
                return response()->json(['check'=>400,'message'=>'exist']);
            }
        }else{
            return response()->json(['check'=>401,'message'=>'Rejected']);
        }
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(UserRequest $request)
    {
        $username= $_POST['username'];
        $email= $_POST['email'];
        $userRole=$request->userRole;
        // ==========================================================================================
        if(BaseController::SQLValidate($username)==false||BaseController::SQLValidate($email)==false||BaseController::SQLValidate($userRole)==false){
            return response()->json(['check'=>401,'message'=>'Rejected']);
        }else if(BaseController::checkMail($email)==false){
            return response()->json(['check'=>401,'message'=>'Email kh??ng h???p l???']);
        }else{
            $permitted_chars = '0123456789abcdefghijklmnopqrstuvwxyz';
            $password = substr(str_shuffle($permitted_chars), 0, 5);
            $password1= Hash::make($password);
            $check = DB::Table('users')->where('email',$email)->orWhere('username',$username)->count();
            if($check!=0){
                return response()->json(['check'=>403,'message'=>'exist']);
            }else{
                DB::Table('users')->insert(['username'=>$username,'password'=>$password1,'email'=>$email,'idRole'=>$userRole,'created_at'=>now()]);
                $details = [
                    'title' => 'Email th??ng b??o t??i kho???n',
                    'username'=> $username,
                    'password'=> $password,
                    'time'=>'T??i kho???n ???????c t???o v??o l??c: '.date('d/m/yy',time()),
                    'thongbao'=>'Vui l??ng ????ng nh???p v?? thay ?????i m???t kh???u . '
                ];
                Mail::to($email)->send(new \App\Mail\emailthongbao($details));
                return response()->json(['check'=>200]);
            }
        }

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function allUser()
    {
        $result =DB::Table('users')->join('userrole','users.idRole','=','userrole.id')->get();
        return response()->json($result);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function checkEmail(Request $request){
        $email = $request->email;
        $google_id = $request->google_id;
        $image = $request->image;
        $name = $request->name;
        $check = User::where('email','=',$email)->count('id');
        if($check==0){
            return response()->json(false);
        }else{
            $idUser= User::where('email','=',$email)->value('id');
            if(LoginM::where('idUser','=',$idUser)->count('idUser')==0){
            User::where('email','=',$email)->update(['image'=>$image,'fullName'=>$name,'email_verified_at'=>now(),'ggId'=>$google_id,'updated_at'=>now()]);
            LoginM::create(['idUser'=>$idUser,'created_at'=>now()]);
            return response()->json(true);
            }else{
                return response()->json(true);
            }

        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    // public function update(Request $request, User $user)
    // {
    //     //
    // }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        //
    }
}
