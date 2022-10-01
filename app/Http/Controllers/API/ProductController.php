<?php

namespace App\Http\Controllers\API;
use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\productM;
use App\Models\productGalleryM;

class ProductController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function addProdGallery()
    {
        $idProd=$_POST['idProd'];
        if(isset($_POST['idProd'])&&BaseController::checkInt($_POST['idProd'])==true&&$_FILES['files']['name'][0]!=''){
            $filetype = $_FILES['files']['type'];
            $accept=['gif', 'jpeg', 'jpg', 'png', 'svg', 'blob','GIF','JPEG','JPG','PNG','SVG','webpimage','WEBIMAGE','webpimage','webpimage','webpimage','webp','WEBP'];
            $keyarr=[];
            foreach ($filetype as $key => $value) {
                if(in_array($value,$accept)){
                   array_push($keyarr,$key); 
                }
            }
            foreach ($_FILES['files']['name'] as $key1 => $value1) {
                if(!in_array($key1,$keyarr)){
                    move_uploaded_file($_FILES['files']['tmp_name'][$key1],'images/'.$value1);
                    productGalleryM::create(['idProd'=>$idProd,'imagename'=>$value1,'created_at'=>now()]);
                }
            }
            return response()->json(['check'=>true]);
        }else{
            return response()->json(['check'=>false,'message'=>'rejected']);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $prodName=$request->prodName;
        $summary=$request->summary;
        $prodTypeID=$request->prodTypeID;
        $brandID=$request->brandID;
        $desc=$request->desc;
        $params=[$prodName,$summary,$prodTypeID,$brandID,$desc];
        if(BaseController::SQLValidate2($params)==false){
            return response()->json(['check'=>false,'message'=>'rejected']);
        }else if(BaseController::checkInt($prodTypeID)==false||BaseController::checkInt($brandID)==false||BaseController::checkExist($prodTypeID,'categrory','idcate')==0||BaseController::checkExist($brandID,'tbl_brand','idbrand')==0){
            return response()->json(['check'=>false,'message'=>'rejected']);
        }else if(BaseController::checkExist($prodName,'products','productName')!=0){
            return response()->json(['check'=>false,'message'=>'exist']);
        }else{
            $lastInsertID = DB::table('products')->insertGetId(['productName'=>$prodName,'summary'=>$summary,'content'=>$desc,'idcate'=>$prodTypeID,'idBrand'=>$brandID,'created_at'=>now()]);
            return response()->json(['check'=>true,'id'=>$lastInsertID ]);
        }
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
