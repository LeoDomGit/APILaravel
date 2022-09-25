<?php

namespace App\Http\Controllers;

use App\Models\brandM;
use Illuminate\Http\Request;

class brandController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $brandname= $request->brandname;
        if(BaseController::SQLValidate($brandname)==true){
            return response()->json(['check'=>false,'message'=>'rejected']);
        }else if(BaseController::checkExist($brandname,'tbl_brand','brandname')!=0){
            return response()->json(['check'=>false,'message'=>'exist']);
        }else{
            
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\brandM  $brandM
     * @return \Illuminate\Http\Response
     */
    public function show(brandM $brandM)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\brandM  $brandM
     * @return \Illuminate\Http\Response
     */
    public function edit(brandM $brandM)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\brandM  $brandM
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, brandM $brandM)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\brandM  $brandM
     * @return \Illuminate\Http\Response
     */
    public function destroy(brandM $brandM)
    {
        //
    }
}
