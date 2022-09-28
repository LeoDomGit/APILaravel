<?php

namespace App\Http\Controllers\API;
use App\Models\ColorM;
use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ColorController extends BaseController
{
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function editColor(Request $request){
        $idColor= $request->idColor;
        $colorname= $request->colorname;
        $newColorcode= $request->newColorcode;
        $table = 'colors';
        if(BaseController::SQLValidate($colorname)==false ||BaseController::SQLValidate($newColorcode)==false||BaseController::checkInt($idColor)==false){
            return response()->json(['check'=>false,'message'=>'rejected']);
        }else if(BaseController::checkExist($colorname,$table,'colorName')!=0||BaseController::checkExist($newColorcode,$table,'colorpicker')!=0){
            return response()->json(['check'=>false,'message'=>'exist']);
        }else{
            $params=['colorName'=>$colorname,'colorpicker'=>$newColorcode,'updated_at'=>now()];
            $collumn='id';
            $columnvalue=$idColor;
            BaseController::update($table, $params,$collumn,$columnvalue);
            return response()->json(['check'=>true]);
        }
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function addColor(Request $request)
    {
        $colorname= $request->colorname;
        $newColorcode= $request->newColorcode;
        if(BaseController::SQLValidate($colorname)==false||BaseController::SQLValidate($newColorcode)==false){
            return response()->json(['check'=>false,'message'=>'rejected']);
        }else if(BaseController::checkExist($colorname,'colors','colorName')!=0){
            return response()->json(['check'=>false,'message'=>'exist']);
        }else{
            DB::Table('colors')->insert(['colorName'=>$colorname,'colorpicker'=>$newColorcode,'created_at'=>now()]);
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
        $colors = ColorM::all();
        return response()->json($colors);
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
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
