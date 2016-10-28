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

        {{-- starts: Google Maps --}}
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <div id="googlemaps-container-top"></div>
        <div id="googlemaps" class="google-map google-map-full"></div>
        <div id="googlemaps-container-bottom"></div>
        <script src="http://maps.google.com/maps/api/js?sensor=true&key=AIzaSyARimfCVH19VyYWgXVxeIBJ9LUGdels4E4"></script>
        <script src="{{ asset('/js/frontend/jquery.gmap.min.js') }}"></script>

        <script type="text/javascript">
            $('#googlemaps').gMap({
                maptype: 'ROADMAP',
                scrollwheel: true,
                zoom: 16,
                markers: [
                    {
                        address: '{{ $texts->get('header.coordinates') }}',
                        html: '',
                        popup: false,
                    }
                ],
            });
        </script>
        {{-- end: Google Maps --}}

    </div>
    {{-- end: Map --}}

@stop