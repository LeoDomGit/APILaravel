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
    public function edit(SizeM $sizeM)
    {
        //
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
