<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BannerCategory;
use App\Models\Banner;
use App\Models\Secondbanner;
use Toastr;
use Image;
use File;
class BannerController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:banner-list|banner-create|banner-edit|banner-delete', ['only' => ['index','store']]);
         $this->middleware('permission:banner-create', ['only' => ['create','store']]);
         $this->middleware('permission:banner-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:banner-delete', ['only' => ['destroy']]);
    }

    public function index(Request $request)
    {
        $data = Banner::orderBy('id','DESC')->with('category')->get();
        return view('backEnd.banner.index',compact('data'));
    }
    public function create()
    {
        $categories = BannerCategory::orderBy('id','DESC')->select('id','name')->get();
        return view('backEnd.banner.create',compact('categories'));
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'link' => 'required',
            'status' => 'required',
        ]);

        // image with intervention
        $file = $request->file('image');
        $name = time().$file->getClientOriginalName();
        $uploadPath = 'uploads/banner/';
        $file->move($uploadPath,$name);
        $fileUrl =$uploadPath.$name;

        $input = $request->all();
        $input['status'] = $request->status?1:0;
        $input['image'] = $fileUrl;
        Banner::create($input);
        Toastr::success('Success','Data insert successfully');
        return redirect()->route('banners.index');
    }

    public function edit($id)
    {
        $edit_data = Banner::find($id);
        $categories = BannerCategory::select('id','name')->get();
        return view('backEnd.banner.edit',compact('edit_data','categories'));
    }

    public function update(Request $request)
    {
        $this->validate($request, [
            'link' => 'required',
        ]);
        $update_data = Banner::find($request->id);
        $input = $request->all();
        $image = $request->file('image');
        if($image){
           // image with intervention
            $file = $request->file('image');
            $name = time().$file->getClientOriginalName();
            $uploadPath = 'uploads/banner/';
            $file->move($uploadPath,$name);
            $fileUrl =$uploadPath.$name;
            $input['image'] = $fileUrl;
            File::delete($update_data->image);
        }else{
            $input['image'] = $update_data->image;
        }

        $input['status'] = $request->status?1:0;
        $update_data->update($input);

        Toastr::success('Success','Data update successfully');
        return redirect()->route('banners.index');
    }

    public function inactive(Request $request)
    {
        $inactive = Banner::find($request->hidden_id);
        $inactive->status = 0;
        $inactive->save();
        Toastr::success('Success','Data inactive successfully');
        return redirect()->back();
    }
    public function active(Request $request)
    {
        $active = Banner::find($request->hidden_id);
        $active->status = 1;
        $active->save();
        Toastr::success('Success','Data active successfully');
        return redirect()->back();
    }
    public function destroy(Request $request)
    {
        $delete_data = Banner::find($request->hidden_id);
        $delete_data->delete();
        Toastr::success('Success','Data delete successfully');
        return redirect()->back();
    }

    public function sbanner()
    {
        $sbanner = Secondbanner::all();
        return view('backEnd.banner.secondbanner.show', compact('sbanner'));
    }

     public function sbannercreate()
    {
        return view('backEnd.banner.secondbanner.create');
    }

     public function sbannerstore(Request $request)
    {
        $validated = $request->validate([
           'link' => 'nullable',
           'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',

       ]);


       $input = $request->all();

       if ($image = $request->file('image')) {
           $destinationPath = 'sbanner/';
           $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
           $image->move($destinationPath, $profileImage);
           $input['image'] = "$profileImage";
       }


       Secondbanner::create($input);

       return redirect()->route('sbanner')->with('alert', 'post created');
    }

     public function sbanneredit($id)
    {
        $sbanner = Secondbanner::find($id);
        return view('backEnd.banner.secondbanner.edit', compact('sbanner'));
    }

    public function sbannerupdate($id, Request $request) {

       $post = Secondbanner::findorfail($id);
       $validated = $request->validate([
           'link' => 'nullable',
           'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',

       ]);


       $input = $request->all();

       if ($image = $request->file('image')) {
           $destinationPath = 'sbanner/';
           $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
           $image->move($destinationPath, $profileImage);
           $input['image'] = "$profileImage";
       }else{
           unset($input['image']);
       }

       $post->update($input);

       return redirect()->route('sbanner')->with('alert', 'post updated');
   }

    public function sbannerdelete($id)
    {
        $sbanner = Secondbanner::findorfail($id);
        $sbanner->delete();
        return redirect()->route('sbanner')->with('alert', 'post Deleted');
    }

}
