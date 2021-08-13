@extends('layouts.admin.layout')
@section('title','Prescription')
@section('admin-content')
    <!-- Appointment Details -->
    <div class="prescribe">
        <div class="card shadow mb-4">
            <div class="card-body">

                <div class="prescription">


                    <div class="top">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="logo"><img src="{{ url($setting->logo) }}" alt=""></div>
                                <div class="address">
                                    {{ $contact->address }}
                                </div>
                                <div class="phone">
                                    {{ $setting->prescription_phone }}
                                </div>
                                <div class="email">
                                    {{ $setting->prescription_email }}
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
        </div>
    </div>
    <div class="row">
        <div class="col">
            <button type="button" class="btn btn-success ml-3 print-btn" onclick="window.print()">Print</button>
        </div>
    </div>
    <style>
        @media print {
            .navbar-nav,
            .print-btn,
            .print-footer {
                display:none!important;
            }
        }
    </style>
@endsection

