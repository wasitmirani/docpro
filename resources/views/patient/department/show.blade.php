@extends('layouts.patient.layout')
@section('title')
<title>{{ $department->seo_title }}</title>
@endsection
@section('meta')
<meta name="description" content="{{ $department->seo_description }}">
@endsection
@section('patient-content')

<!--Banner Start-->
<div class="banner-area flex" style="background-image:url({{ $banner->department ? url($banner->department) : '' }});">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="banner-text">
                    <h1>{{ $department->name }}</h1>
                    <ul>
                        <li><a href="{{ url('/') }}">{{ $navigation->home }}</a></li>
                        <li><span>{{ $department->name }}</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Banner End-->



<div class="service-detail-area pt_40">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="service-detail-text pt_30">

                    <div class="row mb_30">
                        <div class="col-md-12">
                            <!-- Swiper -->
                            <div class="swiper-container pro-detail-top">
                                <div class="swiper-wrapper">
                                    @foreach ($department->images as $item)
                                    <div class="swiper-slide">
                                        <div class="catagory-item">
                                            <div class="catagory-img-holder">
                                                <img src="{{ url($item->large_image) }}" alt="">
                                                <div class="catagory-text">
                                                    <div class="catagory-text-table">
                                                        <div class="catagory-text-cell">
                                                            <ul class="catagory-hover">
                                                                <li><a href="{{ url($item->large_image) }}" class="magnific"><i class="fas fa-search"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach


                                </div>
                                <!-- Add Arrows -->
                                <div class="swiper-button-next swiper-button-white"></div>
                                <div class="swiper-button-prev swiper-button-white"></div>
                            </div>
                            <div class="swiper-container pro-detail-thumbs">
                                <div class="swiper-wrapper">
                                    @foreach ($department->images as $item)
                                    <div class="swiper-slide"><img src="{{ url($item->small_image) }}" alt=""></div>
                                    @endforeach

                                </div>
                            </div>
                        </div>
                    </div>
                    {!! clean($department->description) !!}
                </div>
                @if ($department->faqs->count()!=0)
                <div class="row">
                    <div class="col-md-12">
                        <div class="faq-service feature-section-text mt_50">
                            <h2>{{ $text->frequently_ask_questions }}</h2>
                            <div class="feature-accordion" id="accordion">
                                @foreach ($department->faqs as $faq)
                                <div class="faq-item card">
                                    <div class="faq-header" id="heading-{{ $faq->id }}">
                                        <button class="faq-button collapsed" data-toggle="collapse" data-target="#collapse-{{ $faq->id }}" aria-expanded="true" aria-controls="collapse-{{ $faq->id }}">{{ $faq->question }}</button>
                                    </div>

                                    <div id="collapse-{{ $faq->id }}" class="collapse" aria-labelledby="heading-{{ $faq->id }}" data-parent="#accordion">
                                        <div class="faq-body">
                                            {!! clean($faq->answer) !!}
                                        </div>
                                    </div>
                                </div>
                                @endforeach


                            </div>
                        </div>

                    </div>
                </div>
                @endif

                @if ($department->videos->count()!=0)
                <div class="row mt_50">
                    <div class="col-12">
                        <div class="video-headline">
                            <h3>{{ $text->related_video }}</h3>
                        </div>
                    </div>

                    @foreach ($department->videos as $video)


                        <div class="col-md-6">
                            <div class="video-item mt_30">
                                <div class="video-img">
                                    @php
                                        $video_id=explode("=",$video->link);

                                    @endphp
                                    <img src="https://img.youtube.com/vi/{{ $video_id[1] }}/0.jpg">
                                    <div class="video-section">
                                        <a class="video-button mgVideo" href="{{ $video->link }}"><span></span></a>

                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
                @endif
            </div>
            <div class="col-md-4">
                <div class="service-sidebar pt_30">
                    <div class="service-widget">
                        <ul>
                            @foreach ($departments as $item)
                            <li class="{{ $item->id==$department->id ? 'active':'' }}"><a href="{{ url('department-details/'.$item->slug) }}"><i class="fas fa-chevron-right"></i> {{ $item->name }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="service-widget-contact mt_45">
                        <h2>{{ $contactInfo->header }}</h2>
                        <p>{{ $contactInfo->description }}</p>
                        <ul>
                            <li><i class="fas fa-phone"></i> {!! nl2br(e($contactInfo->phones)) !!}</li>
                            <li><i class="far fa-envelope"></i> {!! nl2br(e($contactInfo->emails)) !!}</li>
                            <li><i class="fas fa-map-marker-alt"></i>{!! nl2br(e($contactInfo->address)) !!}</li>
                        </ul>
                    </div>
                    <div class="service-qucikcontact event-form mt_30">
                        <h3>{{ $text->quick_contact }}</h3>
                        <form action="{{ url('contact-message') }}" method="POST">
                            @csrf
                            <div class="form-row row">
                                <div class="form-group col-md-12">
                                    <input type="text" class="form-control" id="name" placeholder="{{ $text->name }}" name="name">
                                </div>
                                <div class="form-group col-md-12">
                                    <input type="text" class="form-control" placeholder="{{ $text->phone }}" name="phone">
                                </div>
                                <div class="form-group col-md-12">
                                    <input type="email" class="form-control" placeholder="{{ $text->email_address }}" name="email">
                                </div>
                                <div class="form-group col-md-12">
                                    <input type="text" class="form-control" placeholder="{{ $text->subject }}" name="subject">
                                </div>

                                <div class="form-group col-md-12">
                                    <textarea name="message" class="form-control" placeholder="{{ $text->message }}"></textarea>
                                </div>
                                @if ($setting->allow_captcha==1)
                                <div class="form-group col-12">
                                    <div class="g-recaptcha" data-sitekey="{{ $setting->captcha_key }}"></div>
                                </div>
                                @endif

                                <div class="form-group col-md-12">
                                    <button type="submit" class="btn">{{ $text->send_msg_btn }}</button>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>


@if ($doctors->count()!=0)
<div class="team-page pt_40 pb_70 bg_f2f2f2">
    <div class="container">
        <div class="row">
            <div class="col-md-12 wow fadeInDown" data-wow-delay="0.1s">
                <div class="main-headline">
                    <h1>{{ $text->department_doctor }}</h1>
                    <p>{{ $description }}</p>
                </div>
            </div>
        </div>


        <div class="row">

            @if ($doctors->count()!=0)
            @foreach ($doctors as $doctor)
            <div class="col-lg-3 col-md-4 col-6 mt_30">
                <div class="team-item">
                    <div class="team-photo">
                        <img src="{{ url($doctor->image) }}" alt="Team Photo">
                    </div>
                    <div class="team-text">
                        <a href="{{ url('doctor-details/'.$doctor->slug) }}">{{ ucfirst($doctor->name) }}</a>
                        <p>{{ ucfirst($doctor->department->name) }}</p>
                        <p><span><i class="fas fa-graduation-cap"></i> {{ $doctor->designations }}</span></p>
                        <p><span><b><i class="fas fa-street-view"></i> {{ ucfirst($doctor->location->location) }}</b></span></p>
                    </div>
                    <div class="team-social">
                        <ul>
                            @if ($doctor->facebook)
                            <li><a href="{{ $doctor->facebook }}"><i class="fab fa-facebook-f"></i></a></li>
                            @endif
                            @if ($doctor->twitter)
                            <li><a href="{{ $doctor->twitter }}"><i class="fab fa-twitter"></i></a></li>
                            @endif
                            @if ($doctor->linkedin)
                            <li><a href="{{ $doctor->linkedin }}"><i class="fab fa-linkedin"></i></a></li>
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
            @endforeach
            @else
            <h3 class="text-danger text-center">Doctor Not Found!</h3>
            @endif


        </div>
    </div>
</div>
@endif





@endsection
