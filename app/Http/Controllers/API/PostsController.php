<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\CatePosts;
use App\Models\postsM;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class PostsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function allPosts()
    {
        $result = postsM::whereNull('deleted_at')->get();
        return response()->json($result);
    }
    public function index()
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

        $checkTitleExists = postsM::where('slugPosts', '=', $request->slug)->count();
        if ($checkTitleExists > 0) {
            return response()->json(['status' => 202, 'msg' => 'Tiêu đề đã tồn tại vui lòng đặt tiêu đề khác !']);
        }
        $file = $request->file('file-image');
        $namefile = $file->getClientOriginalName();
        $newName = time() . $request->slug . substr(md5(rand()), 0, 5) . "." . explode(".", $namefile)[1];
        $file->move('images/posts', $newName);
        $insert = postsM::create([
            'idcatePosts' => $request->cate,
            'titlePosts' => trim($request->title),
            'slugPosts' => $request->slug,
            'summaryPosts' => trim($request->summary),
            'imagePosts' => $newName,
            'tagsPosts' => $request->tags,
            'statusPosts' => $request->status,
            'viewPosts' => 1,
            'contentPosts' => $request->content,
            'created_at' => now()
        ]);
        if ($insert) {
            return response()->json(['status' => 200, 'msg' => 'Bài viết đã được thêm thành công !']);
        }
    }

    public function allCatePosts()
    {
        $result = CatePosts::all();
        return response()->json($result);
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
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $checkSlugExists = postsM::where('slugPosts', '=', $request->slug)->where('id', '!=', $request->id)->count();
        if ($checkSlugExists > 0) {
            return response()->json(['status' => 202, 'msg' => 'Tiêu đề đã tồn tại vui lòng đặt tiêu đề khác !']);
        }

        $update = postsM::find($request->id);
        if ($request->hasFile('image-file')) {
            $file = $request->file('file-image');
            $namefile = $file->getClientOriginalName();
            $newName = time() . $request->slug . substr(md5(rand()), 0, 5) . "." . explode(".", $namefile)[1];
            $file->move('images/posts', $newName);
            $update->update([
                'idcatePosts' => $request->cate,
                'titlePosts' => trim($request->title),
                'slugPosts' => $request->slug,
                'summaryPosts' => trim($request->summary),
                'imagePosts' => $newName,
                'tagsPosts' => $request->tags,
                'statusPosts' => $request->status,
                'viewPosts' => 1,
                'contentPosts' => $request->content,
                'updated_at' => now()
            ]);
            return response()->json(['status' => 200,'msg'=> 'Bài viết đã được cập nhật thành công !']);
        } else {
            $update->update([
                'idcatePosts' => $request->cate,
                'titlePosts' => trim($request->title),
                'slugPosts' => $request->slug,
                'summaryPosts' => trim($request->summary),
                'tagsPosts' => $request->tags,
                'statusPosts' => $request->status,
                'viewPosts' => 1,
                'contentPosts' => $request->content,
                'updated_at' => now()
            ]);
            return response()->json(['status' => 200,'msg'=> 'Bài viết đã được cập nhật thành công !']);
        }
    }

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
