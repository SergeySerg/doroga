@extends('ws-app')

@section('content')

    {{-- start: Page Title --}}
    <div id="page-title">

        <div id="page-title-inner">

            {{-- start: Container --}}
            <div class="container">

                <h2>{{ trans('base.contacts') }}</h2>

            </div>
            {{-- end: Container  --}}

        </div>

    </div>
    {{-- end: Page Title --}}

    {{-- start: Map --}}
    <div class="map">

        {!! $texts->get('header.map') !!}

    </div>
    {{-- end: Map --}}

@stop