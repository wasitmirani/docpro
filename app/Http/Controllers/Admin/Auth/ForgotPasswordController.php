<?php

namespace App\Http\Controllers\Admin\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;
use Illuminate\Http\Request;
use App\User;
use App\Doctor;
use App\Admin;
use App\Mail\ForgetPassword;
use App\Mail\AdminForgetPassword;
use Str;
use Mail;
use Hash;
use Auth;
use App\BannerImage;
use App\EmailTemplate;

class ForgotPasswordController extends Controller
{
   public function forgetPassword(){
        $image=BannerImage::first();
       return view('admin.auth.forget-password',compact('image'));
   }

   public function sendForgetEmail(Request $request){
        $this->validate($request,[
            'email'=>'required'
        ]);

        $admin=Admin::where('email',$request->email)->first();
        if($admin){
            $admin->forget_password_token=Str::random(100);
            $admin->save();

            $template=EmailTemplate::where('id',1)->first();
            $message=$template->description;
            $subject=$template->subject;
            $message=str_replace('{{name}}',$admin->name,$message);

            Mail::to($admin->email)->send(new AdminForgetPassword($admin,$message,$subject));
            $notification=array(
                'messege'=>'Forgot Password has been Sent to Your Email. Please Check your email',
                'alert-type'=>'success'
            );
            return back()->with($notification);

        }else {
            $notification=array(
                'messege'=>'Email Does not Exist',
                'alert-type'=>'error'
            );
            return Redirect()->back()->with($notification);
        }

   }

   public function resetPassword($token){
        $admin=Admin::where('forget_password_token',$token)->first();
        if($admin){
            $notification=array(
                'messege'=>'Please Set your new password',
                'alert-type'=>'success'
            );
            $image=BannerImage::first();
            return view('admin.auth.reset-password',compact('admin','token','image'))->with($notification);
        }else{
            $notification=array(
                'messege'=>'Invalid Token. Please Try again',
                'alert-type'=>'error'
            );
            return Redirect()->route('admin.forget.password')->with($notification);
        }
   }


   public function storeResetData(Request $request,$token){
        $this->validate($request,[
            'email'=>'required',
            'password'=>'required|confirmed|min:6'
        ]);
        $admin=Admin::where('forget_password_token',$token)->first();
        if($admin->email==$request->email){
            $admin->password=Hash::make($request->password);
            $admin->forget_password_token=null;
            $admin->save();

            $notification=array(
                'messege'=>'Please Login Here',
                'alert-type'=>'success'
            );
            return Redirect()->route('admin.login')->with($notification);

        }else{
            $notification=array(
                'messege'=>'Email Does not match. try again.',
                'alert-type'=>'error'
            );
            return back()->with($notification);
        }
   }


}
