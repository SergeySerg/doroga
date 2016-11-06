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
        <div class="row">

            <div class="title comments-title clearfix">
                <div class="span4"><h3 class="comments-name">Василь Щедрий</h3></div>
                <div class="span4 center"><h4 class="comments-date">22 липня 2016</h4></div>
                <div class="span4"><h3 class="comments-rank">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </h3></div>
            </div>
            <div class="comments-text">
                <p>Дуже дякую всьому персоналу "Великої Ведмедиці" за прекрасний літній відпочинок!!! За чудову гостинність, доброзичливість та ввічливість, особливо подякувати Ігорю і Наталі офіціантці. Нам з чоловіком було комфортно, смачно і спокійно. Сервіс - на найвищому рівні. Зразу скажу, що мінусів ми не знайшли. А тепер по порядку: місцерозташування відмінне, територія готелю дуже затишна, є все для комфортного відпочинку (бесідки, де можна пообідати, гойдалки, літні крісла та лежаки, де можна відпочити і почитати, басейн), місця досить для всіх, а також на території багато різноманітних дерев, кущів та квітів, таке враження, що знаходишся в саду. Відразу видно, що до всього тут відносятться з любов"ю. Номери прекрасні, чисті (прибирали кожен день), затишні з прекрасним дизайном, є сейф, холодильник, посуд, чайник, халати, тапки, чудове ліжко з прекраною білизною, диван для відпочинку, телевізор. Великий балкон, прикрашений квітами, з меблями. З балкона прекрасний вид на гори (кімната№6). Столова оформлена, як ресторан. Смачні сніданки (великі), обіди і вечері. Особлива подяка готелю за подарунок до мого дня народження, бо саме в цей день ми прибули на відпочинок))) Всім рекомендую цей готель!!!</p>
            </div>

        </div>
        {{--end: Row--}}


        {{--start: Row --}}
        <div class="row">

            <!-- start: Contact Form -->
                <div class="title"><h3>{{ trans('base.contact.form') }}</h3></div>

                <!-- start: Contact Form -->
                <div id="comments-form" class="clearfix">

                    <form method="post" class="r-comments" action="">

                            <div class="span5">
                                <div class="clearfix">
                                    <label for="name"><span>{{ trans('base.contact.name') }}:</span></label>
                                    <div class="input">
                                        <input tabindex="1" size="25" id="name" name="name" type="text" value="" class="input-xlarge">
                                    </div>
                                </div>

                                <div class="clearfix">
                                    <label for="phone"><span>{{ trans('base.contact.phone') }}:</span></label>
                                    <div class="input">
                                        <input tabindex="1" size="25" id="phone" name="phone" type="text" value="" class="input-xlarge">
                                    </div>
                                </div>

                                <div class="clearfix">
                                    <label for="email"><span>{{ trans('base.contact.mail') }}:</span></label>
                                    <div class="input">
                                        <input tabindex="2" size="25" id="email" name="email" type="text" value="" class="input-xlarge">
                                    </div>
                                </div>

                                <div class="clearfix">
                                    <label for="rank"><span>{{ trans('base.contact.rank') }}:</span></label>
                                    <div class="input">
                                        <select name="rank" class="form-control input-xlarge">
                                            <option value="1">{{ trans('base.contact.rank.verybad') }}</option>
                                            <option value="2">{{ trans('base.contact.rank.bad') }}</option>
                                            <option value="3">{{ trans('base.contact.rank.normal') }}</option>
                                            <option value="4">{{ trans('base.contact.rank.good') }}</option>
                                            <option value="5">{{ trans('base.contact.rank.verygood') }}</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="span7">
                                <div class="clearfix">
                                    <label for="message"><span>{{ trans('base.contact.text') }}:</span></label>
                                    <div class="input">
                                        <textarea tabindex="3" class="input-xlarge" id="message" name="body" rows="8"></textarea>
                                    </div>
                                </div>

                                <div class="actions">
                                    <button tabindex="3" type="submit" class="btn btn-booking btn-primary btn-succes btn-large">{{ trans('base.contact.button') }}</button>
                                </div>
                            </div>

                    </form>

                </div>
                <!-- end: Contact Form -->

            <!-- end: Contact Form -->

        </div>
        {{--end: Row--}}

    </div>

@stop