<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use App\Models\SizeM;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class SizeController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function addSize(Request $request)
    {
        $sizeName= $request->sizeName;
        $sizeInfo= $request->sizeInfo;
        if(BaseController::SQLValidate($sizeName)==false||BaseController::SQLValidate($sizeInfo)==false){
            return response()->json(['check'=>false,'message'=>'rejected']);
        }else{
            $check = DB::Table('tbl_size')->where('sizename',$sizeName)->orwhere('sizeinfo',$sizeInfo)->count();
            if($check==0){
                SizeM::create(['sizename' => $sizeName,'sizeinfo'=>$sizeInfo]);
                return response()->json(['check'=>true]);
            }else{
                return response()->json(['check'=>false,'message'=>'exist']);
            }
        }

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function showall()
    {
        $allSize = SizeM::all();
        return response()->json($allSize);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function editSize(Request $request)
    {
        $idSize=$request->idSize;
        $newName=$request->newName;
        $sizeinfoEdit=$request->sizeinfoEdit;
        if(BaseController::SQLValidate($newName)==false||BaseController::SQLValidate($sizeinfoEdit)==false||BaseController::checkInt($idSize)==false){
            return response()->json(['check'=>false,'message'=>'rejected']);
        }else if((BaseController::checkExist($idSize,'tbl_size','idSize')==0)){
            return response()->json(['check'=>false,'message'=>'notexists']);
        }else{
            DB::Table('tbl_size')->where('idSize',$idSize)->update(['sizename'=>$newName,'sizeinfo'=>$sizeinfoEdit,'updated_at'=>now()]);
            return response()->json(['check'=>true]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\SizeM  $sizeM
     * @return \Illuminate\Http\Response
     */
    public function show(SizeM $sizeM)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\SizeM  $sizeM
     * @return \Illuminate\Http\Response
     */
    public function deleteSize(Request $request)
    {
        $idSize= $request->idSize;
        if(BaseController::checkInt($idSize)==false){
            return response()->json(['check'=>false,'message'=>'rejected']);
        }else if(BaseController::checkExist($idSize,'tbl_size','idSize')==0){
            return response()->json(['check'=>false,'message'=>'notexist']);
        }else if(BaseController::checkExist($idSize,'storageprod','idSize')!=0){
            return response()->json(['check'=>false,'message'=>'exist']);
        }else{
            SizeM::where('idSize',$idSize)->delete();
            return response()->json(['check'=>true]);
        }

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\SizeM  $sizeM
     * @return \Illuminate\Http\Response
     */
    // public function update(Request $request, SizeM $sizeM)
    // {
    //     //
    // }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\SizeM  $sizeM
     * @return \Illuminate\Http\Response
     */
    public function destroy(SizeM $sizeM)
    {
        //
    }
}
