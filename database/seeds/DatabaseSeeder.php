<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;
use App\Models\Article;
use App\Models\Category;
use App\Models\Lang;
use App\Models\User;
use App\Models\Text;

class DatabaseSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		Model::unguard();

		// $this->call('UserTableSeeder');
		$this->call('ArticlesSeeder');
        $this->call('CategoriesSeeder');
        $this->call('LangsSeeder');
        $this->call('UsersSeeder');
        $this->call('TextsSeeder');

	}

}

class ArticlesSeeder extends Seeder {

	public function run()
	{
		DB::table('Articles')->delete();

        Article::create([
            'category_id' => 1,
            'title' => 'Яскравий відпочинок у Карпатах|Unforgettable rest in Carpathians|Красочный отдых в Карпатах',
            'description' => 'Опис готелю -> Всі меблі в котеджі дерев\'яні, hand made Територія дуже зелена,багато фруктових і хвойних дерев,квітів,декоративних насаджень. В котеджі дуже багато старовинних автентичних речей.Відстань до центральної дороги-600 метрів,до річки 200.Тихе і затишне місце|Description -> All the furniture in the Cottages wooden, hand made. Area is very green, lots of fruit and pine trees, flowers and ornamental plants. The cottage has a lot of old things authentic. Distance from the main road, 600 meters to the river 200.Tyhe and comfortable place|Описание отеля -> Вся мебель в коттедже деревянные, hand made Территория очень зеленая, много фруктовых и хвойных деревьев, цветов, декоративных насаждений. В коттедже очень много старинных аутентичных вещей.Расстояние до центральной дороги-600 метров, до реки 200.Тихое и уютное место',
            'imgs' => '',
            'date' => DB::raw('CURRENT_TIMESTAMP'),
            'active' => true,
        ]);
        
		Article::create([
		    'category_id' => 2,
            'title' => 'Номер 1|Room 1|Номер 1',
            'description' => 'Просторий номер, розташований на першому поверсі.
                Зручності у номері:
                •	Спальне ліжко
                •	Приліжкова тумбочка
                •	Шафа для одягу
                •	Телевізор
                •	Санвузол з душовою кабіною
                |Spacious room located on the first floor.
                Amenities in the room:
                • Bed
                • Bedside table
                • Wardrobe
                • TV
                • A bathroom with shower|Просторный номер, расположенный на первом этаже.
                Удобства в номере:
                • Cпальная кровать
                • Прикроватная тумбочка
                • Шкаф для одежды
                • Телевизор
                • Санузел с душевой кабиной',
            'price' => 200,
            'quantity' => 1,
            'imgs' => '[]',
            'date' => DB::raw('CURRENT_TIMESTAMP'),
            'active' => true,
		]);
        Article::create([
            'category_id' => 2,
            'title' => 'Номер 2|Room 2|Номер 2',
            'description' => 'Просторий номер з балконом, розташований на другому поверсі.
                Зручності у номері:
                •	Спальне ліжко
                •	Приліжкова тумбочка
                •	Шафа для одягу
                •	Телевізор
                •	Санвузол з душовою кабіною розташований в коридорі
                •	Балкон
                |Spacious room with balcony located on the second floor.
                Amenities in the room:
                • Bed
                • Bedside table
                • Wardrobe
                • TV
                • A bathroom with shower in the corridor
                • Balcony|Просторный номер с балконом, расположенный на втором этаже.
                Удобства в номере:
                • Cпальная кровать
                • Прикроватная тумбочка
                • Шкаф для одежды
                • Телевизор
                • Санузел с душевой кабиной в коридоре
                • Балкон',
            'price' => 300,
            'quantity' => 1,
            'imgs' => '[]',
            'date' => DB::raw('CURRENT_TIMESTAMP'),
            'active' => true,
        ]);
        Article::create([
            'category_id' => 2,
            'title' => 'Номер 3|Room 3|Номер 3',
            'description' => 'Просторий номер з балконом, розташований на другому поверсі.
                Зручності у номері:
                •	Спальне ліжко
                •	Приліжкова тумбочка
                •	Шафа для одягу
                •	Телевізор
                •	Санвузол з душовою кабіною
                •	Балкон
                Можливі додаткові місця - розкладний диван або крісло.
                |Spacious room with balcony located on the second floor.
                Amenities in the room:
                • Bed
                • Bedside table
                • Wardrobe
                • TV
                • A bathroom with shower
                • Balcony
                There are extra beds - fold-out sofa or chair.|Просторный номер с балконом, расположенный на втором этаже.
                Удобства в номере:
                • Cпальная кровать
                • Прикроватная тумбочка
                • Шкаф для одежды
                • Телевизор
                • Санузел с душевой кабиной
                • Балкон
                Возможны дополнительные места — раскладной диван или кресла.',
            'price' => 300,
            'quantity' => 1,
            'imgs' => '[]',
            'date' => DB::raw('CURRENT_TIMESTAMP'),
            'active' => true,
        ]);
        Article::create([
            'category_id' => 2,
            'title' => 'Номер 4|Room 4|Номер 4',
            'description' => 'Просторий номер з балконом, розташований на другому поверсі.
                Зручності у номері:
                •	Спальне ліжко
                •	Приліжкова тумбочка
                •	Шафа для одягу
                •	Телевізор
                •	Санвузол з душовою кабіною
                •	Балкон
                Можливі додаткові місця - розкладний диван або крісло.
                |Spacious room with balcony located on the second floor.
                Amenities in the room:
                • Bed
                • Bedside table
                • Wardrobe
                • TV
                • A bathroom with shower
                • Balcony
                There are extra beds - fold-out sofa or chair.|Просторный номер с балконом, расположенный на втором этаже.
                Удобства в номере:
                • Cпальная кровать
                • Прикроватная тумбочка
                • Шкаф для одежды
                • Телевизор
                • Санузел с душевой кабиной
                • Балкон
                Возможны дополнительные места — раскладной диван или кресла.',
            'price' => 300,
            'quantity' => 1,
            'imgs' => '[]',
            'date' => DB::raw('CURRENT_TIMESTAMP'),
            'active' => true,
        ]);
        Article::create([
            'category_id' => 2,
            'title' => 'Другий поверх в будинку господарів|The second floor in the house owners|Второй этаж в доме хозяев',
            'description' => 'Дві просторих кімнати з балконами та зі зручностями в номерах.Також доступний просторий хол з меблями з лози.
                Зручності у номері:
                •	Спальне ліжко
                •	Приліжкова тумбочка
                •	Шафа для одягу
                •	Телевізор
                •	Санвузол з душовою кабіною
                •	Балкон
                Можливі додаткові місця - розкладний диван або крісло.
                |Two spacious rooms with balconies and with facilities available in rooms.And spacious lounge with furniture made of twigs.
                Amenities in the room:
                • Bed
                • Bedside table
                • Wardrobe
                • TV
                • A bathroom with shower
                • Balcony
                There are extra beds - fold-out sofa or chair.|Две просторные комнаты с балконами и с удобствами в номерах. Такожt доступен просторный холл с мебелью из лозы.
                Удобства в номере:
                • Cпальная кровать
                • Прикроватная тумбочка
                • Шкаф для одежды
                • Телевизор
                • Санузел с душевой кабиной
                • Балкон
                Возможны дополнительные места — раскладной диван или кресла.',
            'price' => 400,
            'quantity' => 1,
            'imgs' => '[]',
            'date' => DB::raw('CURRENT_TIMESTAMP'),
            'active' => true,
        ]);


        Article::create([
		    'category_id' => 3,
            'title' => 'Сауна з контрасним басейном|Sauna with cold pool|Сауна с контрастным бассейном',
            'description' => 'Сауна з контрасним басейном и кімнатой відпочинку з каміном|Sauna with a cold pool and a lounge with a fireplace|Сауна с контрастным бассейном и комнатой отдыха с камином',
            'price' => 100,
            'imgs' => '',
            'date' => DB::raw('CURRENT_TIMESTAMP'),
            'active' => true,
		]);
        Article::create([
        'category_id' => 3,
        'title' => 'Зона відпочинку|Rest area|Зона отдыха',
        'description' => 'На території готелю є  є альтанка і мангал|At the hotel there is a gazebo and barbecue|На территории отеля есть есть беседка и мангал',
        'price' => "",
        'imgs' => '',
        'date' => DB::raw('CURRENT_TIMESTAMP'),
        'active' => true,
    ]);
        Article::create([
            'category_id' => 3,
            'title' => 'Дитячий майданчик|Playground|Детская площадка',
            'description' => 'На території готелю для дітей є батут,дерев\'яні будиночки, пісочниця, гірка, качелі.|The hotel is a trampoline for kids, wooden houses, sandbox, slide, swing|На территории отеля для детей есть батут, деревянные домики, песочница, горка, качели',
            'price' => "",
            'imgs' => '',
            'date' => DB::raw('CURRENT_TIMESTAMP'),
            'active' => true,
        ]);

        Article::create([
            'category_id' => 3,
            'title' => 'Парковка|Parking|Парковка',
            'description' => 'Опис парковки|Description parking|Описание парковки',
            'price' => '',
            'imgs' => '',
            'date' => DB::raw('CURRENT_TIMESTAMP'),
            'active' => true,
        ]);
        Article::create([
            'category_id' => 3,
            'title' => 'Домашня кухня|Home cuisine|Домашняя кухня',
            'description' => 'За домовленістю доступна поглуга приготування смачної домашньої їжі.|By arrangement service available cooking delicious homemade food.|По договоренности доступна услуга приготовления вкусной домашней еды.',
            'price' => "",
            'imgs' => '',
            'date' => DB::raw('CURRENT_TIMESTAMP'),
            'active' => true,
        ]);
        Article::create([
            'category_id' => 3,
            'title' => 'Розваги|Entertainment|Развлечения',
            'description' => 'У Карпатах добрий відпочинок можна спланувати і зорганізувати у будь-яку пору року. Адже природа Карпат унікальна у кожну пору – від весни до осені, від осені до весни. Екскурсії|In the Carpathians good rest can plan and organize in any season. After all, nature Carpathians unique in every season - from spring to autumn, from autumn to spring. Excursions|В Карпатах хороший отдых можно спланировать и организовать в любое время года. Ведь природа Карпат уникальна в каждую пору - от весны до осени, с осени до весны. Экскурсии',
            'price' => "",
            'imgs' => '',
            'date' => DB::raw('CURRENT_TIMESTAMP'),
            'active' => true,
        ]);


        Article::create([
            'category_id' => 7,
            'name' => 'meta.hotel',
            'title' => 'Seo для Готелю|SEO for Hotel|Seo для Отеля',
            'meta_title' => 'META Title|META Title EN|META Title RU',
            'meta_description' => 'Meta_description|META Description EN|META Description RU',
            'meta_keywords' => 'META Keywords, META Title, META Title1|META KeywordsEN|META Keywords RU',
            'active' => true,
        ]);
        Article::create([
            'category_id' => 7,
            'name' => 'meta.rooms',
            'title' => 'Seo для Номерів|SEO for Rooms|Seo для Номеров',
            'meta_title' => 'META Title|META Title EN|META Title RU',
            'meta_description' => 'Meta_description|META Description EN|META Description RU',
            'meta_keywords' => 'META Keywords, META Title, META Title1|META KeywordsEN|META Keywords RU',
            'active' => true,
        ]);
        Article::create([
            'category_id' => 7,
            'name' => 'meta.services',
            'title' => 'Seo для Послуг|SEO for Services|Seo для Услуг',
            'meta_title' => 'META Title|META Title EN|META Title RU',
            'meta_description' => 'Meta_description|META Description EN|META Description RU',
            'meta_keywords' => 'META Keywords, META Title, META Title1|META KeywordsEN|META Keywords RU',
            'active' => true,
        ]);
        Article::create([
            'category_id' => 7,
            'name' => 'meta.gallery',
            'title' => 'Seo для Галереї|SEO for Gallery|Seo для Галлереи',
            'meta_title' => 'META Title|META Title EN|META Title RU',
            'meta_description' => 'Meta_description|META Description EN|META Description RU',
            'meta_keywords' => 'META Keywords, META Title, META Title1|META KeywordsEN|META Keywords RU',
            'active' => true,
        ]);
        Article::create([
            'category_id' => 7,
            'name' => 'meta.contact',
            'title' => 'Seo для Контактів|SEO for Contacts|Seo для Контактов',
            'meta_title' => 'META Title|META Title EN|META Title RU',
            'meta_description' => 'Meta_description|META Description EN|META Description RU',
            'meta_keywords' => 'META Keywords, META Title, META Title1|META KeywordsEN|META Keywords RU',
            'active' => true,
        ]);
	}

}

