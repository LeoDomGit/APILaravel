<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\BaseController;
use App\Models\cateM;
use Illuminate\Support\Facades\DB;
class CateGroryController extends BaseController
{

      /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function deleteCate(Request $request){
        $idCate = $request->idCate;
        if(BaseController::checkInt($idCate)==false||BaseController::checkExist($idCate,'products','idcate')!=0){
            return response()->json(['check'=>false,'message'=>'exist']);
        }else{
            cateM::where('idcate', $idCate)->delete();
            return response()->json(['check'=>true]);
        }
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function editCate(Request $request)
    {
        $idCate = $request->idCate;
        $newCate = $request->newCate;
        if(BaseController::SQLValidate($newCate)==false||BaseController::checkInt($idCate)==false){
            return response()->json(['check'=>false,'message'=>'rejected']);
        }else if(BaseController::checkExist($newCate,'categrory','cateName')!=0){
            return response()->json(['check'=>false,'message'=>'exist']);
        }else{
            cateM::where('idcate',$idCate)->update(['cateName' => $newCate,'updated_at'=>now()]);
            return response()->json(['check'=>true]);
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $newcate = $request->newcate;
        if(BaseController::SQLValidate($newcate)==false){
            return response()->json(['check'=>false,'message'=>'rejected']);
        }else if(BaseController::checkExist($newcate,'categrory','cateName')!=0){
            return response()->json(['check'=>false,'message'=>'exist']);
        }else{
            cateM::create(['cateName'=>$newcate]);
            return response()->json(['check'=>true]);
        }
    }
    
    
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function showall()
    {
        $allcate =  cateM::all();
        return response()->json($allcate);
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function switchCate(Request $request)
    {
        $idcate= $request->idCate;
        if(BaseController::checkInt($idcate)==false){
            return response()->json(['check'=>false,'message'=>'rejected']);
        }else{
            $oldStt=BaseController::getValue('categrory',$idcate,'idcate','status');
            if($oldStt==0){
                cateM::where('idcate',$idcate)->update(['status' => 1,'updated_at'=>now()]);
                return response()->json(['check'=>true]);
            }else{
                cateM::where('idcate',$idcate)->update(['status' => 0,'updated_at'=>now()]);
                return response()->json(['check'=>true]);

            }
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // public function update(Request $request, $id)
    // {
    //     //
    // }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
