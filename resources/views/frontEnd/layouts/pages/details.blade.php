<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>details product</title>
    <style>
        /* Style the tab */
        .tab {
          overflow: hidden;
          border: 1px solid #ccc;
          background-color: #f1f1f1;
        }

        /* Style the buttons inside the tab */
        .tab button {
          background-color: inherit;
          float: left;
          border: none;
          outline: none;
          cursor: pointer;
          padding: 14px 16px;
          transition: 0.3s;
          font-size: 17px;
        }

        /* Change background color of buttons on hover */
        .tab button:hover {
          background-color: #ddd;
        }

        /* Create an active/current tablink class */
        .tab button.active {
          background-color: #ccc;
        }

        /* Style the tab content */
        .tabcontent {
          display: none;
          padding: 6px 12px;
          border: 1px solid #ccc;
          border-top: none;
        }

        .mission i{
            width: 50px;
            height: 50px;
            font-size: 18px;
            line-height: 43px;
            border-radius: 50%;
            text-align: center;
            display: inline-block;
            color: #002E45;
            background: #fff;
            border: 3px double #002E45;
            -webkit-box-shadow: 0px 15px 35px 0px rgba(0, 0, 0, 0.1);
            box-shadow: 0px 15px 35px 0px rgba(0, 0, 0, 0.1);
            transition: all linear .3s;
            -webkit-transition: all linear .3s;
            -moz-transition: all linear .3s;
            -ms-transition: all linear .3s;
            -o-transition: all linear .3s;
        }

        .pro_btn {
            /*display: grid;*/
            grid-template-columns:1fr !important;
        }

        .modal {
            --bs-modal-margin: 20rem !important;
        }
    </style>
</head>
<body>
    @extends('frontEnd.layouts.master')
@section('title', $details->name)
@push('seo')
<meta name="app-url" content="{{ route('product', $details->slug) }}" />
<meta name="robots" content="index, follow" />
<meta name="description" content="{{ $details->meta_description }}" />
<meta name="keywords" content="{{ $details->slug }}" />

<!-- Twitter Card data -->
<meta name="twitter:card" content="product" />
<meta name="twitter:site" content="{{ $details->name }}" />
<meta name="twitter:title" content="{{ $details->name }}" />
<meta name="twitter:description" content="{{ $details->meta_description }}" />
<meta name="twitter:creator" content="gomobd.com" />
<meta property="og:url" content="{{ route('product', $details->slug) }}" />
<meta name="twitter:image" content="{{ asset($details->image->image) }}" />

<!-- Open Graph data -->
<meta property="og:title" content="{{ $details->name }}" />
<meta property="og:type" content="product" />
<meta property="og:url" content="{{ route('product', $details->slug) }}" />
<meta property="og:image" content="{{ asset($details->image->image) }}" />
<meta property="og:description" content="{{ $details->meta_description }}" />
<meta property="og:site_name" content="{{ $details->name }}" />
@endpush

@push('css')
<link rel="stylesheet" href="{{ asset('/frontEnd/css/zoomsl.css') }}">
@endpush