class CategoriesSeeder extends Seeder {

    public function run()
    {
       DB::table('Categories')->delete();

       Category::create([
            'id' => "1",
            'name' => 'Готель',
            'link' => 'hotel',
            'fields' => '["title","description"]',
        ]);

        Category::create([
            'id' => "2",
            'name' => 'Кімнати',
            'link' => 'rooms',
            'fields' => '["title","description","gallery","price","quantity","priority","active"]',
        ]);

        Category::create([
            'id' => "3",
            'name' => 'Послуги',
            'link' => 'services',
            'fields' => '["title","description","gallery","priority","active","price"]',
        ]);

       /* Category::create([
            'id' => "4",
            'name' => 'Події',
            'link' => 'events',
            'fields' => '["title","description","gallery","date","priority","active"]',
        ]);*/

        Category::create([
            'id' => "5",
            'name' => 'Галерея',
            'link' => 'gallery',
            'fields' => '["title","description","gallery","priority","active"]',
        ]);

        Category::create([
            'id' => "6",
            'name' => 'Слайдер',
            'link' => 'slider',
            'fields' => '["title","description","gallery","priority","active"]',
        ]);
        Category::create([
            'id' => "7",
            'name' => 'Seo',
            'link' => 'seo',
            'fields' => '["title","meta_title","meta_description","meta_keywords"]',
        ]);
    }

}

