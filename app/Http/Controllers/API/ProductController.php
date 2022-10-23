<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\BaseController;
use App\Models\cateM;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\productM;
use App\Models\productGalleryM;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use function PHPSTORM_META\type;

class ProductController extends BaseController
{
    public function switchSP(Request $request)
    {
        $idProd = $request->idSP;
        if (BaseController::checkInt($idProd) == false || BaseController::checkExist($idProd, 'products', 'id') == 0) {
            return response()->json(['check' => false, 'message' => 'notexist']);
        } else {
            $old = productM::where('id', '=', $idProd)->value('status');
            if ($old == 0) {
                productM::where('id', '=', $idProd)->update(['status' => 1, 'updated_at' => now()]);
                return response()->json(['check' => true]);
            } else {
                productM::where('id', '=', $idProd)->update(['status' => 0, 'updated_at' => now()]);
                return response()->json(['check' => true]);
            }
        }
    }
    // ====================================================
    public function updateProduct(Request $request)
    {


        $validation = Validator::make($request->all(), [
            'id' => 'required|numeric',
            'prodName' => 'required',
            'summary' => 'required',
            'prodTypeID' => 'required|numeric',
            'brandID' => 'required|numeric',
            'desc' => 'required',

        ]);
        if ($validation->fails()) {
            return response()->json(['check' => false]);
        } else {
            $id = $request->id;
            $prodName = $request->prodName;
            $summary = $request->summary;
            $prodTypeID = $request->prodTypeID;
            $brandID = $request->brandID;
            $desc = $request->desc;
            $check1 = productM::where('id', '=', $id)->count();
            $check2 = productM::where('productName', '=', $prodName)->count();
            if ($check1 == 0) {
                return response()->json(['check' => false, 'message' => 'notexist']);
            } else if ($check2 != 0) {
                return response()->json(['check' => false, 'message' => 'exist']);
            } else {
                productM::where('id', '=', $id)->update(['productName' => $prodName, 'summary' => $summary, 'content' => $desc, 'status' => 0, 'idcate' => $prodTypeID, 'idBrand' => $brandID, 'updated_at' => now()]);
                return response()->json(['check' => true]);
            }
        }
    }
    // ==================================================


