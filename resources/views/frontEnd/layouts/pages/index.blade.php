@extends('frontEnd.layouts.master') @section('title', 'Home') @push('seo')
<meta name="app-url" content="" />
<meta name="robots" content="index, follow" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<!-- Open Graph data -->
<meta property="og:title" content="" />
<meta property="og:type" content="website" />
<meta property="og:url" content="" />
<meta property="og:image" content="{{ asset($generalsetting->white_logo) }}" />
<meta property="og:description" content="" />
@endpush @push('css')
<link rel="stylesheet" href="{{ asset('frontEnd/css/owl.carousel.min.css') }}" />
<link rel="stylesheet" href="{{ asset('frontEnd/css/owl.theme.default.min.css') }}" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.css" rel="stylesheet" />
@endpush @section('content')
<section class="slider-section">
    <div class="container">
        <div class="row">
            {{--
            <div class="col-sm-3 hidetosm">
                <div class="sidebar-menu">
                    <ul class="hideshow">
                        @foreach ($menucategories as $key => $category)
                            <li>
                                <a href="{{ route('category', $category->slug) }}">
                                    <img src="{{ asset($category->image) }}" alt="" />
                                    {{ $category->name }}
                                    <i class="fa-solid fa-chevron-right"></i>
                                </a>
                                <ul class="sidebar-submenu">
                                    @foreach ($category->subcategories as $key => $subcategory)
                                        <li>
                                            <a href="{{ route('subcategory', $subcategory->slug) }}">
                                                {{ $subcategory->subcategoryName }} <i
                                                    class="fa-solid fa-chevron-right"></i> </a>
                                            <ul class="sidebar-childmenu">
                                                @foreach ($subcategory->childcategories as $key => $childcat)
                                                    <li>
                                                        <a href="{{ route('products', $childcat->slug) }}">
                                                            {{ $childcat->childcategoryName }}
                                                        </a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </li>
                                    @endforeach
                                </ul>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div> --}}

            <div class="col-sm-9">
                <div class="home-slider-container">
                    <div class="main_slider owl-carousel">
                        @foreach ($sliders as $key => $value)
                            <a href="{{ $value->link }}">
                                <div class="slider-item">
                                    <img src="{{ asset($value->image) }}" alt="{{ $value->image }}" />
                                </div>
                            </a>
                            <!-- slider item -->
                        @endforeach
                    </div>
                </div>
            </div>
            <div class="col-sm-3 d-none d-sm-block">
                <div class="row">
                    @foreach ($sbanner as $item)
                        <div class="col-sm-12 mb-4">
                            <a href="{{ $item->link }}">
                                <img src="{{ asset('sbanner/' . $item->image) }}" alt="Girl in a jacket" width="100%"
                                    style="height:220px">
                            </a>
                        </div>
                    @endforeach
                    <!--<div class="col-sm-12 mt-4">-->
                    <!--    <a href="https://www.w3schools.com">-->
                    <!--        <img src="https://work.suvroit.online/uploads/product/1717145718-h6kt4q5uiv4szh9gfc8xm645nyt1lz6au717r6wp.webp" alt="Girl in a jacket" width="100%" style="height:220px">-->
                    <!--    </a>-->
                    <!--</div>-->
                </div>

            </div>
        </div>
    </div>
</section>
<!-- slider end -->

<section class="homeproduct">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="sec_title">
                    <h3 class="section-title-header">
                        <div class="timer_inner">
                            <div class="">
                                <span class="section-title-name"> Top Categories </span>
                            </div>
                        </div>
                    </h3>
                </div>
            </div>

            <div class="col-sm-12">
                <div class="topcategory category-slider owl-carousel">
                    @foreach ($menucategories as $key => $value)
                        <div class="cat_item">
                            <div class="cat_img">
                                <a href="{{ route('category', $value->slug) }}">
                                    <img src="{{ asset($value->image) }}" alt="" />
                                </a>
                            </div>
                            <div class="cat_name">
                                <a href="{{ route('category', $value->slug) }}">
                                    {{ $value->name }}
                                </a>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>

        </div>
    </div>
</section>