class LangsSeeder extends Seeder {

    public function run()
    {
        DB::table('langs')->delete();

        Lang::create([
            'lang' => 'ua',
        ]);

        Lang::create([
            'lang' => 'en',
        ]);

        Lang::create([
            'lang' => 'ru',
        ]);

    }

}

class UsersSeeder extends Seeder {

    public function run()
    {
        DB::table('Users')->delete();

        User::create([
            'name' => 'admin',
            'email' => 'raun@i.ua',
            'password' => '$2y$10$KCR5WbIyUHXgZbsthDHHHOJgtdcmTA2Um.eXHbRwnvBWRgcJN/0O.',
        ]);

        User::create([
            'name' => 'root',
            'email' => 'webdesignstudio@gmail.com',
            'password' => '$2y$10$BdvnOe9NrHYCkipriMsBRuvfVrOGQI0oi7XzPHQSQ42pUpJGg4Q6y',
        ]);
    }

}
class TextsSeeder extends Seeder {

    public function run()
    {
        DB::table('Texts')->delete();

        Text::create([
            'page_id' => '0',
            'name' => "header.tel1",
            'type' => 'input',
            'title' => 'Контактний номер телефону 1',
            'description' => '+380993376614',
            'priority' => '3',
            'lang_active' => "0",
        ]);
        Text::create([
            'page_id' => '0',
            'name' => "header.tel2",
            'type' => 'input',
            'title' => 'Контактний номер телефону 2',
            'description' => '+380989317270',
            'priority' => '3',
            'lang_active' => "0",
        ]);

        Text::create([
            'page_id' => '0',
            'name' => "header.address",
            'type' => 'input',
            'title' => 'Адреса',
            'description' => 'с.Микуличин, вул В.Стефаника,10  Івано-Франківська обл',
            'priority' => '2',
            'lang_active' => "1",
        ]);

        Text::create([
            'page_id' => '0',
            'name' => "header.mail",
            'type' => 'input',
            'title' => 'Пошта',
            'description' => 'exampl@gmail.com',
            'priority' => '1',
            'lang_active' => "0",
        ]);
        Text::create([
            'page_id' => '0',
            'name' => "header.skype",
            'type' => 'input',
            'title' => 'Skype',
            'description' => 'oleg271979',
            'priority' => '1',
            'lang_active' => "0",
        ]);
        Text::create([
            'page_id' => '0',
            'name' => "header.map",
            'type' => 'textarea',
            'title' => 'Карта',
            'description' => '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2645.956374052273!2d24.565680916077145!3d48.45736657925024!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4737242d62ff7891%3A0x6029765d2fe79efc!2z0LLRg9C70LjRhtGPINCS0LDRgdC40LvRjyDQodGC0LXRhNCw0L3QuNC60LAsIDEwLCDQr9GA0LXQvNGH0LUsINCG0LLQsNC90L4t0KTRgNCw0L3QutGW0LLRgdGM0LrQsCDQvtCx0LvQsNGB0YLRjCwgNzg1MDA!5e0!3m2!1sru!2sua!4v1476890330371" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>',
            'priority' => '0',
            'lang_active' => "1",
        ]);
        Text::create([
            'page_id' => '0',
            'name' => "header.coordinates",
            'type' => 'textarea',
            'title' => 'Координати',
            'description' => '48°24\'18.1", 24°35\'59.7"',
            'priority' => '0',
            'lang_active' => "0",
        ]);
    }

}


