<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use App\Models\storagesM;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StoragesCotroller extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function addStorages(Request $request){
        $storageName= $request->storageName;
        $storageInfo= $request->storageInfo;
        if(BaseController::SQLValidate($storageName)==false||BaseController::SQLValidate($storageInfo)==false){
            return response()->json(['check'=>false,'message'=>'rejected']);
        }else{
            $check = DB::Table('storages')->where('storageName',$storageName)->orwhere('storageInfo',$storageInfo)->count();
            if($check==0){
                storagesM::create(['storageName' => $storageName,'storageInfo'=>$storageInfo]);
                return response()->json(['check'=>true]);
            }else{
                return response()->json(['check'=>false,'message'=>'exist']);
            }
        }
    }
    public function editStorages(Request $request)
    {
        $id=$request->id;
        $storageNameEdit=$request->storageNameEdit;
        $storageInfoEdit=$request->storageInfoEdit;
        if(BaseController::SQLValidate($storageNameEdit)==false||BaseController::SQLValidate($storageInfoEdit)==false||BaseController::checkInt($id)==false){
            return response()->json(['check'=>false,'message'=>'rejected']);
        }else if((BaseController::checkExist($id,'storages','id')==0)){
            return response()->json(['check'=>false,'message'=>'notexists']);
        }else{
            DB::Table('storages')->where('id',$id)->update(['storageName'=>$storageNameEdit,'storageInfo'=>$storageInfoEdit,'updated_at'=>now()]);
            return response()->json(['check'=>true]);
        }
    }
    public function showall()
    {
        $allStorages=storagesM::all();
        return response()->json($allStorages);
    }
    public function deleteStorages(Request $request)
    {
        $id= $request->id;
        if(BaseController::checkInt($id)==false){
            return response()->json(['check'=>false,'message'=>'rejected']);
        }else if(BaseController::checkExist($id,'storages','id')==0){
            return response()->json(['check'=>false,'message'=>'notexist']);
        }else if(BaseController::checkExist($id,'storageprod','idStorage')!=0){
            return response()->json(['check'=>false,'message'=>'exist']);
        }else{
            storagesM::where('id',$id)->delete();
            return response()->json(['check'=>true]);
        }

    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\storagesM  $storagesM
     * @return \Illuminate\Http\Response
     */
    public function show(storagesM $storagesM)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\storagesM  $storagesM
     * @return \Illuminate\Http\Response
     */
    public function edit(storagesM $storagesM)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\storagesM  $storagesM
     * @return \Illuminate\Http\Response
     */
    // public function update(Request $request, storagesM $storagesM)
    // {
    //     //
    // }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\storagesM  $storagesM
     * @return \Illuminate\Http\Response
     */
    public function destroy(storagesM $storagesM)
    {
        //
    }
}
