@extends('ws-app')

@section('content')

    {{-- start: Page Title --}}
    <div id="page-title">

        <div id="page-title-inner">

            {{-- start: Container --}}
            <div class="container">

                <h2>{{ trans('base.gallery') }}</h2>

            </div>
            {{-- end: Container  --}}

        </div>

    </div>
    {{-- end: Page Title --}}

    {{-- start: Container --}}
    <div class="container">

        @foreach($gallery as $gall)

            <div class="row">

                <div class="span12">

                    <div class="title"><h3>{{ $gall -> getTranslate('title') }}</h3></div>

                </div>

                <div class="span12">

                    {{-- start: Gallery --}}
                    <div id="webstudio-gallery-{{$gall -> id}}" class="webstudio-gallery" style="display:none;">

                        @foreach($gall -> getImages() as $imgSrc)

                            <img alt="" src="/{{ $imgSrc['min'] }}"
                                 data-image="/{{ $imgSrc['full'] }}">

                        @endforeach

                    </div>
                    {{-- end: Gallery --}}

                </div>

            </div>

        @endforeach

    </div>
    {{-- end: Container  --}}
    
@stop