<section class="homeproduct">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="sec_title">
                    <h3 class="section-title-header">
                        <div class="timer_inner">
                            <div class="">
                                <span class="section-title-name"> Hot Deal </span>
                            </div>

                            <div class="">
                                <div class="offer_timer" id="simple_timer"></div>
                            </div>
                        </div>
                    </h3>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="hotdeals-slider owl-carousel">
                    @foreach ($hotdeal_top as $key => $value)
                        <div class="product_item wist_item">
                            <div class="product_item_inner">
                                @if ($value->old_price)
                                    <div class="sale-badge">
                                        <div class="sale-badge-inner">
                                            <div class="sale-badge-box">
                                                <span class="sale-badge-text">
                                                    <p>@php $discount=(((($value->old_price)-($value->new_price))*100) / ($value->old_price)) @endphp {{ number_format($discount, 0) }}%</p>
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
                                        <p> ৳ {{ $value->new_price }}

                                            @if ($value->old_price)
                                                <del>৳ {{ $value->old_price }}</del>
                                            @endif

                                        </p>
                                    </div>
                                </div>
                            </div>

                            @if (!$value->prosizes->isEmpty() || !$value->procolors->isEmpty())
                                <div class="pro_btn1">

                                    {{-- <div class="cart_btn order_button">
                                        <a href="{{ route('product', $value->slug) }}" class="addcartbutton">অর্ডার করুন</a>
                                    </div> --}}
                                    <div class="cart_btn">
                                        <a href="{{ route('product', $value->slug) }}" class="addcartbutton">Choose
                                            color/size</a>
                                        {{-- <a href="{{ route('product', $value->slug) }}" class="addcartbutton"> রঙ/সাইজ
                                            নির্বাচন করুন</a> --}}
                                    </div>
                                </div>
                            @else
                                <div class="pro_btn">
                                    <form action="{{ route('cart.store') }}" method="POST">
                                        @csrf
                                        <input type="hidden" name="id" value="{{ $value->id }}" />
                                        <input type="hidden" name="qty" value="1" />
                                        <button type="submit">Buy Now</button>
                                        {{-- <button type="submit">অর্ডার করুন</button> --}}
                                    </form>
                                    <div class="cart_btn">
                                        <a data-id="{{ $value->id }}" class="addcartbutton" title="add to cart"><i class="fa-solid fa-cart-shopping"></i></a>
                                        {{-- <a data-id="{{ $value->id }}" class="addcartbutton">কার্টে যোগ করন</a> --}}
                                    </div>
                                </div>
                            @endif
                        </div>
                    @endforeach
                </div>
            </div>
            <div class="col-sm-12 d-flex justify-content-center align-items-center">
                <a href="{{ route('hotdeals') }}" class="view_more_btn">View All</a>
                {{-- <a href="{{ route('hotdeals') }}" class="view_more_btn"><i
                    class="fa-solid fa-eye px-2" style="padding-left:0 !important;"></i>Show More</a> --}}
            </div>
        </div>
    </div>
</section>

