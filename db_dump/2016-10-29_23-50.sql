-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 29 2016 г., 23:49
-- Версия сервера: 5.5.50
-- Версия PHP: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `doroga-dodomu_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `imgs` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `name`, `title`, `description`, `price`, `quantity`, `imgs`, `priority`, `date`, `meta_title`, `meta_description`, `meta_keywords`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, '', 'Яскравий відпочинок у Карпатах|Unforgettable rest in Carpathians|Красочный отдых в Карпатах|', '<p><span style="font-size:20px">&nbsp; &nbsp; &nbsp;Котедж в Карпатах повинен обов&#39;язково перебувати в горах і бути серед лісу, інакше це не буде котедж в Карпатах з Великої літери, а просто будиночок, яких багато в наших великих і маленьких містах. Але нам дуже пощастило, тому що наш комплекс розташований в горах в оточенні лісу і це дає можливість відчути, що таке справжній відпочинок в Карпатах. Тільки у нас є апартаменти з гуцульськими печами, також апартаменти з камінами і знаходимося серед лісу і гір.&nbsp;Всі меблі в котеджі дерев&#39;яні, hand made.Територія дуже зелена,багато фруктових і хвойних дерев,квітів,декоративних насаджень. В котеджі дуже багато старовинних автентичних речей.Відстань до центральної дороги-600 метрів,до річки 200.Тихе і затишне місце.</span></p>|<p><span style="font-size:20px">Cottage in the Carpathian Mountains must be located in the mountains and being in the woods, otherwise it will not be for sale in the Carpathian Mountains with a capital letter, but just a house, which many in our towns and cities. But we were very lucky, because our complex is located in the mountains surrounded by woods, and it gives the opportunity to experience what a real vacation in the Carpathian Mountains. Only we have the apartment with huzul furnaces, and apartments with fireplaces, and are among the forests and mountains.&nbsp;All the furniture in the Cottages wooden, hand made. Area is very green, lots of fruit and pine trees, flowers and ornamental plants. The cottage has a lot of old things authentic. Distance from the main road, 600 meters to the river 200.Tyhe and comfortable place</span></p>|<p><span style="font-size:20px">Коттедж в Карпатах должен обязательно находиться в горах и быть среди леса, иначе это не будет коттедж в Карпатах с Большой буквы, а просто домик, которых много в наших больших и маленьких городах. Но нам очень повезло, потому что наш комплекс &nbsp;расположен в горах в окружении леса и это дает возможность ощутить, что такое настоящий отдых в Карпатах. Только у нас есть апартаменты с гуцульскими печами, также апартаменты с каминами и находимся среди леса и гор.&nbsp; Вся мебель в коттедже деревянные, hand made.Территория очень зеленая, много фруктовых и хвойных деревьев, цветов, декоративных насаждений. В коттедже очень много старинных аутентичных вещей.Расстояние до центральной дороги-600 метров, до реки 200.Тихое и уютное место</span></p>|', '', 0, '[]', 0, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-10-23 10:47:28'),
(2, 2, '', 'Номер 1|Room 1|Номер 1|', '<p>Просторий номер, розташований на першому поверсі. Зручності у номері:</p>\r\n\r\n<ul>\r\n	<li>&bull; спальне ліжко</li>\r\n	<li>&bull; приліжкова тумбочка</li>\r\n	<li>&bull; шафа для одягу</li>\r\n	<li>&bull; телевізор</li>\r\n	<li>&bull; санвузол з душовою кабіною</li>\r\n</ul>|<p>Spacious room located on the first floor. Amenities in the room: &bull; Bed &bull; Bedside table &bull; Wardrobe &bull; TV &bull; A bathroom with shower</p>|<p>Просторный номер, расположенный на первом этаже. Удобства в номере: &bull; Cпальная кровать &bull; Прикроватная тумбочка &bull; Шкаф для одежды &bull; Телевизор &bull; Санузел с душевой кабиной</p>|', 'з 01.10.2016 по 31.10.2016<h3> 200 грн</h3> з 01.10.2017 по 31.10.2017<h3> 250 грн</h3>|from 01.10.2016 to 31.10.2016 200 uah from 01.10.2017 to 31.10.2017 300 uah|с 01.10.2016 по 31.10.2016 200 грн с 01.10.2017 по 31.10.2017 300 грн|', 1, '[{"full":"upload\\/articles\\/2\\/full\\/1.jpg","min":"upload\\/articles\\/2\\/min\\/1.jpg"},{"full":"upload\\/articles\\/2\\/full\\/2.jpg","min":"upload\\/articles\\/2\\/min\\/2.jpg"},{"full":"upload\\/articles\\/2\\/full\\/3.jpg","min":"upload\\/articles\\/2\\/min\\/3.jpg"},{"full":"upload\\/articles\\/2\\/full\\/4.jpg","min":"upload\\/articles\\/2\\/min\\/4.jpg"},{"full":"upload\\/articles\\/2\\/full\\/5.jpg","min":"upload\\/articles\\/2\\/min\\/5.jpg"},{"full":"upload\\/articles\\/2\\/full\\/6.jpg","min":"upload\\/articles\\/2\\/min\\/6.jpg"},{"full":"upload\\/articles\\/2\\/full\\/7.jpg","min":"upload\\/articles\\/2\\/min\\/7.jpg"},{"full":"upload\\/articles\\/2\\/full\\/8.jpg","min":"upload\\/articles\\/2\\/min\\/8.jpg"},{"full":"upload\\/articles\\/2\\/full\\/9.jpg","min":"upload\\/articles\\/2\\/min\\/9.jpg"},{"full":"upload\\/articles\\/2\\/full\\/91.jpg","min":"upload\\/articles\\/2\\/min\\/91.jpg"},{"full":"upload\\/articles\\/2\\/full\\/92.jpg","min":"upload\\/articles\\/2\\/min\\/92.jpg"}]', 6, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-10-29 11:05:38'),
(3, 2, '', 'Номер 2|Room 2|Номер 2|', '<p>Просторий номер з балконом, розташований на другому поверсі. Зручності у номері:</p>\r\n\r\n<ul>\r\n	<li>&bull; спальне ліжко</li>\r\n	<li>&bull; приліжкова тумбочка</li>\r\n	<li>&bull; шафа для одягу</li>\r\n	<li>&bull; телевізор</li>\r\n	<li>&bull; санвузол з душовою кабіною розташований в коридорі</li>\r\n	<li>&bull; балкон</li>\r\n</ul>|<p>Spacious room with balcony located on the second floor. Amenities in the room: &bull; Bed &bull; Bedside table &bull; Wardrobe &bull; TV &bull; A bathroom with shower in the corridor &bull; Balcony</p>|<p>Просторный номер с балконом, расположенный на втором этаже. Удобства в номере: &bull; Cпальная кровать &bull; Прикроватная тумбочка &bull; Шкаф для одежды &bull; Телевизор &bull; Санузел с душевой кабиной в коридоре &bull; Балкон</p>|', 'з 01.10.2016 по 31.10.2016<h3> 300 грн</h3> з 01.10.2017 по 31.10.2017<h3> 350 грн</h3>|from 01.10.2016 to 31.10.2016 250 uah from 01.10.2017 to 31.10.2017 350 uah|c 01.10.2016 по 31.10.2016 250 грн c 01.10.2017 по 31.10.2017 350 грн|', 1, '[{"full":"upload\\/articles\\/3\\/full\\/11.jpg","min":"upload\\/articles\\/3\\/min\\/11.jpg"},{"full":"upload\\/articles\\/3\\/full\\/3.jpg","min":"upload\\/articles\\/3\\/min\\/3.jpg"},{"full":"upload\\/articles\\/3\\/full\\/4.jpg","min":"upload\\/articles\\/3\\/min\\/4.jpg"},{"full":"upload\\/articles\\/3\\/full\\/5.jpg","min":"upload\\/articles\\/3\\/min\\/5.jpg"},{"full":"upload\\/articles\\/3\\/full\\/6.jpg","min":"upload\\/articles\\/3\\/min\\/6.jpg"},{"full":"upload\\/articles\\/3\\/full\\/7.jpg","min":"upload\\/articles\\/3\\/min\\/7.jpg"},{"full":"upload\\/articles\\/3\\/full\\/8.jpg","min":"upload\\/articles\\/3\\/min\\/8.jpg"},{"full":"upload\\/articles\\/3\\/full\\/9.jpg","min":"upload\\/articles\\/3\\/min\\/9.jpg"},{"full":"upload\\/articles\\/3\\/full\\/91.jpg","min":"upload\\/articles\\/3\\/min\\/91.jpg"},{"full":"upload\\/articles\\/3\\/full\\/92.jpg","min":"upload\\/articles\\/3\\/min\\/92.jpg"}]', 5, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-10-29 11:06:08'),
(4, 2, '', 'Номер 3|Room 3|Номер 3|', '<p>Просторий номер з балконом, розташований на другому поверсі. Зручності у номері:</p>\r\n\r\n<ul>\r\n	<li>&bull; спальне ліжко</li>\r\n	<li>&bull; приліжкова тумбочка</li>\r\n	<li>&bull; шафа для одягу</li>\r\n	<li>&bull; телевізор</li>\r\n	<li>&bull; санвузол з душовою кабіною</li>\r\n	<li>&bull; балкон&nbsp;</li>\r\n</ul>\r\n\r\n<p>Можливі додаткові місця - розкладний диван або крісло.&nbsp;</p>|<p>Spacious room with balcony located on the second floor. Amenities in the room: &bull; Bed &bull; Bedside table &bull; Wardrobe &bull; TV &bull; A bathroom with shower &bull; Balcony There are extra beds - fold-out sofa or chair.</p>|<p>Просторный номер с балконом, расположенный на втором этаже. Удобства в номере: &bull; Cпальная кровать &bull; Прикроватная тумбочка &bull; Шкаф для одежды &bull; Телевизор &bull; Санузел с душевой кабиной &bull; Балкон Возможны дополнительные места &mdash; раскладной диван или кресла.</p>|', 'з 01.10.2016 по 31.10.2016<h3> 400 грн</h3> з 01.10.2017 по 31.10.2017<h3> 450 грн</h3>|from 01.10.2016 to 31.10.2016 350 uah from 01.10.2017 to 31.10.2017 400 uah|c 01.10.2016 по 31.10.2016 350 грн c 01.10.2017 по 31.10.2017 400 грн|', 1, '[{"full":"upload\\/articles\\/4\\/full\\/111.jpg","min":"upload\\/articles\\/4\\/min\\/111.jpg"},{"full":"upload\\/articles\\/4\\/full\\/1112.jpg","min":"upload\\/articles\\/4\\/min\\/1112.jpg"},{"full":"upload\\/articles\\/4\\/full\\/1113.jpg","min":"upload\\/articles\\/4\\/min\\/1113.jpg"},{"full":"upload\\/articles\\/4\\/full\\/3.jpg","min":"upload\\/articles\\/4\\/min\\/3.jpg"},{"full":"upload\\/articles\\/4\\/full\\/4.jpg","min":"upload\\/articles\\/4\\/min\\/4.jpg"},{"full":"upload\\/articles\\/4\\/full\\/5.jpg","min":"upload\\/articles\\/4\\/min\\/5.jpg"},{"full":"upload\\/articles\\/4\\/full\\/6.jpg","min":"upload\\/articles\\/4\\/min\\/6.jpg"},{"full":"upload\\/articles\\/4\\/full\\/7.jpg","min":"upload\\/articles\\/4\\/min\\/7.jpg"},{"full":"upload\\/articles\\/4\\/full\\/8.jpg","min":"upload\\/articles\\/4\\/min\\/8.jpg"},{"full":"upload\\/articles\\/4\\/full\\/9.jpg","min":"upload\\/articles\\/4\\/min\\/9.jpg"},{"full":"upload\\/articles\\/4\\/full\\/91.jpg","min":"upload\\/articles\\/4\\/min\\/91.jpg"},{"full":"upload\\/articles\\/4\\/full\\/92.jpg","min":"upload\\/articles\\/4\\/min\\/92.jpg"}]', 4, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-10-29 11:06:53'),
(5, 2, '', 'Номер 4|Room 4|Номер 4|', '<p>Просторий номер з балконом, розташований на другому поверсі. Зручності у номері:</p>\r\n\r\n<ul>\r\n	<li>&bull; спальне ліжко</li>\r\n	<li>&bull; приліжкова тумбочка</li>\r\n	<li>&bull; шафа для одягу</li>\r\n	<li>&bull; телевізор</li>\r\n	<li>&bull; санвузол з душовою кабіною</li>\r\n	<li>&bull; балкон&nbsp;</li>\r\n</ul>\r\n\r\n<p>Можливі додаткові місця - розкладний диван або крісло.&nbsp;</p>|<p>Spacious room with balcony located on the second floor. Amenities in the room: &bull; Bed &bull; Bedside table &bull; Wardrobe &bull; TV &bull; A bathroom with shower &bull; Balcony There are extra beds - fold-out sofa or chair.</p>|<p>Просторный номер с балконом, расположенный на втором этаже. Удобства в номере: &bull; Cпальная кровать &bull; Прикроватная тумбочка &bull; Шкаф для одежды &bull; Телевизор &bull; Санузел с душевой кабиной &bull; Балкон Возможны дополнительные места &mdash; раскладной диван или кресла.</p>|', 'з 01.10.2016 по 31.10.2016<h3> 500 грн</h3> з 01.10.2017 по 31.10.2017<h3> 550 грн</h3>|from 01.10.2016 to 31.10.2016 350 uah from 01.10.2017 to 31.10.2017 400 uah|c 01.10.2016 по 31.10.2016 350 грн c 01.10.2017 по 31.10.2017 400 грн|', 1, '[{"full":"upload\\/articles\\/5\\/full\\/1111.jpg","min":"upload\\/articles\\/5\\/min\\/1111.jpg"},{"full":"upload\\/articles\\/5\\/full\\/11112.jpg","min":"upload\\/articles\\/5\\/min\\/11112.jpg"},{"full":"upload\\/articles\\/5\\/full\\/11113.jpg","min":"upload\\/articles\\/5\\/min\\/11113.jpg"},{"full":"upload\\/articles\\/5\\/full\\/11114.jpg","min":"upload\\/articles\\/5\\/min\\/11114.jpg"},{"full":"upload\\/articles\\/5\\/full\\/3.jpg","min":"upload\\/articles\\/5\\/min\\/3.jpg"},{"full":"upload\\/articles\\/5\\/full\\/4.jpg","min":"upload\\/articles\\/5\\/min\\/4.jpg"},{"full":"upload\\/articles\\/5\\/full\\/5.jpg","min":"upload\\/articles\\/5\\/min\\/5.jpg"},{"full":"upload\\/articles\\/5\\/full\\/6.jpg","min":"upload\\/articles\\/5\\/min\\/6.jpg"},{"full":"upload\\/articles\\/5\\/full\\/7.jpg","min":"upload\\/articles\\/5\\/min\\/7.jpg"},{"full":"upload\\/articles\\/5\\/full\\/8.jpg","min":"upload\\/articles\\/5\\/min\\/8.jpg"},{"full":"upload\\/articles\\/5\\/full\\/9.jpg","min":"upload\\/articles\\/5\\/min\\/9.jpg"},{"full":"upload\\/articles\\/5\\/full\\/91.jpg","min":"upload\\/articles\\/5\\/min\\/91.jpg"},{"full":"upload\\/articles\\/5\\/full\\/92.jpg","min":"upload\\/articles\\/5\\/min\\/92.jpg"}]', 3, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-10-29 11:14:02'),
(6, 2, '', 'Другий поверх в будинку господарів|The second floor in the house owners|Второй этаж в доме хозяев|', '<p>Дві просторих кімнати з балконами та зі зручностями в номерах.Також доступний просторий хол з меблями з лози. Зручності у номері:</p>\r\n\r\n<ul>\r\n	<li>&bull; спальне ліжко</li>\r\n	<li>&bull; приліжкова тумбочка</li>\r\n	<li>&bull; шафа для одягу</li>\r\n	<li>&bull; телевізор</li>\r\n	<li>&bull; санвузол з душовою кабіною</li>\r\n	<li>&bull; балкон&nbsp;</li>\r\n</ul>\r\n\r\n<p>Можливі додаткові місця - розкладний диван або крісло.</p>|<p>Two spacious rooms with balconies and with facilities available in rooms.And spacious lounge with furniture made of twigs. Amenities in the room: &bull; Bed &bull; Bedside table &bull; Wardrobe &bull; TV &bull; A bathroom with shower &bull; Balcony There are extra beds - fold-out sofa or chair.</p>|<p>Две просторные комнаты с балконами и с удобствами в номерах. Такожt доступен просторный холл с мебелью из лозы. Удобства в номере: &bull; Cпальная кровать &bull; Прикроватная тумбочка &bull; Шкаф для одежды &bull; Телевизор &bull; Санузел с душевой кабиной &bull; Балкон Возможны дополнительные места &mdash; раскладной диван или кресла.</p>|', 'з 01.10.2016 по 31.10.2016<h3> 600 грн</h3> з 01.10.2017 по 31.10.2017<h3> 650 грн</h3>|from 01.10.2016 to 31.10.2016 450 uah from 01.10.2017 to 31.10.2017 500 uah|c 01.10.2016 по 31.10.2016 450 грн c 01.10.2017 по 31.10.2017 500 грн|', 1, '[{"full":"upload\\/articles\\/6\\/full\\/dx1.jpg","min":"upload\\/articles\\/6\\/min\\/dx1.jpg"},{"full":"upload\\/articles\\/6\\/full\\/dx2.jpg","min":"upload\\/articles\\/6\\/min\\/dx2.jpg"},{"full":"upload\\/articles\\/6\\/full\\/dx3.jpg","min":"upload\\/articles\\/6\\/min\\/dx3.jpg"},{"full":"upload\\/articles\\/6\\/full\\/dx4.jpg","min":"upload\\/articles\\/6\\/min\\/dx4.jpg"},{"full":"upload\\/articles\\/6\\/full\\/dx5.jpg","min":"upload\\/articles\\/6\\/min\\/dx5.jpg"},{"full":"upload\\/articles\\/6\\/full\\/dx6.jpg","min":"upload\\/articles\\/6\\/min\\/dx6.jpg"}]', 0, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-10-29 11:16:40'),
(7, 3, '', 'Сауна з контрасним басейном|Sauna with cold pool|Сауна с контрастным бассейном|', '<p>Сауна з контрасним басейном та кімнатою відпочинку з каміном.&nbsp;Фінська сауна (на дровах)&nbsp;з контарастним басейном, підігрівом підлоги, великою зручною кімнатою відпочинку, м&#39;якими меблями, супутниковим телебаченням. Приймаємо замовлення до 15 осіб.&nbsp;Працюємо цілодобово.</p>|<p>Sauna with a cold pool and a lounge with a fireplace</p>|<p>Сауна с контрастным бассейном и комнатой отдыха с камином</p>|', '100|100|100|', 0, '[{"full":"upload\\/articles\\/7\\/full\\/s01.jpg","min":"upload\\/articles\\/7\\/min\\/s01.jpg"},{"full":"upload\\/articles\\/7\\/full\\/s02.jpg","min":"upload\\/articles\\/7\\/min\\/s02.jpg"},{"full":"upload\\/articles\\/7\\/full\\/s1.jpg","min":"upload\\/articles\\/7\\/min\\/s1.jpg"},{"full":"upload\\/articles\\/7\\/full\\/s11.jpg","min":"upload\\/articles\\/7\\/min\\/s11.jpg"},{"full":"upload\\/articles\\/7\\/full\\/s13.jpg","min":"upload\\/articles\\/7\\/min\\/s13.jpg"},{"full":"upload\\/articles\\/7\\/full\\/s14.jpg","min":"upload\\/articles\\/7\\/min\\/s14.jpg"},{"full":"upload\\/articles\\/7\\/full\\/s15.jpg","min":"upload\\/articles\\/7\\/min\\/s15.jpg"},{"full":"upload\\/articles\\/7\\/full\\/s16.jpg","min":"upload\\/articles\\/7\\/min\\/s16.jpg"},{"full":"upload\\/articles\\/7\\/full\\/s17.jpg","min":"upload\\/articles\\/7\\/min\\/s17.jpg"},{"full":"upload\\/articles\\/7\\/full\\/s18.jpg","min":"upload\\/articles\\/7\\/min\\/s18.jpg"}]', 6, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-10-29 11:45:17'),
(8, 3, '', 'Зона відпочинку|Rest area|Зона отдыха|', '<p>Для відпочинку наших гостей доступні альтанка і мангал що розміщені на подвір&#39;ї.Літо в Карпатах - рай для тих, хто мріє відпочити від шуму мегаполісів та мирської суєти, подихати чистим гірським повітрям, оздоровитися душею і тілом, а також сповна насолодитися тишею та красою природи. Нереально красиві гори в туманному серпанку, вкриті шатром з вікових смерек та сосен, зелені полонини, що нагадують альпійські луки, дзвінкі струмки, бурхливі водоспади, швидкі гірські річки та озера - це все потрібно побачити на власні очі, тому неодмінно варто приїхати на відпочинок у Карпати влітку.&nbsp;</p>|<p>At the hotel there is a gazebo and barbecue</p>|<p>На территории отеля есть есть беседка и мангал</p>|', '|||', 0, '[{"full":"upload\\/articles\\/8\\/full\\/ddd.jpg","min":"upload\\/articles\\/8\\/min\\/ddd.jpg"},{"full":"upload\\/articles\\/8\\/full\\/s2.jpg","min":"upload\\/articles\\/8\\/min\\/s2.jpg"},{"full":"upload\\/articles\\/8\\/full\\/www.jpg","min":"upload\\/articles\\/8\\/min\\/www.jpg"},{"full":"upload\\/articles\\/8\\/full\\/zona-vidpochynku03.png","min":"upload\\/articles\\/8\\/min\\/zona-vidpochynku03.png"}]', 5, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-10-29 11:53:39'),
(9, 3, '', 'Дитячий майданчик|Playground|Детская площадка|', '<p>На території готелю для дітей є батут,дерев&#39;яні будиночки, пісочниця, гірка, качелі.&nbsp;Дитячий майданчик і дзвін голосів Лунає далеко так щирий, І бігає швидко юрба дітлахів, Маленьких таких і красивих. Хвилює мій зір те дитинство ясне, Яке я давно вже пройшов, Тепер вже ніколи мене не прийме, Тому, що в дорослість пішов. Дивлюсь на дітей, на візочки, на мам, Як гарно то все виглядає, Гойдаються гойдалки, тим дітлахам Сміятись лише й вистачає.</p>|<p>The hotel is a trampoline for kids, wooden houses, sandbox, slide, swing</p>|<p>На территории отеля для детей есть батут, деревянные домики, песочница, горка, качели</p>|', '|||', 0, '[{"full":"upload\\/articles\\/9\\/full\\/dut1.jpg","min":"upload\\/articles\\/9\\/min\\/dut1.jpg"},{"full":"upload\\/articles\\/9\\/full\\/dut2.jpg","min":"upload\\/articles\\/9\\/min\\/dut2.jpg"}]', 0, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-10-29 12:13:10'),
(10, 3, '', 'Парковка|Parking|Парковка|', '<p>До послуг наших клієнтів доступне безкоштовне паркомісце на території садиби.&nbsp;Найчастіше водії від незнання відмінностей між паркуванням і стоянкою порушують ПДР. Це загрожує штрафом , а при систематичних попередженнях можлива навіть адміністративна відповідальність . Особливо це стосується деяких країн , де транспортний засіб можна ставити тільки у відведених для цього місцях. Порушення правил може призвести до депортації з подальшою забороною на в&rsquo;їзд до цієї держави .</p>|<p>Description parking</p>|<p>Описание парковки</p>|', '|||', 0, '[{"full":"upload\\/articles\\/10\\/full\\/g.jpg","min":"upload\\/articles\\/10\\/min\\/g.jpg"},{"full":"upload\\/articles\\/10\\/full\\/gg.jpg","min":"upload\\/articles\\/10\\/min\\/gg.jpg"}]', 0, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-10-29 12:19:13'),
(11, 3, '', 'Домашня кухня|Home cuisine|Домашняя кухня|', '<p>За домовленістю доступна поглуга приготування смачної домашньої їжі.&nbsp;Колорит Закарпатської кухні вражає навіть обізнаних гурманів.&nbsp;Є страви, які дійшли до нас із давнини, і не зустрічаються в жодному меню інших народів - підбивані пасулі, лопатки і ріпа, дзьобачки. Закарпатці дуже люблять запашну і гострувату їжу і активно використовують червону паприку &quot;папригу&quot; і чорний перець &quot;попер&quot;, а також часник, цибулю, кмин, і всяку пряну зелень.</p>|<p>By arrangement service available cooking delicious homemade food.</p>|<p>По договоренности доступна услуга приготовления вкусной домашней еды.</p>|', '80|80|80|', 0, '[{"full":"upload\\/articles\\/11\\/full\\/a.jpg","min":"upload\\/articles\\/11\\/min\\/a.jpg"},{"full":"upload\\/articles\\/11\\/full\\/a1.jpg","min":"upload\\/articles\\/11\\/min\\/a1.jpg"},{"full":"upload\\/articles\\/11\\/full\\/aa.jpg","min":"upload\\/articles\\/11\\/min\\/aa.jpg"},{"full":"upload\\/articles\\/11\\/full\\/aaa.jpg","min":"upload\\/articles\\/11\\/min\\/aaa.jpg"},{"full":"upload\\/articles\\/11\\/full\\/aaaa.jpg","min":"upload\\/articles\\/11\\/min\\/aaaa.jpg"},{"full":"upload\\/articles\\/11\\/full\\/aaaaa.jpg","min":"upload\\/articles\\/11\\/min\\/aaaaa.jpg"},{"full":"upload\\/articles\\/11\\/full\\/aaaaaa.jpg","min":"upload\\/articles\\/11\\/min\\/aaaaaa.jpg"}]', 0, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-10-29 12:10:38'),
(12, 3, '', 'Розваги|Entertainment|Развлечения|', '<p>У Карпатах чимало розваг на будь-яку пору року та будь-яку погоду, якими б можна було заповнити час: від ранкової чашки кави на дерев&#39;яній веранді до вечірньої чашки глінтвейну біля каміну. Наприклад, самостійні екскурсійні поїздки. Кожне карпатське селище/містечко унікальне: у Квасах (Закарпатська обл.), скажімо, більше 200 мінеральних джерел, якими можна гуляти по кілька годин на день, взявши на озброєння кружку та бутерброди. &quot;Мінеральних&quot; &mdash; значить, газованих, зі специфічним кольором, смаком та унікальними властивостями.</p>|<p>In the Carpathians good rest can plan and organize in any season. After all, nature Carpathians unique in every season - from spring to autumn, from autumn to spring. Excursions</p>|<p>В Карпатах хороший отдых можно спланировать и организовать в любое время года. Ведь природа Карпат уникальна в каждую пору - от весны до осени, с осени до весны. Экскурсии</p>|', '|||', 0, '[{"full":"upload\\/articles\\/12\\/full\\/z.jpg","min":"upload\\/articles\\/12\\/min\\/z.jpg"},{"full":"upload\\/articles\\/12\\/full\\/zz.jpg","min":"upload\\/articles\\/12\\/min\\/zz.jpg"},{"full":"upload\\/articles\\/12\\/full\\/zzz.jpg","min":"upload\\/articles\\/12\\/min\\/zzz.jpg"},{"full":"upload\\/articles\\/12\\/full\\/zzzz.jpg","min":"upload\\/articles\\/12\\/min\\/zzzz.jpg"},{"full":"upload\\/articles\\/12\\/full\\/zzzzz.jpg","min":"upload\\/articles\\/12\\/min\\/zzzzz.jpg"}]', 0, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-10-29 12:02:13'),
(13, 7, 'meta.hotel', 'Seo для Готелю|SEO for Hotel|Seo для Отеля', '', '', 0, '', 0, '0000-00-00 00:00:00', 'META Title|META Title EN|META Title RU', 'Meta_description|META Description EN|META Description RU', 'META Keywords, META Title, META Title1|META KeywordsEN|META Keywords RU', 1, '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(14, 7, 'meta.rooms', 'Seo для Номерів|SEO for Rooms|Seo для Номеров', '', '', 0, '', 0, '0000-00-00 00:00:00', 'META Title|META Title EN|META Title RU', 'Meta_description|META Description EN|META Description RU', 'META Keywords, META Title, META Title1|META KeywordsEN|META Keywords RU', 1, '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(15, 7, 'meta.services', 'Seo для Послуг|SEO for Services|Seo для Услуг', '', '', 0, '', 0, '0000-00-00 00:00:00', 'META Title|META Title EN|META Title RU', 'Meta_description|META Description EN|META Description RU', 'META Keywords, META Title, META Title1|META KeywordsEN|META Keywords RU', 1, '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(16, 7, 'meta.gallery', 'Seo для Галереї|SEO for Gallery|Seo для Галлереи', '', '', 0, '', 0, '0000-00-00 00:00:00', 'META Title|META Title EN|META Title RU', 'Meta_description|META Description EN|META Description RU', 'META Keywords, META Title, META Title1|META KeywordsEN|META Keywords RU', 1, '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(17, 7, 'meta.contact', 'Seo для Контактів|SEO for Contacts|Seo для Контактов', '', '', 0, '', 0, '0000-00-00 00:00:00', 'META Title|META Title EN|META Title RU', 'Meta_description|META Description EN|META Description RU', 'META Keywords, META Title, META Title1|META KeywordsEN|META Keywords RU', 1, '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(18, 6, '', 'Cлайд 1|Slide 1|Слайд 1|', '<p>Територія котеджу &quot;Дорога додому&quot;</p>|<p>&nbsp;</p>\r\n\r\n<p>The territory of cottage &quot;The Way Home&quot;.</p>|<p>&nbsp;</p>\r\n\r\n<p>Территории коттеджа &quot;Дорога домой&quot;.</p>|', '', 0, '[{"full":"upload\\/articles\\/18\\/full\\/12.jpg","min":"upload\\/articles\\/18\\/min\\/12.jpg"}]', 0, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-10-23 10:04:03', '2016-10-23 10:09:10'),
(19, 6, '', 'Слайд 2|Slide 2|Слайд 2|', '<p>Дитячий майданчик</p>|<p>&nbsp;</p>\r\n\r\n<p>Playground</p>|<p>&nbsp;</p>\r\n\r\n<p>Детская площадка</p>|', '', 0, '[{"full":"upload\\/articles\\/19\\/full\\/22.jpg","min":"upload\\/articles\\/19\\/min\\/22.jpg"}]', 0, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-10-23 10:11:49', '2016-10-23 10:12:01'),
(20, 6, '', 'Котедж "Дорога додому"|Cottage "The Way Home"|Коттедж "Дорога домой"|', '|||', '', 0, '[{"full":"upload\\/articles\\/20\\/full\\/33.jpg","min":"upload\\/articles\\/20\\/min\\/33.jpg"}]', 3, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-10-23 10:14:16', '2016-10-23 10:15:21'),
(21, 6, '', 'Слайд 4|Slide 4|Слайд 4|', '|<h2 style="font-style:italic">Будь-яка назва&nbsp;</h2>||', '', 0, '[{"full":"upload\\/articles\\/21\\/full\\/4.jpg","min":"upload\\/articles\\/21\\/min\\/4.jpg"}]', 0, '0000-00-00 00:00:00', '|||', '|||', '|||', 0, '2016-10-23 12:07:35', '2016-10-23 12:07:47'),
(22, 5, '', 'Альбом 1|Album 1|Альбом 1|', '|||', '', 0, '[{"full":"upload\\/articles\\/22\\/full\\/12.jpg","min":"upload\\/articles\\/22\\/min\\/12.jpg"},{"full":"upload\\/articles\\/22\\/full\\/22.jpg","min":"upload\\/articles\\/22\\/min\\/22.jpg"},{"full":"upload\\/articles\\/22\\/full\\/33.jpg","min":"upload\\/articles\\/22\\/min\\/33.jpg"},{"full":"upload\\/articles\\/22\\/full\\/altanka.jpg","min":"upload\\/articles\\/22\\/min\\/altanka.jpg"},{"full":"upload\\/articles\\/22\\/full\\/dut1.jpg","min":"upload\\/articles\\/22\\/min\\/dut1.jpg"}]', 2, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-10-25 19:28:03', '2016-10-25 19:30:09'),
(23, 5, '', 'Альбом 2|Album 1|Альбом 2|', '|||', '', 0, '[{"full":"upload\\/articles\\/23\\/full\\/dx3.jpg","min":"upload\\/articles\\/23\\/min\\/dx3.jpg"},{"full":"upload\\/articles\\/23\\/full\\/dx6.jpg","min":"upload\\/articles\\/23\\/min\\/dx6.jpg"},{"full":"upload\\/articles\\/23\\/full\\/Gory.jpg","min":"upload\\/articles\\/23\\/min\\/Gory.jpg"},{"full":"upload\\/articles\\/23\\/full\\/kitch.jpg","min":"upload\\/articles\\/23\\/min\\/kitch.jpg"},{"full":"upload\\/articles\\/23\\/full\\/sauna2.jpg","min":"upload\\/articles\\/23\\/min\\/sauna2.jpg"}]', 0, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-10-25 19:28:55', '2016-10-25 19:31:10');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fields` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `link`, `fields`, `created_at`, `updated_at`) VALUES
(1, 'Готель', 'hotel', '["title","description"]', '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(2, 'Кімнати', 'rooms', '["title","description","gallery","price","quantity","priority","active"]', '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(3, 'Послуги', 'services', '["title","description","gallery","priority","active","price"]', '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(5, 'Галерея', 'gallery', '["title","description","gallery","priority","active"]', '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(6, 'Слайдер', 'slider', '["title","description","gallery","priority","active"]', '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(7, 'Seo', 'seo', '["title","meta_title","meta_description","meta_keywords"]', '2016-10-20 10:36:44', '2016-10-20 10:36:44');

-- --------------------------------------------------------

--
-- Структура таблицы `langs`
--

CREATE TABLE IF NOT EXISTS `langs` (
  `id` int(10) unsigned NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `langs`
--

INSERT INTO `langs` (`id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'ua', '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(2, 'en', '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(3, 'ru', '2016-10-20 10:36:44', '2016-10-20 10:36:44');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_14_124503_create_articles_table', 1),
('2016_09_14_124813_create_categories_table', 1),
('2016_09_14_124942_create_langs_table', 1),
('2016_10_06_124518_create_texts_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `texts`
--

CREATE TABLE IF NOT EXISTS `texts` (
  `id` int(10) unsigned NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `lang_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `texts`
--

INSERT INTO `texts` (`id`, `page_id`, `name`, `type`, `title`, `description`, `priority`, `lang_active`, `created_at`, `updated_at`) VALUES
(1, 0, 'header.tel1', 'input', 'Контактний номер телефону 1', '+38 (099) 337-66-14', 3, 0, '2016-10-20 10:36:44', '2016-10-25 17:51:24'),
(2, 0, 'header.tel2', 'input', 'Контактний номер телефону 2', '+38 (098) 931-72-70', 3, 0, '2016-10-20 10:36:44', '2016-10-25 17:51:45'),
(3, 0, 'header.address', 'input', 'Адреса', 'Івано-Франківська область<br>Яремчанський район<br> 				с. Микуличин<br> вул. В. Стефанника, 10|Ivano-Frankivsk region<br> Yaremche district <br>Mikulichin <br> street. V. Stefannyka 10|Ивано-Франковская область <br> Яремчанский район <br> с. Микуличин <br> ул. В. Стефанника, 10|', 2, 1, '2016-10-20 10:36:44', '2016-10-25 18:09:15'),
(4, 0, 'header.mail', 'input', 'Пошта', 'exampl@gmail.com', 1, 0, '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(5, 0, 'header.skype', 'input', 'Skype', 'oleg271979', 1, 0, '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(6, 0, 'header.map', 'textarea', 'Карта', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2645.721895755456!2d24.570356815272557!3d48.461865279250645!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x473725cdf781e4d3%3A0x356600da925d049!2z0LLRg9C70LjRhtGPINCS0LDRgdC40LvRjyDQodGC0LXRhNCw0L3QuNC60LAsIDEwLCDQr9GA0LXQvNGH0LUsINCG0LLQsNC90L4t0KTRgNCw0L3QutGW0LLRgdGM0LrQsCDQvtCx0LvQsNGB0YLRjCwgNzg1MDA!5e0!3m2!1sru!2sua!4v1477482307586" width="1200" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>|<p><iframe frameborder="0" height="450" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2645.956374052273!2d24.565680916077145!3d48.45736657925024!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4737242d62ff7891%3A0x6029765d2fe79efc!2z0LLRg9C70LjRhtGPINCS0LDRgdC40LvRjyDQodGC0LXRhNCw0L3QuNC60LAsIDEwLCDQr9GA0LXQvNGH0LUsINCG0LLQsNC90L4t0KTRgNCw0L3QutGW0LLRgdGM0LrQsCDQvtCx0LvQsNGB0YLRjCwgNzg1MDA!5e0!3m2!1sru!2sua!4v1476890330371" style="border:0" width="600"></iframe></p>|<p><iframe frameborder="0" height="450" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2645.956374052273!2d24.565680916077145!3d48.45736657925024!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4737242d62ff7891%3A0x6029765d2fe79efc!2z0LLRg9C70LjRhtGPINCS0LDRgdC40LvRjyDQodGC0LXRhNCw0L3QuNC60LAsIDEwLCDQr9GA0LXQvNGH0LUsINCG0LLQsNC90L4t0KTRgNCw0L3QutGW0LLRgdGM0LrQsCDQvtCx0LvQsNGB0YLRjCwgNzg1MDA!5e0!3m2!1sru!2sua!4v1476890330371" style="border:0" width="600"></iframe></p>|', 0, 1, '2016-10-20 10:36:44', '2016-10-26 08:46:50'),
(7, 0, 'header.coordinates', 'textarea', 'Координати', '48.406249, 24.598146', 0, 0, '2016-10-20 10:36:44', '2016-10-29 12:28:49'),
(8, 0, 'header.tel_stat', 'input', 'Контактний номер (стаціонарний)', '+38 (03434) 3-91-31', 4, 0, '2016-10-25 17:53:51', '2016-10-25 18:06:28');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'root', 'webdesignstudio@gmail.com', '$2y$10$BdvnOe9NrHYCkipriMsBRuvfVrOGQI0oi7XzPHQSQ42pUpJGg4Q6y', NULL, '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(3, 'admin', 'raun@i.ua', '$2y$10$u2PLb3xax.EpSo/T4FivPOiQ7qEYZWh4q7VCzktM0dvtyq0OOdo6a', '2TmyumUi1TDpb0lnlnuzSrhl85lN54U3ye2UTuDAYRKL5Y6PKUwUyGnJQFcx', '2016-10-20 12:37:46', '2016-10-20 12:53:34');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `langs`
--
ALTER TABLE `langs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Индексы таблицы `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `langs`
--
ALTER TABLE `langs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
