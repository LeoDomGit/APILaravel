<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class BaseController
{
    /**
     * @var \Illuminate\Http\Request
     */
    // ===============================

    public function SelectSql($sql){
        $result = DB::SELECT($sql);
        return $result;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getValue($table,$item,$collumn,$collumnget){
        $result=DB::Table($table)->where($collumn,'=',$item)->value($collumnget);
        return $result;
    }

    // =====================================================

    public function checkNull($item){
        if(trim($item,' ')==''){
            return false;
        }else{
            return true;
        }

    }
    public function SQLValidate($item)
    {

        $pattern = '/(select|Select|SELECT|update|Update|UPDATE|Delete|DELETE|delete) (.+) from/i ';
        if(trim($item)==''){
            return false;
        }else if(preg_match($pattern,$item)){
            return false;
        }else{
            return true;
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function SQLValidate2($params)
    {
        $arr = $params;
        $pattern = '/(select|Select|SELECT|update|Update|UPDATE|Delete|DELETE|delete) (.+) from/i ';
        $check=true;
        foreach ($arr as $value) {
            if(trim($value)==''){
                $check= false;
                return false;
            }else if(preg_match($pattern,$value)){
                $check= false;
                return false;
            }else{
                $check= true;
            }
        }
        return $check;
        
    }
    // ============================================
    public function checkExist($item,$table,$column)
    {
        $check = DB::Table($table)->where($column,$item)->count();
        return $check;
    }

    // ====================================

    public function checkInt($item){
        if(trim($item)==''){
            return false;
        }else{
            return is_numeric($item);
        }
    }
    // =================================

    public function checkMail($item){
        $check=false;
        $pattern='/(.+)@(.+)\.(com)/i';
        $pattern2='/(.+)@(leontec.co+)\.(jp)/i';
        if(preg_match($pattern2,$item)||preg_match($pattern,$item)){
            $check=true;
        }else{
            $check = false;
        }
        return $check;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function SQLSelect($sql){
        $result = DB::Select($sql);
        return $result;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update($table, $params,$collumn,$columnvalue)
    {
        DB::table($table)->where($collumn,$columnvalue)->update($params);
    }

    // /**
    //  * Display the specified resource.
    //  *
    //  * @param  int  $id
    //  * @return \Illuminate\Http\Response
    //  */
    // public function show($id)
    // {
    //     //
    // }

    // /**
    //  * Show the form for editing the specified resource.
    //  *
    //  * @param  int  $id
    //  * @return \Illuminate\Http\Response
    //  */
    // public function edit($id)
    // {
    //     //
    // }

    // /**
    //  * Update the specified resource in storage.
    //  *
    //  * @param  \Illuminate\Http\Request  $request
    //  * @param  int  $id
    //  * @return \Illuminate\Http\Response
    //  */
    // public function update(Request $request, $id)
    // {
    //     //
    // }

    // /**
    //  * Remove the specified resource from storage.
    //  *
    //  * @param  int  $id
    //  * @return \Illuminate\Http\Response
    //  */
    // public function destroy($id)
    // {
    //     //
    // }
}