@foreach ($homeproducts as $homecat)
    <section class="homeproduct">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 d-flex justify-content-between align-items-center">
                    <div class="sec_title">
                        <h3 class="section-title-header">
                            <span class="section-title-name">{{ $homecat->name }}</span>

                        </h3>
                    </div>
                    <div class="separator mx-3 d-none"></div>
                    <div class="show_more_btn">
                        <a href="{{ route('category', $homecat->slug) }}" class="view_more_btn">View All</a>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="product_slider owl-carousel">
                        @foreach ($homecat->products as $key => $value)
                            <div class="product_item wist_item">
                                <div class="product_item_inner">
                                    @if ($value->old_price)
                                        <div class="sale-badge">
                                            <div class="sale-badge-inner">
                                                <div class="sale-badge-box">
                                                    <span class="sale-badge-text">
                                                        <p>-@php $discount=(((($value->old_price)-($value->new_price))*100) / ($value->old_price)) @endphp {{ number_format($discount, 0) }}%</p>
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
                                            <p><b>৳ {{ $value->new_price }}</b>

                                                @if ($value->old_price)
                                                    <del>৳ {{ $value->old_price }}</del>
                                                @endif

                                            </p>
                                        </div>
                                    </div>
                                </div>

                                @if (!$value->prosizes->isEmpty() || !$value->procolors->isEmpty())
                                    <div class="pro_btn1">

                                        <div class="cart_btn">
                                            {{-- <a href="{{ route('product', $value->slug) }}" class="addcartbutton">
                                                রঙ/সাইজ নির্বাচন করুন
                                            </a> --}}
                                            <a href="{{ route('product', $value->slug) }}"
                                                class="addcartbutton">Choose color/size</a>
                                        </div>
                                    </div>
                                @else
                                    {{-- <div class="pro_btn"> --}}
                                    <div class="pro_btn">
                                        <form action="{{ route('cart.store') }}" method="POST">
                                            @csrf
                                            <input type="hidden" name="id" value="{{ $value->id }}" />
                                            <input type="hidden" name="qty" value="1" />
                                            <button type="submit">Buy Now</button>
                                            {{-- <button type="submit">অর্ডার করুন</button> --}}
                                        </form>
                                        <div class="cart_btn">
                                            <a data-id="{{ $value->id }}" class="addcartbutton" title="add to cart"> <i class="fa-solid fa-cart-shopping"></i></a>
                                            {{-- <a data-id="{{ $value->id }}" class="addcartbutton"> <i class="fa-solid fa-cart-shopping"></i> Cart</a> --}}
                                            {{-- <a data-id="{{ $value->id }}" class="addcartbutton">কার্টে যোগ করন</a> --}}
                                        </div>
                                    </div>
                                    {{-- <div class="cart_btn">
                                            <a data-id="{{ $value->id }}" class="addcartbutton">কার্টে যোগ করন</a>
                                        </div> --}}
                                    {{-- </div> --}}
                                @endif
                            </div>
                        @endforeach
                    </div>
                </div>
                {{-- <div class="col-sm-12">
                    <div class="show_more_btn">
                        <a href="{{ route('category', $homecat->slug) }}" class="view_more_btn"><i
                                class="fa-solid fa-eye px-2" style="padding-left:0 !important;"></i>Show More</a>
                    </div>
                </div> --}}
            </div>
        </div>
    </section>
@endforeach

@endsection @push('script')
<script src="{{ asset('frontEnd/js/owl.carousel.min.js') }}"></script>
<script src="{{ asset('frontEnd/js/jquery.syotimer.min.js') }}"></script>

<script>
    $(document).ready(function() {
        $(".main_slider").owlCarousel({
            // items: 1,
            // loop: true,
            // dots: false,
            // autoplay: true,
            // nav: true,
            // autoplayHoverPause: false,
            // margin: 0,
            // mouseDrag: false,
            // smartSpeed: 8000,
            // autoplayTimeout: 3000,
            // animateOut: "slideOutDown",
            // animateIn: "flipInX",

            // navText: ["<i class='fa-solid fa-angle-left'></i>",
            //     "<i class='fa-solid fa-angle-right'></i>"
            // ],

            margin: 15,
            items: 1,
            loop: true,
            dots: false,
            autoplay: true,
            autoplayTimeout: 6000,
            autoplayHoverPause: true,
            responsiveClass: true,
            responsive: {
                0: {
                    items: 1,
                    nav: false,
                },
                600: {
                    items: 1,
                    nav: false,
                },
                1000: {
                    items: 1,
                    nav: false,
                },
            },
        });
    });
</script>
<script>
    $(document).ready(function() {
        $(".hotdeals-slider").owlCarousel({
            margin: 15,
            loop: true,
            dots: false,
            autoplay: false,
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
                    loop: false,
                },
            },
        });
    });
</script>
<script>
    $(document).ready(function() {
        $(".category-slider").owlCarousel({
            margin: 15,
            loop: true,
            dots: false,
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
                    items: 4,
                    nav: false,
                },
                1000: {
                    items: 6,
                    nav: true,
                    loop: false,
                },
            },
        });

        $(".product_slider").owlCarousel({
            margin: 15,
            items: 6,
            loop: true,
            dots: false,
            autoplay: true,
            autoplayTimeout: 6000,
            autoplayHoverPause: true,
            responsiveClass: true,
            responsive: {
                0: {
                    items: 2,
                    nav: false,
                },
                600: {
                    items: 3,
                    nav: false,
                },
                1000: {
                    items: 5,
                    nav: false,
                },
            },
        });
    });
</script>

<script>
    $("#simple_timer").syotimer({
        date: new Date(2015, 0, 1),
        layout: "hms",
        doubleNumbers: false,
        effectType: "opacity",

        periodUnit: "d",
        periodic: true,
        periodInterval: 1,
    });
</script>
@endpush