@section('content')
<div class="homeproduct main-details-page">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <section class="product-section">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6 position-relative">
                                @if($details->old_price)
                                <div class="product-details-discount-badge">
                                    <div class="sale-badge">
                                        <div class="sale-badge-inner">
                                            <div class="sale-badge-box">
                                                <span class="sale-badge-text">
                                                    <p> @php $discount=(((($details->old_price)-($details->new_price))*100) / ($details->old_price)) @endphp {{ number_format($discount, 0) }}%</p>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @endif
                                <div class="details_slider owl-carousel">
                                    @foreach ($details->images as $value)
                                        <div class="dimage_item">
                                            <img src="{{ asset($value->image) }}" class="block__pic" />
                                        </div>
                                    @endforeach
                                </div>
                                <div
                                    class="indicator_thumb @if ($details->images->count() > 4) thumb_slider owl-carousel @endif">
                                    @foreach ($details->images as $key => $image)
                                        <div class="indicator-item" data-id="{{ $key }}">
                                            <img src="{{ asset($image->image) }}" />
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="details_right">
                                    <div class="breadcrumb">
                                        <ul>
                                            <li><a href="{{ url('/') }}">Home</a></li>
                                            <li><span>/</span></li>
                                            <li><a
                                                    href="{{ url('/category/' . $details->category->slug) }}">{{ $details->category->name }}</a>
                                            </li>
                                            @if ($details->subcategory)
                                                <li><span>/</span></li>
                                                <li><a
                                                        href="#">{{ $details->subcategory ? $details->subcategory->subcategoryName : '' }}</a>
                                                </li>
                                                @endif @if ($details->childcategory)
                                                    <li><span>/</span></li>
                                                    <li><a
                                                            href="#">{{ $details->childcategory->childcategoryName }}</a>
                                                    </li>
                                                @endif
                                        </ul>
                                    </div>

                                    <div class="product">
                                        <div class="product-cart">
                                            <p class="name">{{ $details->name }}</p>
                                           <p class="details-price">
                                                <b style="color:#FF3838;">৳{{ $details->new_price }}</b>
                                                @if ($details->old_price)
                                                    <del>৳{{ $details->old_price }}</del>
                                                @endif
                                            </p>
                                            <div class="details-ratting-wrapper">
                                            @php
                                                $averageRating = $reviews->avg('ratting');
                                                $filledStars = floor($averageRating);
                                                $emptyStars = 5 - $filledStars;
                                            @endphp

                                            @if ($averageRating >= 0 && $averageRating <= 5)
                                                @for ($i = 1; $i <= $filledStars; $i++)
                                                    <i class="fas fa-star"></i>
                                                @endfor

                                                @if ($averageRating == $filledStars)
                                                    {{-- If averageRating is an integer, don't display half star --}}
                                                @else
                                                    <i class="far fa-star-half-alt"></i>
                                                @endif

                                                @for ($i = 1; $i <= $emptyStars; $i++)
                                                    <i class="far fa-star"></i>
                                                @endfor

                                                <span>{{ number_format($averageRating, 2) }}/5</span>
                                            @else
                                                <span>Invalid rating range</span>
                                            @endif
                                            <a class="all-reviews-button" href="#writeReview">See Reviews</a>
                                            </div>
                                            <div class="product-code">
                                                <p><span>প্রোডাক্ট কোড : </span>{{ $details->product_code }}</p>
                                            </div>
                                            <form action="{{ route('cart.store') }}" method="POST" name="formName">
                                                @csrf
                                                <input type="hidden" name="id" value="{{ $details->id }}" />
                                                @if ($productcolors->count() > 0)
                                                    <div class="pro-color" style="width: 100%;">
                                                        <div class="color_inner">
                                                            <p>Color -</p>
                                                            <div class="size-container">
                                                                <div class="selector">
                                                                    @foreach ($productcolors as $procolor)
                                                                        <div class="selector-item">
                                                                            <input type="radio"
                                                                                id="fc-option{{ $procolor->id }}"
                                                                                value="{{ $procolor->color ? $procolor->color->colorName : '' }}"
                                                                                name="product_color"
                                                                                class="selector-item_radio emptyalert"
                                                                                required />

                                                                            <label for="fc-option{{ $procolor->id }}"
                                                                                style="background-color: {{ $procolor->color ? $procolor->color->color : '' }}"
                                                                                class="selector-item_label">
                                                                                <span class="d-flex">
                                                                                    <img src="{{ asset('/frontEnd/images') }}/check-icon.svg"
                                                                                        alt="Checked Icon" />
                                                                                </span>
                                                                            </label>
                                                                        </div>
                                                                    @endforeach
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    @endif @if ($productsizes->count() > 0)
                                                        <div class="pro-size" style="width: 100%;">
                                                            <div class="size_inner">
                                                                <p>Size - <span class="attibute-name"></span></p>
                                                                <div class="size-container">
                                                                    <div class="selector gap-0">
                                                                        @foreach ($productsizes as $prosize)
                                                                            <div class="selector-item">
                                                                                <input type="radio"
                                                                                    id="f-option{{ $prosize->id }}"
                                                                                    value="{{ $prosize->size ? $prosize->size->sizeName : '' }}"
                                                                                    name="product_size"
                                                                                    class="selector-item_radio emptyalert"
                                                                                    required />
                                                                                <label
                                                                                    for="f-option{{ $prosize->id }}"
                                                                                    class="selector-item_label">{{ $prosize->size ? $prosize->size->sizeName : '' }}</label>
                                                                            </div>
                                                                        @endforeach
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        @endif
                                                        @if ($details->pro_unit)
                                                            <div class="pro_unig">
                                                                <label>Unit: {{ $details->pro_unit }}</label>
                                                                <input type="hidden" name="pro_unit"
                                                                    value="{{ $details->pro_unit }}" />
                                                            </div>
                                                        @endif
                                                        <div class="pro_brand">
                                                            <p>Brand :
                                                                {{ $details->brand ? $details->brand->name : 'Own / Local' }}
                                                            </p>
                                                        </div>

                                                        <div class="row p-md-0 p-sm-0">
                                                            <div class="qty-cart col-sm-12">
                                                                <div class="quantity">
                                                                    <span class="minus">-</span>
                                                                    <input type="text" name="qty"
                                                                        value="1" />
                                                                    <span class="plus">+</span>
                                                                </div>
                                                            </div>
                                        <div class="d-flex single_product col-sm-12">

                                        <!--<input type="submit" class="btn px-4 addcartbutton" name="add_cart" id="add_to_cart"value="কার্টে যোগ করু  "data-id="{{$value->id}}" />-->

                                        <input type="submit" class="btn px-4 order_now_btn order_now_btn_m" onclick="return sendSuccess();" name="order_now"value="কার্টে যোগ করন" />
                                        </div>

                                        </div>
                                                        <div class="mt-md-2 mt-2">
                                                            <h4 class="font-weight-bold mb-2">
                                                                <a class="btn w-100 call_now_btn"
                                                                    href="tel: {{ $contact->hotline }}" style="background: #002E45 ;color:#fff"; color="#fff">
                                                                    <i class="fa fa-phone-square"></i>

                                                     কল করতে ক্লিক করুন : {{ $contact->hotline }}
                                                                </a>
                                                            </h4>
                                                     <!--       <h4 class="font-weight-bold">-->
                                                     <!--           <a class="btn w-100 call_now_btn"-->
                                                     <!--               href="https://wa.me/+88{{ $contact->hotline }}" style="background: #002E45 ;color:#fff ">-->
                                                     <!--               <i class="fab fa-whatsapp"></i>-->

                                                     <!--Whatsapp Message : {{ $contact->hotline }}-->
                                                     <!--           </a>-->
                                                     <!--       </h4>-->
                                                        </div>
                                                        <div class="mt-md-2 mt-2">
                                                            <div class="del_charge_area">
                                                                <div class="border border-dark p-2 mb-3 rounded">
                                            <table class="table table-sm">
                                                <tbody>
                                                    @foreach ($shippingcharge as $key => $value)
                                                    <tr class="border-1">
                                                      <td>{{ $value->name }}</td>
                                                      <td>{{ $value->amount }} <b>টাকা</b></td>
                                                    </tr>
                                                    @endforeach
                                                </tbody>

                                            </table>
                                                            </div>
                                                        </div>
                                            </form>


                                        </div>
                                    </div>
                                    <!--<b>ঢাকার বাহিরের অর্ডার এর ক্ষেত্রে ডেলিভারি চার্জ এডভান্স পেমেন্ট করতে হবে</b>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>

<div class="description-nav-wrapper">
    <div class="container d-none">
        <div class="row">

            <div class="col-sm-12">
                <div class="description-nav">
                    <ul class="desc-nav-ul">
                        {{-- <li class="active">
                            <a href="#specification" target="_self">Specification</a>
                        </li> --}}
                        <li>
                            <a href="#description" target="_self">Description</a>
                        </li>
                        <li>
                            <a href="#question" target="_self">Questions (0)</a>
                        </li>
                        <li>
                            <a href="#writeReview" target="_self">Reviews ({{ $reviews->count() }}) </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="pro_details_area">
    <div class="container">
        <div class="row">
            <div class="col-sm-8">
                <div class="description tab-content details-action-box" id="description">
                    <div class="tab">
                        <button class="tablinks active" onclick="openCity(event, 'London')">বিস্তারিত</button>
                        <button class="tablinks" onclick="openCity(event, 'Paris')">ডেলিভারি এবং রিটার্ন পলিসি</button>
                        <!-- <button class="tablinks" onclick="openCity(event, 'Tokyo')">Tokyo</button> -->
                      </div>
                      <div id="London" style="display: block;" class="tabcontent">
                        <!--<h2>বিস্তারিত</h2>-->
                        <p>{!! $details->description !!}</p>
                      </div>

                      <div id="Paris" class="tabcontent">
                       <ul>
                            <li>আপনার যত প্রশ্ন আছে তা বর্ননার সাথে মিলিয়ে অথবা আমাদের কাছ থেকে জেনে পন্য অর্ডার করুন।</li>
                            <li>আপনার ক্রয় করা প্রোডাটিতে যদি কোন সমস্যা পান অথবা সাইজ ছোট বড় হয় তাহলে আপনি প্রোডক্টি এক্সচেঞ্জ করে নিতে পারবেন।</li>
                            <li>আমাদের প্রোডাক্ট এ যদি মেজর কোন ডিফেক্ট থাকে তাহলে আপনি রির্টান অথবা এক্সচেঞ্জ করতে পারবেন।</li>
                            <li>ভুল প্রোডাক্ট শিপমেন্ট হলে যেমন কালার এবং সাইজ ইস্যু তে আপনি রির্টান অথবা এক্সচেঞ্জ করতে পারবেন।</li>
                            <li>পণ্যটি দেখে পছন্দ না হলে ডেলিভারি চার্জ দিয়ে রির্টান করতে পারবেন।</li>
                            <li>পণ্যটি পাওয়ার ০৭ দিনের মধ্যে যেকোনো পরিবর্তনের জন্য আপনাকে গ্রাহক পরিষেবাকে জানাতে অনুরোধ করা হচ্ছে।</li>
                       </ul>
                      </div>

                    <!-- <h2>বিস্তারিত</h2>
                    <p>{!! $details->description !!}</p> -->
                </div>
                <div class="tab-content details-action-box" id="writeReview">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="section-head">
                                    <div class="title">
                                        <h2>Reviews ({{ $reviews->count() }})</h2>
                                        <p>Get specific details about this product from customers who own it.</p>
                                    </div>
                                    <div class="action">
                                        <div>
                                            <button type="button" class="details-action-btn question-btn btn-overlay"
                                                data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                Write a review
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                @if ($reviews->count() > 0)
                                    <div class="customer-review">
                                        <div class="row">
                                            @foreach ($reviews as $key => $review)
                                                <div class="col-sm-12 col-12">
                                                    <div class="review-card">
                                                        <p class="reviewer_name"><i data-feather="message-square"></i>
                                                            {{ $review->name }}</p>
                                                        <p class="review_data">{{ $review->created_at->format('d-m-Y') }}</p>
                                                        <p class="review_star">{!! str_repeat('<i class="fa-solid fa-star"></i>', $review->ratting) !!}</p>
                                                        <p class="review_content">{{ $review->review }}</p>
                                                    </div>
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                @else
                                    <div class="empty-content">
                                        <i class="fa fa-clipboard-list"></i>
                                        <p class="empty-text">This product has no reviews yet. Be the first one to write a review.</p>
                                    </div>
                                @endif
                                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                                    aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-5" id="exampleModalLabel">Your review</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="insert-review">
                                                    @if (Auth::guard('customer')->user())
                                                        <form action="{{ route('customer.review') }}" id="review-form"
                                                            method="POST">
                                                            @csrf
                                                            <input type="hidden" name="product_id" value="{{ $details->id }}">
                                                            <div class="fz-12 mb-2">
                                                                <div class="rating">
                                                                    <label title="Excelent">
                                                                        ☆
                                                                        <input required type="radio" name="ratting"
                                                                            value="5" />
                                                                    </label>
                                                                    <label title="Best">
                                                                        ☆
                                                                        <input required type="radio" name="ratting"
                                                                            value="4" />
                                                                    </label>
                                                                    <label title="Better">
                                                                        ☆
                                                                        <input required type="radio" name="ratting"
                                                                            value="3" />
                                                                    </label>
                                                                    <label title="Very Good">
                                                                        ☆
                                                                        <input required type="radio" name="ratting"
                                                                            value="2" />
                                                                    </label>
                                                                    <label title="Good">
                                                                        ☆
                                                                        <input required type="radio" name="ratting"
                                                                            value="1" />
                                                                    </label>
                                                                </div>
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="message-text" class="col-form-label">Message:</label>
                                                                <textarea required class="form-control radius-lg" name="review" id="message-text"></textarea>
                                                                <span id="validation-message" style="color: red;"></span>
                                                            </div>
                                                            <div class="form-group">
                                                                <button class="details-review-button" type="submit">Submit
                                                                    Review</button>
                                                            </div>

                                                        </form>
                                                    @else
                                                        <a class="customer-login-redirect" href="{{ route('customer.login') }}">Login
                                                            to Post
                                                            Your Review</a>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="pro_vide">
                    <h2>ভিডিও</h2>
                    <iframe width="100%" height="315"
                        src="https://www.youtube.com/embed/{{ $details->pro_video }}" title="YouTube video player"
                        frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="related-product-section">
    <div class="container">
        <div class="row">
            <div class="related-title">
                <h5>Related Product</h5>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="product-inner owl-carousel related_slider">
                    @foreach ($products as $key => $value)
                        <div class="product_item wist_item wow fadeInDown" data-wow-duration="1.5s"
                            data-wow-delay="0.{{ $key }}s">
                            <div class="product_item_inner">
                                @if($value->old_price)
                                <div class="sale-badge">
                                    <div class="sale-badge-inner">
                                        <div class="sale-badge-box">
                                            <span class="sale-badge-text">
                                                <p>-@php
                                                $discount=(((($value->old_price)-($value->new_price))*100) / ($value->old_price))
                                                @endphp
                                                {{ number_format($discount, 0) }}%</p>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                @endif
                                <div class="pro_img">
                                    <a href="{{ route('product', $value->slug) }}">
                                        <img src="{{ asset($value->image ? $value->image->image : '') }}"
                                            alt="{{ $value->name }}" />
                                    </a>
                                </div>
                                <div class="pro_des">
                                    <div class="pro_name">
                                        <a
                                            href="{{ route('product', $value->slug) }}">{{ Str::limit($value->name, 80) }}</a>
                                    </div>
                                    <div class="pro_price">
                                        <p>

                                            ৳ {{ $value->new_price }} @if ($value->old_price)
                                            @endif

                                            <del><b>৳ {{ $value->old_price }}</b></del>
                                        </p>
                                    </div>
                                </div>
                            </div>

                            @if (!$value->prosizes->isEmpty() || !$value->procolors->isEmpty())
                                <div class="pro_btn">

                                    <!--<div class="cart_btn order_button">-->
                                    <!--    <a href="{{ route('product', $value->slug) }}"-->
                                    <!--        class="addcartbutton">অর্ডার করুন </a>-->
                                    <!--</div>-->
                                    <div class="cart_btn">
                                        <a href="{{ route('product',$value->slug) }}" class="addcartbutton">কার্টে যোগ করন</a>
                                    </div>
                                </div>
                            @else
                                <div class="pro_btn">

                                    <!--<form action="{{ route('cart.store') }}" method="POST">-->
                                    <!--    @csrf-->
                                    <!--    <input type="hidden" name="id" value="{{ $value->id }}" />-->
                                    <!--    <input type="hidden" name="qty" value="1" />-->
                                    <!--    <button type="submit">অর্ডার করুন </button>-->
                                    <!--</form>-->
                                    <!--<div class="cart_btn">-->
                                    <!--    <a href="{{ route('product',$value->slug) }}" class="addcartbutton">কার্ট</a>-->
                                    <!-- </div>-->
                                     <div class="cart_btn">
                                <a data-id="{{$value->id}}" class="addcartbutton">কার্টে যোগ করন</a>
                            </div>
                                </div>
                            @endif
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>

@endsection @push('script')
<script src="{{asset('frontEnd/js/jquery-3.6.3.min.js')}}"></script>

<script src="{{ asset('/frontEnd/js/owl.carousel.min.js') }}"></script>

<script src="{{ asset('/frontEnd/js/zoomsl.min.js') }}"></script>

<script>
    $(document).ready(function() {
        $(".details_slider").owlCarousel({
            margin: 15,
            items: 1,
            loop: true,
            dots: false,
            autoplay: true,
            autoplayTimeout: 6000,
            autoplayHoverPause: true,
        });
        $(".indicator-item").on("click", function() {
            var slideIndex = $(this).data("id");
            $(".details_slider").trigger("to.owl.carousel", slideIndex);
        });
    });
</script>
<!--Data Layer Start-->
<script type="text/javascript">
    window.dataLayer = window.dataLayer || [];
    dataLayer.push({
        ecommerce: null
    });
    dataLayer.push({
        event: "view_item",
        ecommerce: {
            items: [{
                item_name: "{{ $details->name }}",
                item_id: "{{ $details->id }}",
                price: "{{ $details->new_price }}",
                item_brand: "{{ $details->brand?$details->brand->name:'' }}",
                item_category: "{{ $details->category->name }}",
                item_variant: "{{ $details->pro_unit }}",
                currency: "BDT",
                quantity: {{ $details->stock ?? 0 }}
            }],
            impression: [
                @foreach ($products as $value)
                    {
                        item_name: "{{ $value->name }}",
                        item_id: "{{ $value->id }}",
                        price: "{{ $value->new_price }}",
                        item_brand: "{{ $details->brand?$details->brand->name:'' }}",
                        item_category: "{{ $value->category ? $value->category->name : '' }}",
                        item_variant: "{{ $value->pro_unit }}",
                        currency: "BDT",
                        quantity: {{ $value->stock ?? 0 }}
                    },
                @endforeach
            ]
        }
    });
</script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#add_to_cart').click(function() {
            gtag("event", "add_to_cart", {
                currency: "BDT",
                value: "1.5",
                items: [
                    @foreach (Cart::instance('shopping')->content() as $cartInfo)
                        {
                            item_id: "{{$details->id}}",
                            item_name: "{{$details->name}}",
                            price: "{{$details->new_price}}",
                            currency: "BDT",
                            quantity: {{ $cartInfo->qty ?? 0 }}
                        },
                    @endforeach
                ]
                // event.preventDefault();
            });
            event.preventDefault();
            var url = $(this).data('target');
            location.replace(url);
        });
        event.preventDefault();
            var url = $(this).data('target');
            location.replace(url);
    });
