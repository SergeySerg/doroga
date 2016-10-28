@extends('ws-app')

@section('content')

    <!-- start: Page Title -->
    <div id="page-title">

        <div id="page-title-inner">

            <!-- start: Container -->
            <div class="container">

                <h2>{{ trans('base.services') }}</h2>

            </div>
            <!-- end: Container  -->

        </div>

    </div>
    <!-- end: Page Title -->


    <div class="container">

    <!-- start: Row -->
    <div class="row">
        @foreach($services as $service)
        <!-- start: ServicesItem -->
        <div class="services-wrap">
            <div class="span12">
                <div class="title"><h3>{{ $service -> getTranslate('title') }}</h3></div>
            </div>
            <div class="span3 center">
                <div class="circle-color main-img" style="background: url('/{{ $service->getImages()[0]['min'] }}') no-repeat center;"></div>
            </div>
            <div class="span6">
                <p> {!! $service -> getTranslate('description') !!}</p>
            </div>
            <div class="span3">
                <div class="testimonials">
                    <h3>
                        <span class="price">
                            @if (($service->price) > 0 )
                               {{ $service -> price }} {{ trans('base.currency') }}
                            @else
                                 {{ trans('base.free') }}
                            @endif
                        </span>
                    </h3>
                </div>
            </div>
            <div class="clear"></div>
            <div class="span12">
                <!-- start: Carousel -->
                @if(count($service -> getImages()) > 0)
                <div id="webstudio-carousel-{{ $service -> id }}" class="webstudio-carousel" style="display:none;">
                    @foreach($service -> getImages() as $imgSrc)
                    <img alt="" src="/{{ $imgSrc['min'] }}"
                         data-image="/{{ $imgSrc['full'] }}">
                    @endforeach
                </div>
                @endif
                <!-- end: Carousel -->
            </div>
        </div>
        <!-- end: ServicesItem -->
        @endforeach
    </div>
    <!-- end: Row -->
</div>
<!--<div class="container">
    <div class="content">

        <div class="content-title">

            <span class="category-name">{{ trans('base.servicescontenttitle') }}</span>

            <div class="content-title-line"><div class="flower-right"></div></div>

        </div>

        @foreach($services as $service)

           <div class="services-block" id="service-{{ $service -> id }}">

            <div class="services-title">{{ $service -> getTranslate('title') }}</div>

            <div class="service-title-line"></div>

            <div class="services-arrow-wrap">
                <div class="services-arrow"></div>
            </div>

            <div class="services-hide">

                <div class="clearfix">

                    <div class="services-price">

							<span class="services-price-name">{{ trans('base.cost') }}:
								<span class="services-price-value">

									<span class="price">{{ $service -> price }}</span>
                                    {{ trans('base.currency') }}
								</span>

							</span>

                        {{--<br>

							<span class="services-price-name">
							{{ trans('base.visit') }}:
								<span class="services-price-value">Круглосуточно</span>
							</span>--}}

                    </div>

                    <div class="services-description">

                        {!! $service -> getTranslate('description') !!}

                    </div>

                </div>
                @if(count($service -> getImages()) > 0)

                    <div id="services-photo-id-{{ $service -> id }}" class="webstudio-gallery" style="display:none;">

                        @foreach($service -> getImages() as $imgSrc)

                            <img alt="" src="/{{ $imgSrc['min'] }}"
                                 data-image="/{{ $imgSrc['full'] }}">

                        @endforeach

                    </div>

                @endif

            </div>

        </div>

        @endforeach

    </div>
</div>-->
@stop