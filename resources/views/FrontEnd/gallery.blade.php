@extends('ws-app')

@section('content')
<!-- start: Container -->
<div class="container">
    @foreach($gallery as $gall)
        <div class="row">

            <div class="span12">

                <div class="title"><h3>{{ $gall -> getTranslate('title') }}</h3></div>

            </div>

            <div class="span12">
                <!-- start: Gallery -->
                <div id="webstudio-gallery-{{$gall -> id}}" class="webstudio-gallery" style="display:none;">

                    @foreach($gall -> getImages() as $imgSrc)

                    <img alt="" src="/{{ $imgSrc['min'] }}"
                         data-image="/{{ $imgSrc['full'] }}">

                    @endforeach

                </div>
                <!-- end: Gallery -->
            </div>

        </div>
    @endforeach
</div>
<!-- end: Container  -->
<!--<div class="container">
    <div class="content">

        <div class="content-title">

            <span class="category-name gallery-name">{{ trans('base.gallerycontenttitle') }}</span>

            <div class="content-title-line"><div class="flower-right"></div></div>

        </div>
        @foreach($gallery as $gall)
            <div class="gallery-block">

                <h2>{{ $gall -> getTranslate('title') }}</h2>

                <div id="gallery-photo-id-{{$gall -> id}}" class="webstudio-gallery" style="display:none;">

                    @foreach($gall -> getImages() as $imgSrc)

                        <img alt="" src="/{{ $imgSrc['min'] }}"
                             data-image="/{{ $imgSrc['full'] }}">

                    @endforeach

                </div>

            </div>
        @endforeach

    </div>
</div>-->
@stop