</script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#order_now').click(function() {
            gtag("event", "add_to_cart", {
                currency: "BDT",
                value: "1.5",
                items: [
                    @foreach (Cart::instance('shopping')->content() as $cartInfo)
                        {
                            item_id: "{{$details->id}}",
                            item_name: "{{$details->name}}",
                            price: "{{$details->new_price}}",
                            currency: "BDT",
                            quantity: {{ $cartInfo->qty ?? 0 }}
                        },
                    @endforeach
                ]
            });
        });
    });
</script>

<!-- Data Layer End-->
<script>
    $(document).ready(function() {
        $(".related_slider").owlCarousel({
            margin: 10,
            items: 6,
            loop: true,
            dots: true,
            nav: true,
            autoplay: true,
            autoplayTimeout: 6000,
            autoplayHoverPause: true,
            responsiveClass: true,
            responsive: {
                0: {
                    items: 2,
                    nav: true,
                },
                600: {
                    items: 3,
                    nav: false,
                },
                1000: {
                    items: 5,
                    nav: true,
                    loop: true,
                },
            },
        });
        // $('.owl-nav').remove();
    });
</script>
<script>
    $(document).ready(function() {
        $(".minus").click(function() {
            var $input = $(this).parent().find("input");
            var count = parseInt($input.val()) - 1;
            count = count < 1 ? 1 : count;
            $input.val(count);
            $input.change();
            return false;
        });
        $(".plus").click(function() {
            var $input = $(this).parent().find("input");
            $input.val(parseInt($input.val()) + 1);
            $input.change();
            return false;
        });
    });
