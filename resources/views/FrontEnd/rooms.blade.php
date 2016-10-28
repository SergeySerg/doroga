@extends('ws-app')

@section('content')

    <!-- start: Page Title -->
    <div id="page-title">

        <div id="page-title-inner">

            <!-- start: Container -->
            <div class="container">

                <h2>{{ trans('base.rooms') }}</h2>

            </div>
            <!-- end: Container  -->

        </div>

    </div>
    <!-- end: Page Title -->


    <div class="container">

    <!-- start: Row -->
    <div class="row">
        @foreach($rooms as $room)
            <!-- start: ServicesItem -->
            <div class="services-wrap">
                <div class="span12">
                    <div class="title"><h3>{{ $room -> getTranslate('title') }}</h3></div>
                </div>
                <div class="span3 center">
                    <div class="circle-color main-img" style="background: url('/{{ $room->getImages()[0]['min'] }}') no-repeat center;"></div>
                </div>
                <div class="span6">
                    <p> {!! $room -> getTranslate('description') !!}</p>
                </div>
                <div class="span3">
                    <div class="testimonials">
                        <h5 class="center">с 01.10.2016 по 31.10.2016</h5>
                        <h3><span class="price">{{ $room -> price }} {{ trans('base.currency') }}</span></h3>
                        <h5 class="center">с 01.10.2016 по 31.10.2016</h5>
                        <h3><span class="price">{{ $room -> price }} {{ trans('base.currency') }}</span></h3>
                        <div class="row-fluid" style="text-align: center">
                            <button style="margin-top: 10px" type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                                {{ trans('base.booking') }}
                            </button>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
                <div class="span12">
                    <!-- start: Carousel -->
                    @if(count($room -> getImages()) > 0)
                    <div id="webstudio-carousel-{{ $room -> id }}" class="webstudio-carousel" style="display:none;">
                        @foreach($room -> getImages() as $imgSrc)
                            <img alt="" src="/{{ $imgSrc['min'] }}"
                                 data-image="/{{ $imgSrc['full'] }}">
                        @endforeach
                    </div>
                    @else
                    <div class="img-block" style="border: 1px solid #E5AF51; background-image: url({{ asset('/img/frontend/no-img.png') }}); background-repeat: no-repeat; background-position: center;"></div>
                    @endif
                    <!-- end: Carousel -->
                </div>
            </div>
            <!-- end: ServicesItem -->
        @endforeach
    </div>
    <!-- end: Row -->
</div>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel" style="text-align: center">{{ trans('base.modal.booking') }}</h4>
            </div>
            <div class="modal-body">
                <div class="row-fluid">
                    <div class="span12">
                        <select class="selectpicker span12" >
                            <option>{{ trans('base.modal.chooseroom') }}</option>
                            <option>Номер 1</option>
                            <option>Номер 2</option>
                            <option>Номер 3</option>
                            <option>Номер 4</option>
                            <option>Весь котедж</option>
                        </select>
                    </div>
                </div>

                <div class="row-fluid">
                    <div class="span3">
                        <label>{{ trans('base.modal.сhildren') }}</label>
                        <select class="selectpicker span8">
                            <option>0</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                        </select>
                    </div>
                    <div class="span3">
                        <label>{{ trans('base.modal.adults') }}</label>
                        <select class="selectpicker span8">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                    <div class="span3">
                        <div class="row-fluid">
                            <label for="id-date-picker-1">{{ trans('base.modal.сheckin') }}</label>
                        </div>
                        <div class="control-group">
                            <div class="row-fluid input-append">
                                <input class="span9 date-picker" id="id-date-picker-1" type="text" data-date-format="dd-mm-yyyy" />
                                    <span class="add-on" >
                                        <i class="icon-calendar"></i>
                                    </span>
                            </div>
                        </div>
                     </div>
                    <div class="span3">
                        <div class="row-fluid">
                            <label for="id-date-picker-2">{{ trans('base.modal.сheckout') }}</label>
                        </div>
                        <div class="control-group">
                            <div class="row-fluid input-append">
                                <input class="span9 date-picker" id="id-date-picker-2" type="text" data-date-format="dd-mm-yyyy" />
                                    <span class="add-on">
                                        <i class="icon-calendar"></i>
                                    </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="span6">
                        <div class="control-group">
                            <div class="input-group input-group-sm">
                                <input type="text" class="form-control span12" placeholder="{{ trans('base.modal.name') }}" aria-describedby="sizing-addon3">
                            </div>
                            <div class="input-group input-group-sm">
                                <input type="text" class="form-control span12" placeholder="E-mail" aria-describedby="sizing-addon3">
                            </div>
                        </div>
                    </div>
                    <div class="span6">
                        <div class="control-group">
                            <div class="input-group input-group-sm">
                                <input type="text" class="form-control span12" placeholder="{{ trans('base.modal.telnumber') }}" aria-describedby="sizing-addon3">
                            </div>
                            <div class="input-group input-group-sm">
                                <input type="text" class="form-control span12" placeholder="{{ trans('base.modal.comment') }}" aria-describedby="sizing-addon3">
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="modal-footer" style="text-align: center">
                <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
                <button type="button" class="btn btn-primary">{{ trans('base.modal.bookingbutton') }}</button>
            </div>
        </div>
    </div>
</div>
<!-- /Modal -->
@stop