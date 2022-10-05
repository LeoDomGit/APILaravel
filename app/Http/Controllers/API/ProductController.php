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

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function productDetail()
    {
        $idProd = $_POST['idProd'];
        if (BaseController::checkInt($idProd) == true && BaseController::checkExist($idProd, 'products', 'id') != 0) {
            $product = productM::find($idProd);
            $images = $product->gallery;
            if (count($product) != 0) {
                return response()->json(['check' => true, 'result' => $product, 'images' => $images]);
            } else {
                return response()->json(['check' => 'false1']);
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
        $result = productM::with('cate', 'brand')->get();
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

    public function addProdGallery2(Request $request)
    {
        if ($request->hasFile('files')) {
            $idProd = $request->idProd;
            $dataProd = productM::find($idProd);
            $files = $request->file('files');
            foreach ($files as $key => $file) {
                $nameFile = $file->getClientOriginalName();
                $FileName = $key . "-" . time() . "_" . substr(md5($dataProd->id), 0, 6) . "." . explode(".", $nameFile)[1];
                $file->move("images", $FileName);
                productGalleryM::create([
                    'idProd' => $idProd,
                    'imagename' => $FileName,
                    'created_at' => now(),
                    'updated_at' => now()
                ]);
            }
            return response()->json(['check' => true]);
        } else {
            return response()->json(['check' => false, 'message' => 'rejected']);
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
        $params = [$prodName, $summary, $prodTypeID, $brandID, $desc];
        if (BaseController::SQLValidate2($params) == false) {
            return response()->json(['check' => false, 'message' => 'rejected']);
        } else if (BaseController::checkInt($prodTypeID) == false || BaseController::checkInt($brandID) == false || BaseController::checkExist($prodTypeID, 'categrory', 'idcate') == 0 || BaseController::checkExist($brandID, 'tbl_brand', 'idbrand') == 0) {
            return response()->json(['check' => false, 'message' => 'rejected']);
        } else if (BaseController::checkExist($prodName, 'products', 'productName') != 0) {
            return response()->json(['check' => false, 'message' => 'exist']);
        } else {
            $lastInsertID = DB::table('products')->insertGetId(['productName' => $prodName, 'summary' => $summary, 'content' => $desc, 'idcate' => $prodTypeID, 'idBrand' => $brandID, 'created_at' => now()]);
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
            'nameProd' => 'required',
            'summaryProd' => 'required',
            'brandProd' => 'required',
        ], [
            'nameProd.required' => 'Vui lòng nhập tên !',
            'summaryProd.required' => 'Vui lòng nhập tóm tắt !',
            'brandProd.required' => 'Vui lòng chọn thương hiệu !'
        ]);
        if ($validation->fails()) {
            return response()->json(['status' => 204, 'msg' => $validation->errors()]);
        }
        $checkName = productM::where('productName', '=', trim(ucfirst($request->nameProd)))->where('id', '!=', $request->id)->count();
        if ($checkName > 0) {
            return response()->json(['status' => 202, 'msg' => 'Tên sản phẩm đã có vui lòng chọn tên khác !']);
        }

        $update = productM::find($request->id);
        $update->update([
            'productName' => trim(ucfirst($request->nameProd)),
            'summary' => trim($request->summaryProd),
            'content' => trim($request->contentProd),
            'idcate' => $request->cateProd,
            'idBrand' => $request->brandProd,
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
