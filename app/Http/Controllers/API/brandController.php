<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use App\Models\brandM;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BrandController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    // public function index()
    // {
    //     //
    // }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function allbrand()
    {
        $allBrands = brandM::with('cate')->get();
        return response()->json($allBrands);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $brandname = $request->nameBrand;
        if (BaseController::SQLValidate($brandname) == false) {
            return response()->json(['check' => false, 'message' => 'rejected']);
        } else if (BaseController::checkExist($brandname, 'tbl_brand', 'brandname') != 0) {
            return response()->json(['check' => false, 'message' => 'exist']);
        } else {
            $insertBrand = brandM::create(['brandname' => trim(ucfirst($brandname))]);
            foreach ($request->cate as $key => $value) {
                DB::table('brand_categrory')->insert([
                    'idBrand' => $insertBrand->idbrand,
                    'idCate' => $value,
                ]);
            }
            return response()->json(['check' => true]);
        }
    }
    /**
     * Display the specified resource.
     *
     * @param  \App\Models\brandM  $brandM
     * @return \Illuminate\Http\Response
     */
    // public function show(brandM $brandM)
    // {
    //     //
    // }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\brandM  $brandM
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request)
    {
        $brandname = $request->nameBrand;
        $idBrand = $request->idBrand;
        $checkNameExist = brandM::where('idbrand', '!=', $idBrand)->where('brandname', '=', trim(ucfirst($brandname)))->count();
        if ($checkNameExist > 0) {
            return response()->json(['check' => false, 'message' => 'exist']);
        }
        $update = brandM::find($idBrand);
        $update->update([
            'brandname' => trim(ucfirst($brandname)),
            'updated_at' => now()
        ]);
        $update->cate()->sync($request->cate);
        return response()->json(['check' => true]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\brandM  $brandM
     * @return \Illuminate\Http\Response
     */
    // public function update(Request $request, brandM $brandM)
    // {
    //     //
    // }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\brandM  $brandM
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $idBrand = $request->idBrand;
        if (BaseController::checkInt($idBrand) == false) {
            return response()->json(['check' => false, 'message' => 'rejected']);
        } else if (BaseController::checkExist($idBrand, 'tbl_brand', 'idbrand') == 0) {
            return response()->json(['check' => false, 'message' => 'not exist']);
        } else if ((BaseController::checkExist($idBrand, 'products', 'idBrand') != 0)) {
            return response()->json(['check' => false, 'message' => 'fail']);
        } else {
            brandM::where('idbrand', $idBrand)->delete();
            return response()->json(['check' => true]);
        }
    }
}
