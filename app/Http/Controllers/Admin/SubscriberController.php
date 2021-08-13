<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Subscribe;
use App\SubscriberEmail;
use App\Mail\SendSubscriberMail;
use Mail;
class SubscriberController extends Controller
{
    public function index(){
        $subscribers=Subscribe::where('status',1)->get();
        return view('admin.subscriber.subscriber.index',compact('subscribers'));
    }

    public function delete($id){
        Subscribe::destroy($id);
        $notification=array(
            'messege'=>'Deleted Successfully',
            'alert-type'=>'success'
        );

        return back()->with($notification);
    }

    public function emailTemplate(){
        $template=SubscriberEmail::first();
        return view('admin.subscriber.email.index',compact('template'));
    }

    public function sendMail(Request $request){
        $this->validate($request,[
            'subject'=>'required',
            'message'=>'required',
        ]);

        $template=SubscriberEmail::first();
        $template->subject=$request->subject;
        $template->message=$request->message;

        $subscribers=Subscribe::where('status',1)->get();
        foreach($subscribers as $subscriber){
            Mail::to($subscriber->email)->send(new SendSubscriberMail($template));
        }
        $notification=array(
            'messege'=>'Email Send Successfully',
            'alert-type'=>'success'
        );

        return back()->with($notification);
    }
}
