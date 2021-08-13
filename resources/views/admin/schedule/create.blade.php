@extends('layouts.admin.layout')
@section('title','Schedule')
@section('admin-content')
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><a href="{{ route('admin.schedule.index') }}" class="btn btn-primary"><i class="fas fa-list" aria-hidden="true"></i> All Schedule </a></h1>
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Schedule Form</h6>
                </div>
                <div class="card-body">
                   
                    <form action="{{ route('admin.schedule.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="doctor">Doctor</label>
                                    <select name="doctor" id="doctor" class="form-control selectoption select2">
                                        <option value="">Select Doctor</option>
                                        @foreach ($doctors as $item)
                                        <option {{ old('doctor')==$item->id? 'selected' : ''}} value="{{ $item->id }}">{{ ucfirst($item->name) }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="day">Day</label>
                                    <select name="day" id="day" class="form-control selectoption">
                                        <option value="">Select Day</option>
                                        @foreach ($days as $item)
                                        <option {{ old('doctor')==$item->id? 'selected' : ''}} value="{{ $item->id }}">{{ ucfirst($item->day) }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="start_time">Start Time</label>
                                    <input type="text" name="start_time" class="form-control timepicker">
                                </div>

                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="end_time">End Time</label>
                                    <input type="text" name="end_time" class="form-control timepicker">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="quantity">Sit Quantity</label>
                                    <input type="number" class="form-control" name="quantity" >
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="status">Status</label>
                                    <select name="status" id="status" class="form-control selectoption">
                                        <option value="1">Active</option>
                                        <option value="0">In-Active</option>
                                    </select>
                                </div>
                            </div>

                        </div>
                        <button type="submit" class="btn btn-success">Save Schedule</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script>
	(function($) {

    "use strict";
        $(document).ready(function() {
            $('.timepicker').timepicker({
                timeFormat: 'h:mm p',
                interval: 60,
                minTime: '1',
                maxTime: '11:00pm',
                defaultTime: '10',
                startTime: '10:00',
                dynamic: false,
                dropdown: true,
                scrollbar: true
            });
        });
		})(jQuery);
    </script>
@endsection
