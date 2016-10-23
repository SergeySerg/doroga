@extends('ws-app')

@section('content')
<div class="container">
    <div class="content-rooms">


        <div class="row">

            <div class="span12">

                <div class="title"><h1>{{ trans('base.roomscontenttitle') }}</h1></div>

            </div>

        </div>

        @foreach($rooms as $room)
        <div class="span12">
                <div id="room-{{ $room -> id }}" class="rooms-block clearfix">

                    <div class="clearfix">

                        @if(count($room -> getImages()) > 0)

                            <div class="img-block">

                                <div id="webstudio-gallery-id-{{ $room -> id }}" class="webstudio-gallery-rooms" style="display:none;">

                                    @foreach($room -> getImages() as $imgSrc)

                                        <img alt="" src="/{{ $imgSrc['min'] }}"
                                             data-image="/{{ $imgSrc['full'] }}">

                                    @endforeach

                                </div>

                            </div>

                        @else

                            <div class="img-block" style="border: 1px solid #E5AF51; background-image: url({{ asset('/img/no-img.png') }}); background-repeat: no-repeat; background-position: center;"></div>

                        @endif

                        <div class="describe-block">

                            <h1>{{ $room -> getTranslate('title') }}</h1>

                            <span>{{ trans('base.quantity') }}:<span class="qnty">{{ $room -> quantity }}</span></span>

                            <div class="describe-room">

                                {!! $room -> getTranslate('description') !!}

                            </div>

                        </div>

                        <div class="price-block">

                            <span>{{ trans('base.cost') }}:<span class="price">{{ $room -> price }} {{ trans('base.currency') }}</span></span>

                            <h4 class="pink">
                                <i class="icon-hand-right green"></i>
                                <a href="#modal-form" role="button" class="blue" data-toggle="modal"> Form Inside a Modal Box </a>
                            </h4>
                            <div id="modal-form" class="modal hide" tabindex="-1">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="blue bigger">Please fill the following form fields</h4>
                                </div>

                                <div class="modal-body overflow-visible">
                                    <div class="row-fluid">
                                        <div class="span5">
                                            <div class="space"></div>

                                            <input type="file" />
                                        </div>

                                        <div class="vspace"></div>

                                        <div class="span7">
                                            <div class="control-group">
                                                <label for="form-field-select-3">Location</label>

                                                <div class="controls">
                                                    <select class="chzn-select" data-placeholder="Choose a Country...">
                                                        <option value="" />
                                                        <option value="AL" />Alabama
                                                        <option value="AK" />Alaska
                                                        <option value="AZ" />Arizona


                                                    </select>
                                                </div>
                                            </div>

                                            <div class="control-group">
                                                <label class="control-label" for="form-field-username">Username</label>

                                                <div class="controls">
                                                    <input type="text" id="form-field-username" placeholder="Username" value="alexdoe" />
                                                </div>
                                            </div>

                                            <div class="control-group">
                                                <label class="control-label" for="form-field-first">Name</label>

                                                <div class="controls">
                                                    <input class="input-small" type="text" id="form-field-first" placeholder="First Name" value="Alex" />
                                                    <input class="input-small" type="text" id="form-field-last" placeholder="Last Name" value="Doe" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="modal-footer">
                                    <button class="btn btn-small" data-dismiss="modal">
                                        <i class="icon-remove"></i>
                                        Cancel
                                    </button>

                                    <button class="btn btn-small btn-primary">
                                        <i class="icon-ok"></i>
                                        Save
                                    </button>
                                </div>
                            </div>

                           {{-- <a class="booking-btn-in-rooms" href="/{{ App::getLocale() }}/booking">{{ trans('base.booking') }}</a> --}}

                        </div>

                    </div>

                    <div class="r-tab conveniences-line">

                        <span>{{ trans('base.conveniences') }}</span>

                        <div class="arrow-conveniences"></div>

                    </div>

                    <div class="conveniences-block clearfix"></div>

                </div>
        </div>
        @endforeach

    </div>
</div>



@stop