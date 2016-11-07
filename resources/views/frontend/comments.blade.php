@extends('ws-app')

@section('content')

    {{-- start: Page Title --}}
    <div id="page-title">

        <div id="page-title-inner">

            {{-- start: Container --}}
            <div class="container">

                <h2>{{ trans('base.comments') }}</h2>

            </div>
            {{-- end: Container  --}}

        </div>

    </div>
    {{-- end: Page Title --}}

    <div class="container">

        {{--start: Row --}}
        @foreach($comments as $comment)
            <div class="row">

                <div class="title comments-title clearfix">
                    <div class="span4"><h3 class="comments-name">{{ $comment -> user_name }}</h3></div>
                    <div class="span4 center"><h4 class="comments-date"><i class="fa fa-calendar" aria-hidden="true"></i>{{ date('d-m-Y ',strtotime($comment -> date)) }}</h4></div>
                    <div class="span4"><h3 class="comments-rank">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </h3></div>
                </div>
                <div class="comments-text">
                    {!! $comment -> comment !!}
                </div>

            </div>
        @endforeach
        {{--end: Row--}}


        {{--start: Row --}}
        <div class="row">

            <!-- start: Contact Form -->
                <div class="title"><h3>{{ trans('base.contact.form') }}</h3></div>

                <!-- start: Contact Form -->
                <div id="comments-form" class="clearfix">

                    <form method="POST" id="commenting-form" class="r-comments" action="">

                            <div class="span5">
                                <div class="clearfix">
                                    <label for="name"><span>{{ trans('base.contact.name') }}:</span></label>
                                    <div class="input">
                                        <input tabindex="1" required size="25" id="name" name="user_name" type="text" value="" class="input-xlarge">
                                    </div>
                                </div>

                                <div class="clearfix">
                                    <label for="phone"><span>{{ trans('base.contact.phone') }}:</span></label>
                                    <div class="input">
                                        <input tabindex="1" size="25" id="phone" name="user_phone" type="number" value="" class="input-xlarge">
                                    </div>
                                </div>

                                <div class="clearfix">
                                    <label for="email"><span>{{ trans('base.contact.mail') }}:</span></label>
                                    <div class="input">
                                        <input tabindex="2" size="25" id="email" name="user_email" type="email" value="" class="input-xlarge">
                                    </div>
                                </div>

                                <div class="clearfix">
                                    <label for="rank"><span>{{ trans('base.contact.rank') }}:</span></label>
                                    <div class="input">
                                        <select name="rate" class="form-control input-xlarge">
                                            <option value="5">{{ trans('base.contact.rank.verygood') }}</option>
                                            <option value="4">{{ trans('base.contact.rank.good') }}</option>
                                            <option value="3">{{ trans('base.contact.rank.normal') }}</option>
                                            <option value="2">{{ trans('base.contact.rank.bad') }}</option>
                                            <option value="1">{{ trans('base.contact.rank.verybad') }}</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="span7">
                                <div class="clearfix">
                                    <label for="message"><span>{{ trans('base.contact.text') }}:</span></label>
                                    <div class="input">
                                        <textarea tabindex="3" class="input-xlarge" id="message" name="comment" required rows="8"></textarea>
                                    </div>
                                </div>

                                <div class="actions">
                                    <button tabindex="3"  id="comment-send" type="submit" class="btn btn-booking btn-primary btn-succes btn-large comment">{{ trans('base.contact.button') }}</button>
                                </div>

                            </div>
                            <input type="hidden" name="_method" value='post'/>
                            <input type="hidden" name="_token" value="{{csrf_token()}}"/>

                    </form>

                </div>
                <!-- end: Contact Form -->

            <!-- end: Contact Form -->

        </div>
        {{--end: Row--}}

    </div>

@stop