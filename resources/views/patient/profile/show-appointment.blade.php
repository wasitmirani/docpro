@extends('layouts.patient.layout')
@section('title')
<title>{{ $text->appointment_history }}</title>
@endsection
@section('patient-content')


<!--Banner Start-->
<div class="banner-area flex" style="background-image:url({{ $banner->profile ? url($banner->profile) : '' }});">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="banner-text">
                    <h1>{{ $text->appointment_history }}</h1>
                    <ul>
                        <li><a href="{{ url('/') }}">{{ $navigation->home }}</a></li>
                        <li><span>{{ $text->appointment_history }}</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Banner End-->

<!--Dashboard Start-->
<div class="dashboard-area pt_70 pb_70">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                @include('patient.profile.sidebar')
            </div>
            <div class="col-lg-9">
                <div class="detail-dashboard">
                    <div class="prescription">


                        <div class="top">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="logo"><img src="{{ url($setting->logo) }}" alt=""></div>
                                    <div class="address">
                                        <i class="fas fa-map-marker-alt"></i> {{ $contact->address }}
                                    </div>
                                    <div class="phone">
                                        <i class="fas fa-phone"></i> {{ $setting->prescription_phone }}
                                    </div>
                                    <div class="email">
                                        <i class="far fa-envelope"></i> {{ $setting->prescription_email }}
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="right">
                                        <h2>{{ $appointment->doctor->name }}</h2>
                                        <p>
                                            {{ $appointment->doctor->designations }}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="patient-info">
                            <div class="row">
                                <div class="col-md-6">
                                    Patient Name: {{ $appointment->user->name }}
                                </div>
                                <div class="col-md-3">
                                    Age: {{ $appointment->user->age }} Years
                                </div>
                                <div class="col-md-3 text-right">
                                    Date: {{ date('m-d-Y',strtotime($appointment->date)) }}
                                </div>
                            </div>
                        </div>


                        <div class="main-section">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="problem">
                                        <h2>Problems</h2>
                                        <p>
                                            {!! clean(nl2br(e($appointment->problem_description))) !!}
                                        </p>
                                    </div>
                                    <div class="test">
                                        <h2>Test</h2>
                                        <p>
                                            {!! clean(nl2br(e($appointment->advice->test_description))) !!}
                                        </p>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <div class="medicine">
                                        <div class="rx">R<span>x</span></div>
                                        <div class="list">
                                            <ol>
                                                @foreach ($appointment->prescribes as $prescribe)
                                                <li>
                                                    <div class="full">
                                                        <div class="l">
                                                            {{ $prescribe->medicine_name }} <br> {{ $prescribe->dosage }} ({{ $prescribe->time }})
                                                        </div>
                                                        <div class="r">
                                                            {{ $prescribe->number_of_day }} Days
                                                        </div>
                                                    </div>
                                                </li>
                                                @endforeach

                                            </ol>
                                        </div>

                                        <div class="advice">
                                            <h2>Advice</h2>
                                            <p>
                                                {!! clean(nl2br(e($appointment->advice->advice))) !!}
                                            </p>
                                        </div>


                                    </div>




                                </div>
                            </div>
                        </div>

                        <div class="footer">
                            <h2>Signature</h2>
                            <p>
                                {{ $appointment->doctor->name }}<br> {{ $appointment->doctor->designations }}
                            </p>
                        </div>


                    </div>

                </div>

                <button class="btn btn-primary mt-3 print-btn" onclick="window.print()"><i class="fas fa-print" aria-hidden="true"></i></button>




            </div>
        </div>
    </div>
</div>
<!--Dashboard End-->

<style>
    @media print {
        .dashboard-widget,
        .print-btn,
        .header-area,
        .menu-area,
        .banner-area,
        .subscribe-area,
        .brand-area,
        .main-footer {
            display:none!important;
        }
    }
</style>

@endsection
