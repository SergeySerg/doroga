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

    {{-- start: Map --}}
    <div class="map">

        {{-- starts: Google Maps --}}
        <div id="googlemaps-container-top"></div>
        <div id="googlemaps" class="google-map google-map-full"></div>
        <div id="googlemaps-container-bottom"></div>

        <script src="{{ asset('/js/frontend/jquery-2.0.3.min.js') }}"></script>
        <script src="http://maps.google.com/maps/api/js?sensor=true&key=AIzaSyARimfCVH19VyYWgXVxeIBJ9LUGdels4E4"></script>
        <script src="{{ asset('/js/frontend/jquery.gmap.min.js') }}"></script>

        <script type="text/javascript">

            $('#googlemaps').gMap({
                maptype: 'ROADMAP',
                scrollwheel: true,
                zoom: 16,
                markers: [
                    {
                        address: '{{ $texts->get('header.coordinates') }}', // Your Adress Here
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