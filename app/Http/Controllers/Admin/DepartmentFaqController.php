<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\DepartmentFaq;
class DepartmentFaqController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function faqByDepartment($id)
    {
        $faqs=DepartmentFaq::with('department')->where('department_id',$id)->get();
        return view('admin.faq.department.index',compact('faqs','id'));
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
        $this->validate($request,[
            'question'=>'required|unique:department_faqs',
            'answer'=>'required',
            'status'=>'required',
        ]);

        DepartmentFaq::create([
            'department_id'=>$request->department_id,
            'question'=>$request->question,
            'answer'=>$request->answer,
            'status'=>$request->status,
        ]);

        $notification=array(
            'messege'=>'Created Successfully',
            'alert-type'=>'success'
        );

        return redirect()->route('admin.faq.by.department',$request->department_id)->with($notification);
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
    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'question'=>'required|unique:department_faqs,question,'.$id,
            'answer'=>'required',
            'status'=>'required',
        ]);

        DepartmentFaq::where('id',$id)->update([
            'department_id'=>$request->department_id,
            'question'=>$request->question,
            'answer'=>$request->answer,
            'status'=>$request->status,
        ]);

        $notification=array(
            'messege'=>'updated Successfully',
            'alert-type'=>'success'
        );

        return redirect()->route('admin.faq.by.department',$request->department_id)->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $department=DepartmentFaq::find($id);
        DepartmentFaq::destroy($id);
        $notification=array(
            'messege'=>'Deleted Successfully',
            'alert-type'=>'success'
        );

        return redirect()->route('admin.faq.by.department',$department->department_id)->with($notification);
    }

    // change department faq status
    public function changeStatus($id){
        $faq=DepartmentFaq::find($id);
        if($faq->status==1){
            $faq->status=0;
            $message="In-active Successfully";
        }else{
            $faq->status=1;
            $message="Active Successfully";
        }
        $faq->save();
        return response()->json($message);

    }


}
