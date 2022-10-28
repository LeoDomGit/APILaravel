<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
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
        return response()->json(['status' => 200]);
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
            return response()->json(['status' => 202, 'msg' => 'Bài viết đã tồn hãy chọn bài viết khác !']);
        }
        $file = $request->file('file-image');
        $namefile = $file->getClientOriginalName();
        $newName = time() . $request->slug . substr(md5(rand()), 0, 5) . "." . explode(".", $namefile)[1];
        $file->move('images/posts', $newName);
        $insert = postsM::create([
            'idcatePosts'=>$request->cate,
            'titlePosts' => trim($request->title),
            'slugPosts' => $request->slug,
            'summaryPosts' => trim($request->summary),
            'imagePosts' => $newName,
            'tagsPosts' => $request->tags,
            'statusPosts' => $request->status,
            'viewPosts' => 1,
            'contentPosts' => trim($request->content),
            'created_at' => now()
        ]);
        if($insert){
            return response()->json(['status' => 200, 'msg' => 'Bài viết đã được thêm thành công !']);
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
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
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
