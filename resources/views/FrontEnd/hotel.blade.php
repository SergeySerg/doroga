@extends('ws-app')

@section('content')

    {{-- start: Page Title --}}
    <div id="page-title">

        <div id="page-title-inner">

            {{-- start: Container --}}
            <div class="container">

                <h2>{{ trans('base.hotel') }}</h2>

            </div>
            {{-- end: Container  --}}

        </div>

    </div>
    {{-- end: Page Title --}}

    <div class="container">

        <div class="row">

            {{-- start: Slider --}}
            <div id="webstudio-slider" style="display:none;">

                @foreach($slides as $slide)

                    @if(count($slide->getImages()) > 0)

                        <img alt="{{$slide->getTranslate('title')}}" src="/{{$slide->getImages()[0]['full']}}"
                             data-image="/{{$slide->getImages()[0]['full']}}"
                             id="img-{{$slide->id}}"
                             data-description=" {{$slide->getTranslate('description')}}">

                    @endif

                @endforeach

            </div>
            {{-- end: Slider --}}

        </div>

        {{--start: Row --}}
        <div class="row">

            <div class="span12">

                {{-- start: About Us --}}
                <div id="about">

                    <div class="title"><h3>{{ trans('base.aboutus') }}</h3></div>

                    <p>{!!  $hotel -> getTranslate('description') !!}</p>

                </div>
                {{-- end: About Us --}}

            </div>

        </div>
        {{--end: Row--}}

        {{--start: Row --}}
        <div class="row">

            <div class="span12">

                <div class="title"><h3>{{ trans('base.services') }}</h3></div>

            </div>

        </div>
        {{--end: Row--}}

        {{-- start: Row --}}
        <div class="row">

            {{-- start: Icon Boxes --}}
            <div class="icons-box-vert-container">

                @foreach($services as $service)

                    {{-- start: Icon Box Start --}}
                    <div class="span6">

                        <div class="icons-box-vert">

                            <a href="/{{ App::getLocale() }}/services/#service-{{ $service -> id }}">

                                @if(count($service->getImages()) > 0)

                                    <img alt="" class="circle-color" style="width: 90px; height: 90px" src="/{{ $service->getImages()[0]['min'] }}" data-holder-rendered="true" >

                                @else

                                <div class="img-block"></div>

                                @endif

                            </a>

                            <div class="icons-box-vert-info">

                                <h3>{{ str_limit($service -> getTranslate('title'),20,'...') }}</h3>

                                <p>{!! str_limit($service -> getTranslate('description'),95,'...') !!}</p>

                            </div>

                            <div class="clear"></div>

                        </div>

                    </div>
                    {{-- end: Icon Box--}}

                @endforeach


            </div>
            {{-- end: Icon Boxes --}}

            <div class="clear"></div>

        </div>
        {{-- end: Row --}}

    </div>

@endsection