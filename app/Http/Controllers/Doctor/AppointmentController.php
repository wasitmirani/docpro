<?php

namespace App\Http\Controllers\Doctor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Appointment;
use App\Habit;
use App\Medicine;
use App\MedicineType;
use App\User;
use App\Prescribe;
use App\Advice;
use App\Schedule;
use App\Setting;
use App\ContactInformation;
use App\Day;

class AppointmentController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:doctor');
    }
    public function todayAppointment(){
        $doctor=Auth::guard('doctor')->user();
        $day=date('l');
        $day=Day::where('day',$day)->first();
        $schedules=Schedule::where(['doctor_id'=>$doctor->id,'day_id'=>$day->id])->get();
        $today=Date('Y-m-d');
        $appointments=Appointment::where(['doctor_id'=>Auth::guard('doctor')->user()->id,'already_treated'=>0,'date'=>$today,'payment_status'=>1])->get();
        return view('doctor.appointment.today',compact('appointments','schedules','doctor'));
    }
    public function newAppointment(){
        $doctor=Auth::guard('doctor')->user();
        $schedules=Schedule::where('doctor_id',$doctor->id)->get();
        $appointments=Appointment::where(['doctor_id'=>Auth::guard('doctor')->user()->id,'already_treated'=>0,'payment_status'=>1])->get();
        $today=0;
        return view('doctor.appointment.new',compact('appointments','schedules','doctor','today'));
    }

    public function allAppointment(){
        $appointments=Appointment::where(['doctor_id'=>Auth::guard('doctor')->user()->id])->orderBy('id','desc')->get();
        return view('doctor.appointment.all',compact('appointments'));
    }

    public function treatment($id){
        $appointment=Appointment::find($id);
        $currency=Setting::first();
        $today=Date('Y-m-d');
        // check appointment date
        if($today==$appointment->date){
            // checking treatment status
            if($appointment->already_treated==0){
                // checking appointment under the doctor
                if($appointment->doctor_id==Auth::guard('doctor')->user()->id){
                    $habits=Habit::all();
                    $medicines=Medicine::where('status',1)->orderby('name','asc')->get();
                    $medicineTypes=MedicineType::where('status',1)->get();

                    return view('doctor.appointment.treatment',compact('appointment','habits','medicines','medicineTypes','currency'));
                }else{
                    $notification=array(
                        'messege'=>'Something Went Wrong',
                        'alert-type'=>'error'
                    );

                    return redirect()->route('doctor.new.appointment')->with($notification);
                }

            }else{
                return redirect()->route('doctor.already.treatment',$id);
            }
        }else{
            $notification=array(
                'messege'=>'Opps! Appointment Not allow invalid date',
                'alert-type'=>'error'
            );

            return redirect()->back()->with($notification);
        }

    }

    public function storeTreatment(Request $request,$id){
        $appointment=Appointment::find($id);
        $today=Date('Y-m-d');
        // check appointment date
        if($today==$appointment->date){
            // checking appointment treatment status
            if($appointment->already_treated==0){
                // checking appointment under the doctor
                if($appointment->doctor_id==Auth::guard('doctor')->user()->id){
                    $medicineAvailable=$request->medicine_name[0];
                    if($medicineAvailable !=null){
                        // save pateint age
                        User::where('id',$appointment->user_id)->update(['weight'=>$request->weight]);
                        // insert appointment new info

                        $habits = '';
                        if($request->habit){
                            $habits=json_encode($request->habit);
                        }
                        $appointment->blood_pressure=$request->blood_pressure;
                        $appointment->pulse_rate=$request->pulse_rate;
                        $appointment->temperature=$request->temperature;
                        $appointment->problem_description=$request->problem_description;
                        $appointment->habits=$habits;
                        $appointment->already_treated=1;
                        $appointment->save();

                        // medicine insert
                        foreach($request->medicine_name as $index => $medicine){
                            if($medicine != null){
                                $prescribe=Prescribe::create([
                                    'appointment_id'=>$id,
                                    'medicine_type'=>$request->medicine_type[$index],
                                    'medicine_name'=>$request->medicine_name[$index],
                                    'dosage'=>$request->dosage[$index],
                                    'comment'=>'test',
                                    'number_of_day'=>$request->day[$index],
                                    'time'=>$request->time[$index],
                                ]);
                            }
                        }

                        // insert advice section
                        Advice::create([
                            'appointment_id'=>$id,
                            'test_description'=>$request->test_description,
                            'advice'=>$request->advice
                        ]);

                        $notification=array(
                            'messege'=>'Prescribe Successfully',
                            'alert-type'=>'success'
                        );
                        return redirect()->route('doctor.already.treatment',$id)->with($notification);
                    }else{
                        $notification=array(
                            'messege'=>'Something Wrong, Please Try again',
                            'alert-type'=>'error'
                        );
                        return back()->with($notification);
                    }
                }else{
                    $notification=array(
                        'messege'=>'Something Went Wrong',
                        'alert-type'=>'error'
                    );

                    return redirect()->route('doctor.today.appointment')->with($notification);
                }
            }else{
                return redirect()->route('doctor.already.treatment',$id);
            }
        }else{
            $notification=array(
                'messege'=>'Opps! Appointment Not allow invalid date',
                'alert-type'=>'error'
            );

            return redirect()->back()->with($notification);
        }


    }

    public function allReadyTreatment($id){
        $appointment=Appointment::find($id);
        if($appointment){
            if($appointment->already_treated==1){
                $setting=Setting::first();
                $contact=ContactInformation::first();
                return view('doctor.appointment.already-treated',compact('appointment','setting','contact'));
            }else{

                return redirect()->route('doctor.treatment',$id);
            }
        }else{
            $notification=array(
                'messege'=>'Something Went Wrong',
                'alert-type'=>'error'
            );

            return redirect()->route('doctor.all.appointment')->with($notification);
        }


    }

    public function editTreatment($id){
        $appointment=Appointment::find($id);
        $doctor_id=Auth::guard('doctor')->user()->id;

        if($appointment){
            if($appointment->already_treated==1 && $appointment->doctor_id==$doctor_id){
                $habits=Habit::all();
                $medicines=Medicine::where('status',1)->orderBy('name','asc')->get();
                $medicineTypes=MedicineType::where('status',1)->get();
                $currency=Setting::first();
                $habits=Habit::all();
                return view('doctor.appointment.edit-treatment',compact('appointment','habits','medicines','medicineTypes','currency','habits'));
            }else if($appointment->already_treated==0 && $appointment->doctor_id==$doctor_id){
                return redirect()->route('doctor.treatment',$id);
            }else{
                $notification=array(
                    'messege'=>'Something Went Wrong',
                    'alert-type'=>'error'
                );

                return redirect()->route('doctor.today.appointment')->with($notification);
            }
        }else{
            $notification=array(
                'messege'=>'Something Went Wrong',
                'alert-type'=>'error'
            );

            return redirect()->route('doctor.all.appointment')->with($notification);
        }

    }

    public function updateTreatment(Request $request,$id){
        $appointment=Appointment::find($id);
        // checking appointment treatment status
        if($appointment->already_treated==1){
            // checking appointment under the doctor
            if($appointment->doctor_id==Auth::guard('doctor')->user()->id){
                $medicineAvailable=$request->medicine_name[0];
                if($medicineAvailable !=null){
                    // save pateint age
                    User::where('id',$appointment->user_id)->update(['weight'=>$request->weight]);

                    $habits = '';
                    if($request->habit){
                        $habits=json_encode($request->habit);
                    }
                    // insert appointment new info
                    $appointment->blood_pressure=$request->blood_pressure;
                    $appointment->pulse_rate=$request->pulse_rate;
                    $appointment->temperature=$request->temperature;
                    $appointment->problem_description=$request->problem_description;
                    $appointment->already_treated=1;
                    $appointment->habits=$habits;
                    $appointment->save();

                    $oldMedicines=Prescribe::where('appointment_id',$id)->get();
                    // medicine insert
                    foreach($request->medicine_name as $index => $medicine){
                        if($medicine != null){
                            $prescribe=Prescribe::create([
                                'appointment_id'=>$id,
                                'medicine_type'=>$request->medicine_type[$index],
                                'medicine_name'=>$request->medicine_name[$index],
                                'dosage'=>$request->dosage[$index],
                                'comment'=>'test',
                                'number_of_day'=>$request->day[$index],
                                'time'=>$request->time[$index],
                            ]);
                        }
                    }

                    // delete old medicine
                    foreach($oldMedicines as $oldMedicine){
                        Prescribe::destroy($oldMedicine->id);
                    }

                    // insert advice section
                    $isAdvice=Advice::where('appointment_id',$id)->first();
                    if($isAdvice){
                        Advice::where('appointment_id',$id)->update([
                            'appointment_id'=>$id,
                            'test_description'=>$request->test_description,
                            'advice'=>$request->advice
                        ]);
                    }else{
                        $advice=new Advice();
                        $advice->appointment_id=$id;
                        $advice->test_description=$request->test_description;
                        $advice->advice=$request->advice;
                        $advice->save();
                    }


                    $notification=array(
                        'messege'=>'Prescribe Successfully',
                        'alert-type'=>'success'
                    );
                    return redirect()->route('doctor.already.treatment',$id)->with($notification);
                }else{
                    $notification=array(
                        'messege'=>'Something Wrong, Please Try again',
                        'alert-type'=>'error'
                    );
                    return back()->with($notification);
                }
            }else{
                $notification=array(
                    'messege'=>'Something Went Wrong',
                    'alert-type'=>'error'
                );

                return redirect()->route('doctor.today.appointment')->with($notification);
            }
        }else{
            $notification=array(
                'messege'=>'Something Went Wrong',
                'alert-type'=>'error'
            );

            return back()->with($notification);
        }
    }

    // patient old appointment history
    public function oldAppointment($id){
        $appointments=Appointment::where(['user_id'=>$id,'already_treated'=>1])->get();
        if(count($appointments) == 0)
        {
            $notification=array(
                'messege'=>'No history found',
                'alert-type'=>'error'
            );

            return back()->with($notification);
        }
        return view('doctor.appointment.patient-history',compact('appointments'));
    }


    // search daily appointment using ajax
    public function searchAppointment(Request $request){
        $this->validate($request,[
            'doctor_id'=>'required',
            'schedule_id'=>'required',
        ]);
        $date= Date('Y-m-d');
        $doctor_id=$request->doctor_id;
        $schedule_id=$request->schedule_id;
        $appointments=Appointment::where([
            'date'=>$date,
            'doctor_id'=>$doctor_id,
            'schedule_id'=>$schedule_id,
            'payment_status'=>1,
            'already_treated'=>0
        ])->get();
        return view('doctor.appointment.ajax-appointment',compact('appointments'));

    }
    // search particular appointment using ajax
    public function searchParticulerAppointment(Request $request){
        $this->validate($request,[
            'from_date'=>'required',
            'to_date'=>'required',
            'doctor_id'=>'required',
        ]);

        $from_date=date('Y-m-d',strtotime($request->from_date));
        $to_date=date('Y-m-d',strtotime($request->to_date));
        $appointments=Appointment::where(['doctor_id'=>$request->doctor_id,'payment_status'=>1,'already_treated'=>0])->get();
        $appointments=$appointments->whereBetween('date', array($from_date, $to_date));
        return view('doctor.appointment.ajax-particular-appointment',compact('appointments'));
    }


    public function paymentHistory(){
        $last_one_month = \Carbon\Carbon::today()->subDays(30);
        $today=date('Y-m-d');
        $doctor=Auth::guard('doctor')->user();

        $appointments=Appointment::where([
            'doctor_id'=>$doctor->id,
            'payment_status'=>1
        ])->get();
        $appointments=$appointments->whereBetween('date', array($last_one_month, $today));

        $payment= $appointments->sum('appointment_fee');
        $appointment= $appointments->count();
        $currency=Setting::first();

        return view('doctor.payment.index',compact('appointments','payment','appointment','doctor','currency'));

    }

    public function searchPaymentHistory(Request $request){
        $from_date=date('Y-m-d',strtotime($request->from_date));
        $to_date=date('Y-m-d',strtotime($request->to_date));
        $doctor=Auth::guard('doctor')->user();
        $appointments=Appointment::where([
            'doctor_id'=>$doctor->id,
            'payment_status'=>1
        ])->get();
        $appointments=$appointments->whereBetween('date', array($from_date, $to_date));
        $payment= $appointments->sum('appointment_fee');
        $appointment= $appointments->count();
        $currency=Setting::first();
        return view('doctor.payment.ajax-payment',compact('appointments','payment','appointment','doctor','currency'));
    }

    public function deleteAppointmentPrescribe($id){
        Prescribe::destroy($id);
        return response()->json(['success'=>'delete success']);
    }
}
