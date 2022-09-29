<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use App\Models\TagM;
use Illuminate\Http\Request;

class TagController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function addTag(Request $request)
    {
        $tagname=$request->tagname;
        if(BaseController::SQLValidate($tagname)==false){
            return response()->json(['check'=>false,'message'=>'rejected']);
        }else if(BaseController::checkExist($tagname,"tbl_tag",'tagname')!=0){
            return response()->json(['check'=>false,'message'=>'exist']);
        }else{
            TagM::create(['tagname'=>$tagname,'created_at'=>now()]);
            return response()->json(['check'=>true]);
        }
    }
    public function editTag(Request $request){
        $idtag = $request->idtag;
        $tagname= $request->tagname;
        if(BaseController::SQLValidate($tagname)==false){
            return response()->json(['check'=>false,'message'=>'rejected']);
        }else if(BaseController::checkExist($tagname,"tbl_tag",'tagname')!=0){
            return response()->json(['check'=>false,'message'=>'exist']);
        }else{
            $params=['tagName'=>$tagname,'updated_at'=>now()];
            $collumn='idtag';
            $columnvalue=$idtag;
            BaseController::update("tbl_tag", $params,$collumn,$columnvalue);
            return response()->json(['check'=>true]);
        }
    }
    public function deleteTag(Request $request)
    {
        $idtag= $request->idtag;
        $table='prodtage';
        $column='idTag';
        if(BaseController::checkInt($idtag)==false){
            return response()->json(['check'=>false,'message'=>'rejected']);
        }else if(BaseController::checkExist($idtag,$table,$column)!=0){
            return response()->json(['check'=>false,'message'=>'exist']);
        }else{
            TagM::where('idtag',$idtag)->delete();
            return response()->json(['check'=>true]);
        }
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function showall()
    {
        $allTag=TagM::all();
        return response()->json($allTag);
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
     * @param  \App\Models\TagM  $tagM
     * @return \Illuminate\Http\Response
     */
    public function show(TagM $tagM)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\TagM  $tagM
     * @return \Illuminate\Http\Response
     */
    public function edit(TagM $tagM)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\TagM  $tagM
     * @return \Illuminate\Http\Response
     */
    // public function update(Request $request, TagM $tagM)
    // {
    //     //
    // }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TagM  $tagM
     * @return \Illuminate\Http\Response
     */
    public function destroy(TagM $tagM)
    {
        //
    }
}