</script>

<script>
    function sendSuccess() {
        // size validation
        size = document.forms["formName"]["product_size"].value;
        if (size != "") {
            // access
        } else {
            toastr.warning("Please select any size");
            return false;
        }
        color = document.forms["formName"]["product_color"].value;
        if (color != "") {
            // access
        } else {
            toastr.error("Please select any color");
            return false;
        }
    }
</script>
<script>
    $(document).ready(function() {
        $(".rating label").click(function() {
            $(".rating label").removeClass("active");
            $(this).addClass("active");
        });
    });
</script>
<script>
    $(document).ready(function() {
        $(".thumb_slider").owlCarousel({
            margin: 15,
            items: 4,
            loop: true,
            dots: false,
            nav: true,
            autoplayTimeout: 6000,
            autoplayHoverPause: true,
        });
    });
</script>

<script type="text/javascript">
    $(".block__pic").imagezoomsl({
        zoomrange: [3, 3]
    });
</script>

<!-- tab  -->
<script>
    function openCity(evt, cityName) {
      var i, tabcontent, tablinks;
      tabcontent = document.getElementsByClassName("tabcontent");
      for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
      }
      tablinks = document.getElementsByClassName("tablinks");
      for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
      }
      document.getElementById(cityName).style.display = "block";
      evt.currentTarget.className += " active";
    }
</script>
<!-- tab end -->
@endpush

</body>
</html>
