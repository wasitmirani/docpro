@extends('layouts.admin.layout')
@section('title','Settings')
@section('admin-content')
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-6">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Cookie Consent Settings</h6>
                </div>
                <div class="card-body">
                   
                    <form action="{{ route('admin.update.cookie.consent.setting') }}" method="POST">
                        @csrf

                        <div class="form-group">
                            <label for="">Allow Cookie Consent Modal</label>
                            <select name="allow_cookie_consent" id="" class="form-control">
                                <option {{ $setting->allow_cookie_consent==1 ? 'selected':'' }} value="1">Yes</option>
                                <option {{ $setting->allow_cookie_consent==0 ? 'selected':'' }} value="0">No</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="cookie_text">Cookie Text</label>
                            <textarea class="form-control" name="cookie_text" id="cookie_text" cols="30" rows="5">{{ $setting->cookie_text }}</textarea>
                        </div>

                        <div class="form-group">
                            <label for="cookie_text">Button Text</label>
                            <input type="text" name="cookie_button_text" value="{{ $setting->cookie_button_text }}" class="form-control">
                        </div>
                        <button type="submit" class="btn btn-success">Save Info</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
