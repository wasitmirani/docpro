@extends('layouts.patient.layout')
@section('title')
<title>{{ $navigation->reset_password }}</title>
@endsection
@section('patient-content')


<!--Banner Start-->
<div class="banner-area flex" style="background-image:url({{ $banner->login ? url($banner->login) : '' }});">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="banner-text">
                    <h1>{{ $navigation->reset_password }}</h1>
                    <ul>
                        <li><a href="{{ url('/') }}">{{ $navigation->home }}</a></li>
                        <li><span>{{ $navigation->reset_password }}</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Banner End-->

<!--Register Start-->
<div class="register-area pt_70 pb_70">
	<div class="container wow fadeIn">
		<div class="row">
			<div class="offset-lg-3 col-lg-6 offset-lg-3">
				<div class="regiser-form login-form">
					<form action="{{ route('store.reset.password',$token) }}" method="POST">
                        @csrf
						<div class="form-row row">
							<div class="form-group col-12">
								<label for="email">{{ $text->email_address }}</label>
								<input type="email" name="email" id="email" class="form-control" value="{{ $user->email }}">
							</div>

							<div class="form-group col-12">
								<label for="password">{{ $text->password }}</label>
								<input type="password" name="password" class="form-control" id="password">
							</div>
                            <div class="form-group col-12">
								<label for="password-confirmation">{{ $text->confirm_password }}</label>
								<input type="password" name="password_confirmation" class="form-control" id="password-confirmation">
							</div>
                            @if ($setting->allow_captcha==1)
                            <div class="form-group col-12">
                                <div class="g-recaptcha" data-sitekey="{{ $setting->captcha_key }}"></div>
                            </div>
                            @endif

							<div class="form-group col-12">
								<button type="submit" class="btn btn-primary">{{ $text->reset_pass_btn }}</button>
							</div>
						</div>
					</form>

					<a href="{{ url('login') }}" class="link">{{ $text->login_text }}</a>

				</div>
			</div>
		</div>
	</div>
</div>
<!--Register End-->

@endsection
