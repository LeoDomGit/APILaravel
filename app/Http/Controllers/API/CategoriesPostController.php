<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\cateM;
use App\Models\CatePosts;
use App\Models\postsM;
use Illuminate\Http\Request;

class CategoriesPostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $result = CatePosts::with('posts')->get();
        return response()->json($result);
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

        $checkSlug = CatePosts::where('slugCatePost', '=', $request->slugCate)->count();
        if ($checkSlug > 0) {
            return response()->json(['status' => 202, 'msg' => 'Slug thể loại đã tồn tại !']);
        }

        if ($request->hasFile('logoFile')) {
            $file = $request->file('logoFile');
            $namefile = $file->getClientOriginalName();
            $newName = time() . $request->slugCate . substr(md5(rand()), 0, 5) . "." . explode(".", $namefile)[1];
            $file->move('images/cate_posts', $newName);
            CatePosts::create([
                'nameCatePosts' => ucfirst(trim($request->nameCate)),
                'slugCatePost' => $request->slugCate,
                'logo' => $newName,
                'der' => trim($request->der),
                'created_at' => now()
            ]);
            return response()->json(['status' => 200, 'msg' => 'Thêm thể loại thành công !']);
        } else {
            CatePosts::create([
                'nameCatePosts' => ucfirst(trim($request->nameCate)),
                'slugCatePost' => $request->slugCate,
                'der' => trim($request->der),
                'created_at' => now()
            ]);
            return response()->json(['status' => 200, 'msg' => 'Thêm thể loại thành công !']);
        }
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
    public function update(Request $request)
    {
        $checkExits = CatePosts::where('slugCatePost', '=', $request->slugCate)->where('id', '!=', $request->id)->count();
        if ($checkExits > 0) {
            return response()->json(['status' => 202, 'msg' => 'Slug thể loại đã tồn tại !']);
        }
        $cate = CatePosts::find($request->id);
        if ($request->hasFile('logoFile')) {
            $file = $request->file('logoFile');
            $namefile = $file->getClientOriginalName();
            $newName = time() . $request->slugCate . substr(md5(rand()), 0, 5) . "." . explode(".", $namefile)[1];
            $file->move('images/cate_posts', $newName);
            $cate->update([
                'nameCatePosts' => ucfirst(trim($request->nameCate)),
                'slugCatePost' => $request->slugCate,
                'logo' => $newName,
                'der' => trim($request->der),
                'updated_at' => now()
            ]);
            return response()->json(['status' => 200, 'msg' => 'Cập nhật thành công !']);
        } else {
            $cate->update([
                'nameCatePosts' => ucfirst(trim($request->nameCate)),
                'slugCatePost' => $request->slugCate,
                'der' => trim($request->der),
                'updated_at' => now()
            ]);
            return response()->json(['status' => 200, 'msg' => 'Cập nhật thành công !']);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete(Request $request)
    {
             $check = postsM::where('idcatePosts','=',$request->id)->count();
             if($check > 0){
                  return response()->json(['status' => 202 , 'msg'=>'Không thể xóa thể loại đang sở hữu bài viết !']);
             }
            CatePosts::find($request->id)->delete();
             return response()->json(['status' => 200 , 'msg'=>'Xóa thể loại thành công !']);
    }
    public function destroy($id)
    {
        //
    }
}
