@extends('ws-app')

@section('content')

    {{-- start: Page Title --}}
    <div id="page-title">

        <div id="page-title-inner">

            {{-- start: Container --}}
            <div class="container">

                <h2>{{ trans('base.services') }}</h2>

            </div>
            {{-- end: Container  --}}

        </div>

    </div>
    {{-- end: Page Title --}}


    <div class="container">

        {{-- start: Row --}}
        <div class="row">

            @foreach($services as $service)

                {{-- start: ServicesItem --}}
                <div id="service-{{ $service -> id }}" class="services-wrap">

                    <div class="span12">

                        <div class="title"><h3>{{ $service -> getTranslate('title') }}</h3></div>

                    </div>

                    <div class="span3 center">

                        @if(count($service -> getImages()) > 0)

                            <div class="circle-color main-img" style="background-image: url('/{{ $service -> getImages()[0]['min'] }}');"></div>

                        @else

                            <div class="circle-color main-img" style="background-image: url('{{ asset('/img/frontend/no-img.jpg') }}');"></div>

                        @endif

                    </div>

                    <div class="span6">

                        <p> {!! $service -> getTranslate('description') !!}</p>

                    </div>

                    <div class="span3">

                        <div class="testimonials">

                            <h3>

                                <span class="price">

                                    @if (($service -> price) > 0 )

                                       {{ $service -> getTranslate('price') }} {{ trans('base.currency') }}

                                    @else

                                         {{ trans('base.free') }}

                                    @endif

                                </span>

                            </h3>

                        </div>

                    </div>

                    <div class="clear"></div>

                    <div class="span12">

                        {{-- start: Carousel --}}
                        @if(count($service -> getImages()) > 0)

                            <div id="webstudio-carousel-{{ $service -> id }}" class="webstudio-carousel" style="display:none;">

                                @foreach($service -> getImages() as $imgSrc)

                                    <img alt="" src="/{{ $imgSrc['min'] }}"
                                         data-image="/{{ $imgSrc['full'] }}">

                                @endforeach

                            </div>

                        @endif
                        {{-- end: Carousel --}}

                    </div>

                </div>
                {{-- end: ServicesItem --}}

            @endforeach

        </div>
        {{-- end: Row --}}

    </div>
    {{-- end: Container --}}

@stop