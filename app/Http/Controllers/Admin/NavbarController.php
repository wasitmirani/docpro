<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Navigation;
class NavbarController extends Controller
{
    public function index(){
        $navigation=Navigation::first();
        return view('admin.navbar.index',compact('navigation'));
    }

    public function update(Request $request){
        $this->validate($request,[
            'home'=>'required',
            'about_us'=>'required',
            'pages'=>'required',
            'doctor'=>'required',
            'service'=>'required',
            'department'=>'required',
            'testimonial'=>'required',
            'blog'=>'required',
            'contact_us'=>'required',
            'faq'=>'required',
            'appointment'=>'required',
            'dashboard'=>'required',
            'payment'=>'required',
            'login'=>'required',
            'register'=>'required',
            'terms_and_condition'=>'required',
            'privacy_policy'=>'required',
            'forget_password'=>'required',
            'reset_password'=>'required',

        ]);


        $navigation=Navigation::first();
        Navigation::where('id',$navigation->id)->update([
            'terms_and_condition'=>$request->terms_and_condition,
            'privacy_policy'=>$request->privacy_policy,
            'home'=>$request->home,
            'about_us'=>$request->about_us,
            'pages'=>$request->pages,
            'doctor'=>$request->doctor,
            'service'=>$request->service,
            'department'=>$request->department,
            'testimonial'=>$request->testimonial,
            'blog'=>$request->blog,
            'contact_us'=>$request->contact_us,
            'faq'=>$request->faq,
            'appointment'=>$request->appointment,
            'dashboard'=>$request->dashboard,
            'payment'=>$request->payment,
            'login'=>$request->login,
            'register'=>$request->register,
            'forget_password'=>$request->forget_password,
            'reset_password'=>$request->reset_password,
        ]);

        $notification=array(
            'messege'=>'Updated Successfully',
            'alert-type'=>'success'
        );

        return redirect()->back()->with($notification);
    }
}
