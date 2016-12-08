@extends('ws-app')

@section('content')

    {{-- start: Page Title --}}
    <div id="page-title">

        <div id="page-title-inner">

            {{-- start: Container --}}
            <div class="container">

                <h2>{{ trans('base.rooms') }}</h2>

            </div>
            {{-- end: Container  --}}

        </div>

    </div>
    {{-- end: Page Title --}}

    <div class="container">

        {{-- start: Row --}}
        <div class="row">

            @foreach($rooms as $room)

                {{-- start: ServicesItem --}}
                <div class="services-wrap">

                    <div class="span12">

                        <div class="title" id = {{ $room -> id }}><h3>{{ $room -> getTranslate('title') }}</h3></div>

                    </div>

                    <div class="span3 center">

                        @if(count($room -> getImages()) > 0)

                            <div class="circle-color main-img" data-image="/{{ $room -> getImages()[0]['min'] }}" style="background-image: url('/{{ $room -> getImages()[0]['min'] }}');"></div>

                        @else

                            <div class="circle-color main-img" style="background-image: url('{{ asset('/img/frontend/no-img.jpg') }}');"></div>

                        @endif

                    </div>

                    <div class="span5">

                        <p> {!! $room -> getTranslate('description') !!}</p>

                    </div>

                    <div class="span4">

                        <div class="testimonials r-price">

                                {!! $room -> getTranslate('price') !!}

                            <div class="row-fluid center">

                                <button type="button" data-room-id = "{{ $room -> id }}" class="btn btn-primary btn-lg btn-booking book" data-toggle="modal" data-target="#myModal">
                                    {{ trans('base.booking') }}
                                </button>

                            </div>

                        </div>

                    </div>

                    <div class="clear"></div>

                    <div class="span12">

                        {{-- start: Carousel --}}
                        @if(count($room -> getImages()) > 1)

                            <div id="webstudio-carousel-{{ $room -> id }}" class="webstudio-carousel" style="display:none;">

                                @foreach($room -> getImages() as $imgSrc)

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

    {{-- Modal --}}
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">

        <div class="modal-dialog" role="document">

            <form id="bookingform" method="post">

                <div class="modal-content">

                    <div class="modal-header">

                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

                        <h4 class="modal-title" id="myModalLabel" style="text-align: center">{{ trans('base.modal.booking') }}</h4>

                    </div>

                    <div class="modal-body">

                        <div class="row-fluid">

                            <div class="span12">

                                <select id="select_room" class="selectpicker span12">

                                    <option >{{ trans('base.modal.chooseroom') }}</option>

                                    @foreach($rooms as $room)

                                        <option data-room-id="{{ $room -> id }}" value = "{{ $room -> getTranslate('title') }}">{{ $room -> getTranslate('title') }}</option>

                                    @endforeach

                                </select>

                            </div>

                        </div>

                        <div class="row-fluid">

                            <div class="span3">

                                <label>{{ trans('base.modal.сhildren') }}</label>

                                <select  id="select_сhildren" class="selectpicker span8">

                                    <option value = '-' >-</option>
                                    <option value = '1'>1</option>
                                    <option value = '2'>2</option>
                                    <option value = '3'>3</option>
                                    <option value = '4'>4</option>

                                </select>

                            </div>

                            <div class="span3">

                                <label>{{ trans('base.modal.adults') }}</label>

                                <select  id="select_adults" class="selectpicker span8">

                                    <option value = '1'>1</option>
                                    <option value = '2'>2</option>
                                    <option value = '3'>3</option>
                                    <option value = '4'>4</option>
                                    <option value = '5'>5</option>

                                </select>

                            </div>

                            <div class="span3">

                                <div class="row-fluid">

                                    <label for="from">{{ trans('base.modal.сheckin') }}</label>

                                </div>

                                <div class="control-group">

                                    <div class="row-fluid input-append">

                                        <input class="span9 date-picker" id="from" name="from" type="text" data-date-format="dd-mm-yyyy" />

                                        <span class="add-on" ><i class="icon-calendar"></i></span>

                                    </div>

                                </div>

                             </div>

                            <div class="span3">

                                <div class="row-fluid">

                                    <label for="to">{{ trans('base.modal.сheckout') }}</label>

                                </div>

                                <div class="control-group">

                                    <div class="row-fluid input-append">

                                        <input class="span9 date-picker" id="to" name="to" type="text" data-date-format="dd-mm-yyyy" />

                                        <span class="add-on"><i class="icon-calendar"></i></span>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="row-fluid">

                            <div class="span6">

                                <div class="control-group">

                                    <div class="input-group input-group-sm">

                                        <input required type="text" name="name"  class="form-control span12" placeholder="{{ trans('base.modal.name') }}" aria-describedby="sizing-addon3">

                                    </div>

                                    <div class="input-group input-group-sm">

                                        <input type="email" required name="email" id="email" class="form-control span12" placeholder="E-mail" aria-describedby="sizing-addon3">

                                    </div>

                                </div>

                            </div>

                            <div class="span6">

                                <div class="control-group">

                                    <div class="input-group input-group-sm">

                                        <input type="number" required  name="tel"  id="tel" class="form-control span12" placeholder="{{ trans('base.modal.telnumber') }}" aria-describedby="sizing-addon3">

                                    </div>

                                    <div class="input-group input-group-sm">

                                        <input type="text" name="comment" id="comment" class="form-control span12" placeholder="{{ trans('base.modal.comment') }}" aria-describedby="sizing-addon3">

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="modal-footer" style="text-align: center">

                        <input name="submit" class="btn btn-primary" id="submit" tabindex="5" value="{{ trans('base.modal.bookingbutton') }}" type="submit">

                    </div>

                    <div id="token" style="display: none">{{csrf_token()}}</div>

                </div>

            </form>

        </div>

    </div>
    {{-- /Modal --}}

@stop