    public function deleteImage()
    {
        $imagename = $_POST['imageName'];
        if (BaseController::SQLValidate($imagename) == false) {
            return response()->json(['check' => false]);
        } else {
            $file_path = public_path('images/' . $imagename);
            if (file_exists($file_path)) {
                unlink($file_path);
            }
            productGalleryM::where('imagename', '=', $imagename)->delete();
            return response()->json(['check' => true]);
        }
    }
    // ===================================


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function productDetail()
    {
        $idProd = $_POST['idProd'];
        if (BaseController::checkInt($idProd) == true && BaseController::checkExist($idProd, 'products', 'id') != 0) {
            $product = DB::SELECT("SELECT products.id as idProd,products.productName as prodName,products.status as prodStatus,products.created_at as prodCreate,products.updated_at as prodUpdate,summary as summary,cateName as cateName,brandname as brandname,products.idBrand as prodBrandId,products.idcate as prodCateId,content as content FROM products inner join tbl_brand on products.idBrand=tbl_brand.idbrand inner join categrory on products.idcate = categrory.idcate where products.id =" . $idProd);
            $images = DB::Select("select imagename from productgallery where idProd=" . $idProd);
            // $images1 = [];
            // foreach ($images as  $value) {
            //     array_push($images1,$value);
            // }
            if (count($product) != 0) {
                return response()->json(['check' => true, 'result' => $product, 'images' => $images]);
            } else {
                return response()->json(['check' => false]);
            }
        } else {
            return response()->json(['check' => false]);
        }
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function allProduct()
    {
        $result = DB::Table('products')->join('tbl_brand', 'products.idBrand', '=', 'tbl_brand.idbrand')->join('categrory', 'products.idcate', '=', 'categrory.idcate')->select('products.id as idProd', 'products.productName as prodName', 'products.status as prodStatus', 'products.created_at as prodCreate', 'products.updated_at as prodUpdate', 'summary as summary', 'cateName as cateName', 'brandname as brandname', 'products.idBrand as prodBrandId', 'products.content', 'products.idcate as prodCateId')->get();
        return response()->json($result);
    }
    /*
    ============
               ============
    */
    public function addProdGallery()
    {
        $idProd = $_POST['idProd'];
        if (isset($_POST['idProd']) && BaseController::checkInt($_POST['idProd']) == true && $_FILES['files']['name'][0] != '') {
            $filetype = $_FILES['files']['type'];
            $accept = ['gif', 'jpeg', 'jpg', 'png', 'svg', 'jfif', 'JFIF', 'blob', 'GIF', 'JPEG', 'JPG', 'PNG', 'SVG', 'webpimage', 'WEBIMAGE', 'webpimage', 'webpimage', 'webpimage', 'webp', 'WEBP'];
            $keyarr = [];
            foreach ($filetype as $key => $value) {
                if (in_array($value, $accept)) {
                    array_push($keyarr, $key);
                }
            }
            foreach ($_FILES['files']['name'] as $key1 => $value1) {
                if (!in_array($key1, $keyarr)) {
                    move_uploaded_file($_FILES['files']['tmp_name'][$key1], 'images/' . $value1);
                    productGalleryM::create(['idProd' => $idProd, 'imagename' => $value1, 'created_at' => now()]);
                }
            }
            return response()->json(['check' => true]);
        } else {
            return response()->json(['check' => false, 'message' => 'rejected']);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function GetBrandByCategrory(Request $request)
    {
        $output = '';
        $brandByCate = cateM::find($request->id);
        $output .= ' <option value="" selected>--Các thương hiệu ' . $brandByCate->cateName . '-- </option>';
        foreach ($brandByCate->brand as $key => $value) {
            $output .= ' <option value="' . $value->idbrand . '">' . $value->brandname . '</option>';
        }
        return response()->json($output);
    }

    public function addProdGallery2()
    {
        if (BaseController::checkInt($_POST['idProd'] == false)) {
            return response()->json(['check' => false, 'message' => 'rejected']);
        } else {
            $idProd = $_POST['idProd'];
            $arr = DB::Table('productgallery')->where('idProd', $idProd)->select('imagename')->get();
            foreach ($arr as  $value) {
                foreach ($value as $value2) {
                    $file_path = public_path('images/' . $value2);
                    echo $file_path;
                    if (file_exists($file_path)) {
                        unlink($file_path);
                    }
                }
            }
            productGalleryM::where('idProd', '=', $idProd)->delete();
            $filetype = $_FILES['files']['type'];
            $accept = ['gif', 'jpeg', 'jpg', 'png', 'svg', 'jfif', 'JFIF', 'blob', 'GIF', 'JPEG', 'JPG', 'PNG', 'SVG', 'webpimage', 'WEBIMAGE', 'webpimage', 'webpimage', 'webpimage', 'webp', 'WEBP'];
            $keyarr = [];
            foreach ($filetype as $key => $value) {
                if (in_array($value, $accept)) {
                    array_push($keyarr, $key);
                }
            }
            foreach ($_FILES['files']['name'] as $key1 => $value1) {
                if (!in_array($key1, $keyarr)) {
                    move_uploaded_file($_FILES['files']['tmp_name'][$key1], 'images/' . $value1);
                    productGalleryM::create(['idProd' => $idProd, 'imagename' => $value1, 'created_at' => now()]);
                }
            }
            return response()->json(['check' => 200]);
        }
    }

    // ==========================================================

    public function create(Request $request)
    {
        $prodName = $request->prodName;
        $summary = $request->summary;
        $prodTypeID = $request->prodTypeID;
        $brandID = $request->brandID;
        $desc = $request->desc;
        $price = $request->price;
        $discount = $request->discount;
        $params = [$prodName, $summary, $prodTypeID, $brandID, $desc, $price, $discount];
        if (BaseController::SQLValidate2($params) == false) {
            return response()->json(['check' => false, 'message' => 'rejected']);
        } else if (BaseController::checkInt($prodTypeID) == false || BaseController::checkInt($brandID) == false || BaseController::checkExist($prodTypeID, 'categrory', 'idcate') == 0 || BaseController::checkExist($brandID, 'tbl_brand', 'idbrand') == 0) {
            return response()->json(['check' => false, 'message' => 'rejected']);
        } else if (BaseController::checkExist($prodName, 'products', 'productName') != 0) {
            return response()->json(['check' => false, 'message' => 'exist']);
        } else {
            $lastInsertID = DB::table('products')->insertGetId(['productName' => $prodName, 'summary' => $summary, 'content' => $desc, 'idcate' => $prodTypeID, 'idBrand' => $brandID,'price'=>$price,'discount'=>$discount, 'created_at' => now()]);
            return response()->json(['check' => true, 'id' => $lastInsertID]);
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    // public function store(Request $request)
    // {
    //     //
    // }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // public function show($id)
    // {
    //     //
    // }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // public function edit($id)
    // {
    //     //
    // }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function updateProd(Request $request)
    {

        $validation = Validator::make($request->all(), [
            'prodNameedit' => 'required',
            'summaryedit' => 'required',
            'brandIDedit' => 'required',
        ], [
            'prodNameedit.required' => 'Vui lòng nhập tên !',
            'summaryedit.required' => 'Vui lòng nhập tóm tắt !',
            'brandIDedit.required' => 'Vui lòng chọn thương hiệu !'
        ]);
        if ($validation->fails()) {
            return response()->json(['status' => 204, 'msg' => $validation->errors()]);
        }
        $checkName = productM::where('productName', '=', trim(ucfirst($request->prodNameedit)))->where('id', '!=', $request->id)->count();
        if ($checkName > 0) {
            return response()->json(['status' => 202, 'msg' => 'Tên sản phẩm đã có vui lòng chọn tên khác !']);
        }

        $update = productM::find($request->id);
        $update->update([
            'productName' => trim(ucfirst($request->prodNameedit)),
            'summary' => trim($request->summaryedit),
            'content' => trim($request->descedit),
            'idcate' => $request->prodTypeIDedit,
            'idBrand' => $request->brandIDedit,
            'updated_at' => now()
        ]);
        if ($update) {
            return response()->json(['status' => 200, 'msg' => 'Đã cập nhật sản phẩm thành công !']);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // public function destroy($id)
    // {
    //     //
    // }
}
