<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\BaseController;
use App\Models\sliderM;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class SliderController extends BaseController
{

      /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
        $slider = sliderM::all();
        return response()->json($slider);
    }
    public function addSlider(Request $request){
        $validation = Validator::make($request->all(), [
            'name' => 'required',
            'status' => 'required',
            'fileSlider'=>'required'
        ]);
        if ($validation->fails()) {
            return response()->json(['check' =>false,'status'=> 500 ]);
        }else{
            $name = $request -> name;
            $slug = Str::slug($name);
            $checkNameExists = sliderM::where('slug', '=', $slug)->count();
            if ($checkNameExists > 0) {
                return response()->json(['check'=>false,'status' => 203, 'msg' => 'Tiêu đề đã tồn tại!']);
            }
            $status = $request -> status;
           
            $file = $request -> file('fileSlider');
            $file_path = public_path('sliders/' . $file);
            $fileExt = $file -> extension();
            $fileName = time().'.'.$fileExt;
            $file->move('sliders/', $fileName);
            sliderM::create([
                'name' => $name,
                'slug' =>$slug,
                'image' => $fileName,   
                'status' => $status
    
            ]);
            return response()->json([
                'check' => true,
                'msg' =>'Thêm thành công'
            ]);    
        }
    }
    public function deleteSlider(Request $request){
        $nameImage = $request->nameImage;
            $file_path = public_path('sliders/' . $nameImage);
            if(file_exists($file_path)) {
                unlink($file_path);
            }
            sliderM::where('image', '=', $nameImage)->delete();
            return response()->json(['check' => true]);
    }
    public function editSlider(Request $request){
        $validation = Validator::make($request->all(), [
            'name' => 'required',
            'status' => 'required', 
        ],
        [
            'name.required' => 'Vui lòng nhập tên',
            'status.required' => 'Vui lòng chọn trạng thái ',
        ]);
        if ($validation->fails()) {
            return response()->json(['check' =>false,'status'=>202, 'msg' => $validation->errors() ]);
        }else{
            $idSlider = $request -> id;
            $name = $request -> name;
            $slug = Str::slug($name);
            $checkNameExists = sliderM::where('slug', '=', $slug)->where('id', '!=', $idSlider)->count();
            if ($checkNameExists > 0) {
return response()->json(['check'=>false,'status' => 203, 'msg' => 'Tiêu đề đã tồn tại!']);
            }
            $file = $request -> file('fileupdate');
            $status = $request -> status;
            $slider = sliderM::find($idSlider);
            if($file){
                $fileExt = $file -> extension();
                $fileName = time().'.'.$fileExt;
                $file_path = public_path('sliders/' . $slider->image);
                if(file_exists($file_path)) {
                    unlink($file_path);
                }
                $file->move('sliders/', $fileName);
                $slider->update([
                    'name'=>$name,
                    'slug' => $slug,
                    'image'=>$fileName,
                    'status'=>$status,
                ]);
            }else{
                $slider->update([
                    'name'=>$name,
                    'slug' => $slug,
                    'status'=>$status,
                ]);
            }
            
        }
        return response()->json(['status' =>200]);   
    }
    public function changeStatus(Request $request){
        $id = $request->id;
        $status = sliderM::where('id','=',$id)->select('status')->first();
        if($status->status==1){
            $status = 0;
        }else{
            $status=1;
        }
        sliderM::find($id)->update([
            'status'=>$status
        ]);
        return response()->json(['status'=> 200,'msg'=>'Update status successfully']);
    }
    
}