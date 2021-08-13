@extends('layouts.patient.layout')
@section('title')
<title>{{ $title_meta->blog_title }}</title>
@endsection
@section('meta')
<meta name="description" content="{{ $title_meta->blog_meta_description }}">
@endsection
@section('patient-content')


<!--Banner Start-->
<div class="banner-area flex" style="background-image:url({{ $banner->blog ? url($banner->blog) : '' }});">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="banner-text">
                    <h1>{{ $navigation->blog }}</h1>
                    <ul>
                        <li><a href="{{ url('/') }}">{{ $navigation->home }}</a></li>
                        <li><span>{{ $navigation->blog }}</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Banner End-->

<!--Blog Start-->
<div class="blog-page pt_40 pb_90">
    <div class="container">
        <div class="row">
            @foreach ($blogs as $blog)
            <div class="col-lg-4 col-sm-6">
                <div class="blog-item">
                    <div class="blog-image">
                        <img src="{{ url($blog->thumbnail_image) }}" alt="">
                    </div>
                    <div class="blog-author">
                        <span><i class="fas fa-user"></i> {{ $text->admin }}</span>
                        <span><i class="far fa-calendar-alt"></i> {{ date('d F, Y', strtotime($blog->created_at->format('Y-m-d'))) }}</span>
                    </div>
                    <div class="blog-text">
                        <h3><a href="{{ url('blog-details/'.$blog->slug) }}">{{ $blog->title }}</a></h3>
                        <p>
                            {{ $blog->sort_description }}

                        </p>
                        <a class="sm_btn" href="{{ url('blog-details/'.$blog->slug) }}">{{ $text->blog_learn_more }} →</a>
                    </div>
                </div>
            </div>
            @endforeach

        </div>
        <!--Pagination Start-->
        <div class="row">
            <div class="col-12">
                <div class="pagination">
                    {{ $blogs->links() }}
                </div>
            </div>
        </div>
        <!--Pagination End-->
    </div>
</div>
<!--Blog End-->



@endsection
