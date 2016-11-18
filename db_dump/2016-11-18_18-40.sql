-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 18 2016 г., 19:40
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
  `price` text COLLATE utf8_unicode_ci,
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `name`, `title`, `description`, `price`, `quantity`, `imgs`, `priority`, `date`, `meta_title`, `meta_description`, `meta_keywords`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, '', 'Яскравий відпочинок у Карпатах|Unforgettable rest in Carpathians|Красочный отдых в Карпатах|', '<p><span style="font-size:20px">Садиба&quot;Дорога додому&quot; радо вітає Вас!</span></p>\r\n\r\n<p><span style="font-size:20px">Дерев&#39;яний котедж з камінним залом подарує вам відчуття тепла,комфорту та домашнього затишку.</span></p>\r\n\r\n<p><span style="font-size:20px">Старовинні автентичні речі,предмети побуту,знаряддя праці, які зберігаються в нашій садибі,допоможуть відчути самобутню культуру та колорит &nbsp;Гуцульського краю.Не залишать байдужими вас і наші дерев&#39;яні меблі,створені власними руками...&nbsp;</span></p>\r\n\r\n<p><span style="font-size:20px">Вам сподобається ранкова чашечка ароматної кави на гойдалці з виглядом на алею голубих ялин чи вечірній зігріваючий глінтвейн, біля каміна,ковток якого створить настрій для романтичної вечері з коханою людиною чи для веселих посиденьок в компанії хороших друзів!</span></p>\r\n\r\n<p><span style="font-size:20px">Вам захочеться повертатися до нас знову і знову, а ми-завжди раді будемо вас бачити!</span></p>\r\n\r\n<p><span style="font-size:20px">Гарного відпочинку і будьте, як вдома!</span></p>|<p><span style="font-size:20px">Cottage in the Carpathian Mountains must be located in the mountains and being in the woods, otherwise it will not be for sale in the Carpathian Mountains with a capital letter, but just a house, which many in our towns and cities. But we were very lucky, because our complex is located in the mountains surrounded by woods, and it gives the opportunity to experience what a real vacation in the Carpathian Mountains. Only we have the apartment with huzul furnaces, and apartments with fireplaces, and are among the forests and mountains.&nbsp;All the furniture in the Cottages wooden, hand made. Area is very green, lots of fruit and pine trees, flowers and ornamental plants. The cottage has a lot of old things authentic. Distance from the main road, 600 meters to the river 200.Tyhe and comfortable place</span></p>|<p><span style="font-size:20px">Коттедж в Карпатах должен обязательно находиться в горах и быть среди леса, иначе это не будет коттедж в Карпатах с Большой буквы, а просто домик, которых много в наших больших и маленьких городах. Но нам очень повезло, потому что наш комплекс &nbsp;расположен в горах в окружении леса и это дает возможность ощутить, что такое настоящий отдых в Карпатах. Только у нас есть апартаменты с гуцульскими печами, также апартаменты с каминами и находимся среди леса и гор.&nbsp; Вся мебель в коттедже деревянные, hand made.Территория очень зеленая, много фруктовых и хвойных деревьев, цветов, декоративных насаждений. В коттедже очень много старинных аутентичных вещей.Расстояние до центральной дороги-600 метров, до реки 200.Тихое и уютное место</span></p>|', '|||', 0, '[]', 0, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-11-07 07:38:56'),
(2, 2, '', 'Номер 1|Room 1|Номер 1|', '<p>Комфортний&nbsp;номер, розташований на першому поверсі. Зручності у номері:</p>\r\n\r\n<ul>\r\n	<li>&bull; спальне ліжко</li>\r\n	<li>&bull; приліжкова тумбочка</li>\r\n	<li>&bull; шафа для одягу</li>\r\n	<li>&bull; телевізор</li>\r\n	<li>&bull; санвузол з душовою кабіною</li>\r\n	<li>&bull; безкоштовний Wi-Fi</li>\r\n</ul>|<p>Spacious room located on the first floor. Amenities in the room: &bull; Bed &bull; Bedside table &bull; Wardrobe &bull; TV &bull; A bathroom with shower</p>|<p>Просторный номер, расположенный на первом этаже. Удобства в номере: &bull; Cпальная кровать &bull; Прикроватная тумбочка &bull; Шкаф для одежды &bull; Телевизор &bull; Санузел с душевой кабиной</p>|', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>листопад</td>\r\n			<td>400 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>|<p>from 01.10.2016 to 31.10.2016 200 uah from 01.10.2017 to 31.10.2017 300 uah</p>|<p>с 01.10.2016 по 31.10.2016 200 грн с 01.10.2017 по 31.10.2017 300 грн</p>|', 1, '[{"full":"upload\\/articles\\/2\\/full\\/TRO_4563-min.JPG","min":"upload\\/articles\\/2\\/min\\/TRO_4563-min.JPG"},{"full":"upload\\/articles\\/2\\/full\\/TRO_4564-min.JPG","min":"upload\\/articles\\/2\\/min\\/TRO_4564-min.JPG"},{"full":"upload\\/articles\\/2\\/full\\/TRO_4565-min.JPG","min":"upload\\/articles\\/2\\/min\\/TRO_4565-min.JPG"},{"full":"upload\\/articles\\/2\\/full\\/TRO_4567-min.JPG","min":"upload\\/articles\\/2\\/min\\/TRO_4567-min.JPG"}]', 7, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-11-18 13:10:12'),
(3, 2, '', 'Номер 2|Room 2|Номер 2|', '<p>Затишний номер з балконом, розташований на другому поверсі. Зручності у номері:</p>\r\n\r\n<ul>\r\n	<li>&bull; спальне ліжко</li>\r\n	<li>&bull; приліжкова тумбочка</li>\r\n	<li>&bull; шафа для одягу</li>\r\n	<li>&bull; телевізор</li>\r\n	<li>&bull; санвузол з душовою кабіною розташований в коридорі</li>\r\n	<li>&bull; балкон</li>\r\n	<li>&bull; безкоштовний Wi-Fi</li>\r\n</ul>|<p>Spacious room with balcony located on the second floor. Amenities in the room: &bull; Bed &bull; Bedside table &bull; Wardrobe &bull; TV &bull; A bathroom with shower in the corridor &bull; Balcony</p>|<p>Просторный номер с балконом, расположенный на втором этаже. Удобства в номере: &bull; Cпальная кровать &bull; Прикроватная тумбочка &bull; Шкаф для одежды &bull; Телевизор &bull; Санузел с душевой кабиной в коридоре &bull; Балкон</p>|', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>листопад</td>\r\n			<td>400 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>|<p>from 01.10.2016 to 31.10.2016 250 uah from 01.10.2017 to 31.10.2017 350 uah</p>|<p>c 01.10.2016 по 31.10.2016 250 грн c 01.10.2017 по 31.10.2017 350 грн</p>|', 1, '[{"full":"upload\\/articles\\/3\\/full\\/TRO_4543-min.JPG","min":"upload\\/articles\\/3\\/min\\/TRO_4543-min.JPG"},{"full":"upload\\/articles\\/3\\/full\\/TRO_4544-min.JPG","min":"upload\\/articles\\/3\\/min\\/TRO_4544-min.JPG"},{"full":"upload\\/articles\\/3\\/full\\/TRO_4546-min.JPG","min":"upload\\/articles\\/3\\/min\\/TRO_4546-min.JPG"}]', 6, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-11-18 13:12:43'),
(4, 2, '', 'Номер 3|Room 3|Номер 3|', '<p>Просторий сімейний номер з балконом, розташований на другому поверсі. Зручності у номері:</p>\r\n\r\n<ul>\r\n	<li>&bull; спальне ліжко</li>\r\n	<li>&bull; додаткове місце - розкладний диван</li>\r\n	<li>&bull; приліжкова тумбочка</li>\r\n	<li>&bull; шафа для одягу</li>\r\n	<li>&bull; телевізор</li>\r\n	<li>&bull; санвузол з душовою кабіною</li>\r\n	<li>&bull; балкон&nbsp;</li>\r\n	<li>&bull; безкоштовний Wi-Fi</li>\r\n</ul>|<p>Spacious room with balcony located on the second floor. Amenities in the room: &bull; Bed &bull; Bedside table &bull; Wardrobe &bull; TV &bull; A bathroom with shower &bull; Balcony There are extra beds - fold-out sofa or chair.</p>|<p>Просторный номер с балконом, расположенный на втором этаже. Удобства в номере: &bull; Cпальная кровать &bull; Прикроватная тумбочка &bull; Шкаф для одежды &bull; Телевизор &bull; Санузел с душевой кабиной &bull; Балкон Возможны дополнительные места &mdash; раскладной диван или кресла.</p>|', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>листопад</td>\r\n			<td>400 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>|<p>from 01.10.2016 to 31.10.2016 350 uah from 01.10.2017 to 31.10.2017 400 uah</p>|<p>c 01.10.2016 по 31.10.2016 350 грн c 01.10.2017 по 31.10.2017 400 грн</p>|', 1, '[{"full":"upload\\/articles\\/4\\/full\\/TRO_4547-min.JPG","min":"upload\\/articles\\/4\\/min\\/TRO_4547-min.JPG"},{"full":"upload\\/articles\\/4\\/full\\/TRO_4549-min.JPG","min":"upload\\/articles\\/4\\/min\\/TRO_4549-min.JPG"},{"full":"upload\\/articles\\/4\\/full\\/TRO_4550-min.JPG","min":"upload\\/articles\\/4\\/min\\/TRO_4550-min.JPG"},{"full":"upload\\/articles\\/4\\/full\\/TRO_4552-min.JPG","min":"upload\\/articles\\/4\\/min\\/TRO_4552-min.JPG"},{"full":"upload\\/articles\\/4\\/full\\/TRO_4553-min.JPG","min":"upload\\/articles\\/4\\/min\\/TRO_4553-min.JPG"}]', 5, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-11-18 13:13:11'),
(5, 2, '', 'Номер 4|Room 4|Номер 4|', '<p>Просторий сімейний номер з балконом, розташований на другому поверсі. Зручності у номері:</p>\r\n\r\n<ul>\r\n	<li>&bull; спальне ліжко</li>\r\n	<li>&bull; додаткове місце - розкладний диван</li>\r\n	<li>&bull; приліжкова тумбочка</li>\r\n	<li>&bull; шафа для одягу</li>\r\n	<li>&bull; телевізор</li>\r\n	<li>&bull; санвузол з душовою кабіною</li>\r\n	<li>&bull; балкон&nbsp;</li>\r\n	<li>&bull; безкоштовний Wi-Fi</li>\r\n</ul>|<p>Spacious room with balcony located on the second floor. Amenities in the room: &bull; Bed &bull; Bedside table &bull; Wardrobe &bull; TV &bull; A bathroom with shower &bull; Balcony There are extra beds - fold-out sofa or chair.</p>|<p>Просторный номер с балконом, расположенный на втором этаже. Удобства в номере: &bull; Cпальная кровать &bull; Прикроватная тумбочка &bull; Шкаф для одежды &bull; Телевизор &bull; Санузел с душевой кабиной &bull; Балкон Возможны дополнительные места &mdash; раскладной диван или кресла.</p>|', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>листопад</td>\r\n			<td>400 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>|<p>from 01.10.2016 to 31.10.2016 350 uah from 01.10.2017 to 31.10.2017 400 uah</p>|<p>c 01.10.2016 по 31.10.2016 350 грн c 01.10.2017 по 31.10.2017 400 грн</p>|', 1, '[{"full":"upload\\/articles\\/5\\/full\\/TRO_4555-min.JPG","min":"upload\\/articles\\/5\\/min\\/TRO_4555-min.JPG"},{"full":"upload\\/articles\\/5\\/full\\/TRO_4557-min.JPG","min":"upload\\/articles\\/5\\/min\\/TRO_4557-min.JPG"},{"full":"upload\\/articles\\/5\\/full\\/TRO_4558-min.JPG","min":"upload\\/articles\\/5\\/min\\/TRO_4558-min.JPG"},{"full":"upload\\/articles\\/5\\/full\\/TRO_4559-min.JPG","min":"upload\\/articles\\/5\\/min\\/TRO_4559-min.JPG"},{"full":"upload\\/articles\\/5\\/full\\/TRO_4560-min.JPG","min":"upload\\/articles\\/5\\/min\\/TRO_4560-min.JPG"}]', 4, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-11-18 13:13:35'),
(6, 2, '', 'Другий поверх в будинку господарів|The second floor in the house owners|Второй этаж в доме хозяев|', '<p>Дві просторих кімнати з балконами та зі зручностями в номерах.Також доступний просторий хол з меблями з лози. Зручності у номері:</p>\r\n\r\n<ul>\r\n	<li>&bull; спальне ліжко</li>\r\n	<li>&bull; приліжкова тумбочка</li>\r\n	<li>&bull; шафа для одягу</li>\r\n	<li>&bull; телевізор</li>\r\n	<li>&bull; санвузол з душовою кабіною</li>\r\n	<li>&bull; балкон&nbsp;</li>\r\n	<li>&bull; безкоштовний Wi-Fi</li>\r\n</ul>\r\n\r\n<p>Можливі додаткові місця - розкладний диван або крісло.</p>\r\n\r\n<p>Вартість додаткового місця 100 грн</p>|<p>Two spacious rooms with balconies and with facilities available in rooms.And spacious lounge with furniture made of twigs. Amenities in the room: &bull; Bed &bull; Bedside table &bull; Wardrobe &bull; TV &bull; A bathroom with shower &bull; Balcony There are extra beds - fold-out sofa or chair.</p>|<p>Две просторные комнаты с балконами и с удобствами в номерах. Такожt доступен просторный холл с мебелью из лозы. Удобства в номере: &bull; Cпальная кровать &bull; Прикроватная тумбочка &bull; Шкаф для одежды &bull; Телевизор &bull; Санузел с душевой кабиной &bull; Балкон Возможны дополнительные места &mdash; раскладной диван или кресла.</p>|', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>листопад</td>\r\n			<td>700 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1 грудня - 29 грудня</td>\r\n			<td>1000 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 січня - 10 січня</td>\r\n			<td>1800 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11 січня - березень</td>\r\n			<td>1200 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>|<p>from 01.10.2016 to 31.10.2016 450 uah from 01.10.2017 to 31.10.2017 500 uah</p>|<p>c 01.10.2016 по 31.10.2016 450 грн c 01.10.2017 по 31.10.2017 500 грн</p>|', 1, '[{"full":"upload\\/articles\\/6\\/full\\/IMG_0004-min.jpg","min":"upload\\/articles\\/6\\/min\\/IMG_0004-min.jpg"},{"full":"upload\\/articles\\/6\\/full\\/IMG_0812-min.JPG","min":"upload\\/articles\\/6\\/min\\/IMG_0812-min.JPG"},{"full":"upload\\/articles\\/6\\/full\\/IMG_0813-min.JPG","min":"upload\\/articles\\/6\\/min\\/IMG_0813-min.JPG"},{"full":"upload\\/articles\\/6\\/full\\/IMG_0814-min.JPG","min":"upload\\/articles\\/6\\/min\\/IMG_0814-min.JPG"},{"full":"upload\\/articles\\/6\\/full\\/IMG_0815-min.JPG","min":"upload\\/articles\\/6\\/min\\/IMG_0815-min.JPG"},{"full":"upload\\/articles\\/6\\/full\\/TRO_4505-min.JPG","min":"upload\\/articles\\/6\\/min\\/TRO_4505-min.JPG"},{"full":"upload\\/articles\\/6\\/full\\/TRO_4536-min.JPG","min":"upload\\/articles\\/6\\/min\\/TRO_4536-min.JPG"}]', 3, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-11-18 13:02:56'),
(7, 3, '', 'Сауна на дровах|Sauna with cold pool|Сауна с контрастным бассейном|', '<p>Після насиченого дня, сауна - найкращий&nbsp;відпочинок для душі і тіла! Створює затишок в сауні і камін,біля якого так приємно зібратися з друзями, щоб насолодитися карпатським трав&#39;яним чаєм з духмяним медом. А закріпити ефект сауни ви зможете,пірнувши у басейн,наповнений джерельною,цілющою водичкою.А якщо хочеться драйву і релаксу-просто включіть гідромасаж!</p>|<p>Sauna with a cold pool and a lounge with a fireplace</p>|<p>Сауна с контрастным бассейном и комнатой отдыха с камином</p>|', '<h3 style="text-align: center;">300грн/год</h3>\r\n\r\n<p style="text-align: center;">мінімальне замовлення<br />\r\n2 год</p>|<p>100</p>|<p>100</p>|', 0, '[{"full":"upload\\/articles\\/7\\/full\\/IMG_6315-min.jpg","min":"upload\\/articles\\/7\\/min\\/IMG_6315-min.jpg"},{"full":"upload\\/articles\\/7\\/full\\/IMG_6317-min.jpg","min":"upload\\/articles\\/7\\/min\\/IMG_6317-min.jpg"},{"full":"upload\\/articles\\/7\\/full\\/IMG_6320-min.jpg","min":"upload\\/articles\\/7\\/min\\/IMG_6320-min.jpg"},{"full":"upload\\/articles\\/7\\/full\\/IMG_6321-min.jpg","min":"upload\\/articles\\/7\\/min\\/IMG_6321-min.jpg"},{"full":"upload\\/articles\\/7\\/full\\/IMG_6324-min.jpg","min":"upload\\/articles\\/7\\/min\\/IMG_6324-min.jpg"},{"full":"upload\\/articles\\/7\\/full\\/IMG_6325-min.jpg","min":"upload\\/articles\\/7\\/min\\/IMG_6325-min.jpg"},{"full":"upload\\/articles\\/7\\/full\\/IMG_6329-min.jpg","min":"upload\\/articles\\/7\\/min\\/IMG_6329-min.jpg"},{"full":"upload\\/articles\\/7\\/full\\/IMG_6332-min.jpg","min":"upload\\/articles\\/7\\/min\\/IMG_6332-min.jpg"},{"full":"upload\\/articles\\/7\\/full\\/IMG_6333-min.jpg","min":"upload\\/articles\\/7\\/min\\/IMG_6333-min.jpg"},{"full":"upload\\/articles\\/7\\/full\\/IMG_6337-min.jpg","min":"upload\\/articles\\/7\\/min\\/IMG_6337-min.jpg"},{"full":"upload\\/articles\\/7\\/full\\/IMG_6340-min.jpg","min":"upload\\/articles\\/7\\/min\\/IMG_6340-min.jpg"}]', 6, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-11-18 13:06:54'),
(8, 3, '', 'Зона відпочинку|Rest area|Зона отдыха|', '<p>До ваших послуг:</p>\r\n\r\n<ul>\r\n	<li>-колоритна альтанка ;</li>\r\n	<li>-мангал,де можна посмажити запашний шашличок чи форель;</li>\r\n	<li>-чудо-пічка-для приготування юшечки або баноша;</li>\r\n	<li>-гойдалки для дітей та дорослих;</li>\r\n	<li>-шезлонги;</li>\r\n	<li>-гамак</li>\r\n</ul>\r\n\r\n<p>І насолоджуйтесь:влітку-ароматом фрезій та троянд,а зимою-таким кришталево-чистим, з нотками хвої,повітрям!</p>\r\n\r\n<p>&nbsp;</p>|<p>At the hotel there is a gazebo and barbecue</p>|<p>На территории отеля есть есть беседка и мангал</p>|', 'Безкоштовно|||', 0, '[{"full":"upload\\/articles\\/8\\/full\\/TRO_4507-min.JPG","min":"upload\\/articles\\/8\\/min\\/TRO_4507-min.JPG"},{"full":"upload\\/articles\\/8\\/full\\/TRO_4508-min.JPG","min":"upload\\/articles\\/8\\/min\\/TRO_4508-min.JPG"},{"full":"upload\\/articles\\/8\\/full\\/TRO_4518-min.JPG","min":"upload\\/articles\\/8\\/min\\/TRO_4518-min.JPG"},{"full":"upload\\/articles\\/8\\/full\\/TRO_4531-min.JPG","min":"upload\\/articles\\/8\\/min\\/TRO_4531-min.JPG"},{"full":"upload\\/articles\\/8\\/full\\/TRO_4539-min.JPG","min":"upload\\/articles\\/8\\/min\\/TRO_4539-min.JPG"}]', 3, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-11-15 19:02:34'),
(9, 3, '', 'Дитячий майданчик|Playground|Детская площадка|', '<p>На території готелю для дітей є батут,дерев&#39;яні будиночки, пісочниця, гірка, качелі.&nbsp;Дитячий майданчик і дзвін голосів Лунає далеко так щирий, І бігає швидко юрба дітлахів, Маленьких таких і красивих. Хвилює мій зір те дитинство ясне, Яке я давно вже пройшов, Тепер вже ніколи мене не прийме, Тому, що в дорослість пішов. Дивлюсь на дітей, на візочки, на мам, Як гарно то все виглядає, Гойдаються гойдалки, тим дітлахам Сміятись лише й вистачає.</p>|<p>The hotel is a trampoline for kids, wooden houses, sandbox, slide, swing</p>|<p>На территории отеля для детей есть батут, деревянные домики, песочница, горка, качели</p>|', 'Безкоштовно|||', 0, '[{"full":"upload\\/articles\\/9\\/full\\/dut1.jpg","min":"upload\\/articles\\/9\\/min\\/dut1.jpg"},{"full":"upload\\/articles\\/9\\/full\\/dut2.jpg","min":"upload\\/articles\\/9\\/min\\/dut2.jpg"},{"full":"upload\\/articles\\/9\\/full\\/IMG_0917-min.JPG","min":"upload\\/articles\\/9\\/min\\/IMG_0917-min.JPG"},{"full":"upload\\/articles\\/9\\/full\\/IMG_2212-min.JPG","min":"upload\\/articles\\/9\\/min\\/IMG_2212-min.JPG"},{"full":"upload\\/articles\\/9\\/full\\/TRO_4524-min.JPG","min":"upload\\/articles\\/9\\/min\\/TRO_4524-min.JPG"},{"full":"upload\\/articles\\/9\\/full\\/TRO_4582-min.JPG","min":"upload\\/articles\\/9\\/min\\/TRO_4582-min.JPG"},{"full":"upload\\/articles\\/9\\/full\\/TRO_4591-min.JPG","min":"upload\\/articles\\/9\\/min\\/TRO_4591-min.JPG"}]', 4, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-11-08 15:04:02'),
(10, 3, '', 'Парковка|Parking|Парковка|', '<p>До послуг наших клієнтів доступне безкоштовне паркомісце на території садиби.</p>|<p>Description parking</p>|<p>Описание парковки</p>|', 'Безкоштовно|||', 0, '[{"full":"upload\\/articles\\/10\\/full\\/IMG_5146-min.jpg","min":"upload\\/articles\\/10\\/min\\/IMG_5146-min.jpg"},{"full":"upload\\/articles\\/10\\/full\\/TRO_4482-min.JPG","min":"upload\\/articles\\/10\\/min\\/TRO_4482-min.JPG"}]', 0, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-11-08 19:01:03'),
(11, 3, '', 'Домашня кухня|Home cuisine|Домашняя кухня|', '<p>І ще здивуємо вас смачною домашньою їжею,приготовлену з натуральних екологічно -чистих продуктів.<br />\r\nГрибова юшечка з домашньою локшиною,борщ&nbsp;з салом,варенички пузаті з різноманітними начинками,голубці,деруни,банош,білі гриби в сметані,сирники та багато інших смаколиків приготуємо&nbsp; ми для наших дорогих гостей...</p>|<p>By arrangement service available cooking delicious homemade food.</p>|<p>По договоренности доступна услуга приготовления вкусной домашней еды.</p>|', 'За домовленістю|80|80|', 0, '[{"full":"upload\\/articles\\/11\\/full\\/a.jpg","min":"upload\\/articles\\/11\\/min\\/a.jpg"},{"full":"upload\\/articles\\/11\\/full\\/aa.jpg","min":"upload\\/articles\\/11\\/min\\/aa.jpg"},{"full":"upload\\/articles\\/11\\/full\\/aaa.jpg","min":"upload\\/articles\\/11\\/min\\/aaa.jpg"},{"full":"upload\\/articles\\/11\\/full\\/aaaa.jpg","min":"upload\\/articles\\/11\\/min\\/aaaa.jpg"},{"full":"upload\\/articles\\/11\\/full\\/dim0493.jpg","min":"upload\\/articles\\/11\\/min\\/dim0493.jpg"},{"full":"upload\\/articles\\/11\\/full\\/Kulesh.jpg","min":"upload\\/articles\\/11\\/min\\/Kulesh.jpg"},{"full":"upload\\/articles\\/11\\/full\\/qwe.jpg","min":"upload\\/articles\\/11\\/min\\/qwe.jpg"},{"full":"upload\\/articles\\/11\\/full\\/TRO_4590-min.JPG","min":"upload\\/articles\\/11\\/min\\/TRO_4590-min.JPG"},{"full":"upload\\/articles\\/11\\/full\\/TRO_4616-min.JPG","min":"upload\\/articles\\/11\\/min\\/TRO_4616-min.JPG"}]', 5, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-11-07 08:39:07'),
(12, 3, '', 'Розваги|Entertainment|Развлечения|', '<p>Влітку:</p>\r\n\r\n<ul>\r\n	<li>- бадмінтон,</li>\r\n	<li>- дартс,</li>\r\n	<li>- пішохідні екскурсії,</li>\r\n	<li>- збирання ягід та грибів,</li>\r\n	<li>- купання в річці,</li>\r\n	<li>- квадротури,</li>\r\n	<li>- велосипедні прогулянки.</li>\r\n</ul>\r\n\r\n<p>А зимою-безліч розваг...(тільки одягайтесь тепліше<img alt="smiley" src="http://doroga-dodomu.loc/js/backend/ckeditor/plugins/smiley/images/regular_smile.png" style="height:23px; width:23px" title="smiley" />)</p>\r\n\r\n<p>&nbsp;</p>|<p>In the Carpathians good rest can plan and organize in any season. After all, nature Carpathians unique in every season - from spring to autumn, from autumn to spring. Excursions</p>|<p>В Карпатах хороший отдых можно спланировать и организовать в любое время года. Ведь природа Карпат уникальна в каждую пору - от весны до осени, с осени до весны. Экскурсии</p>|', 'Безкоштовно|||', 0, '[{"full":"upload\\/articles\\/12\\/full\\/zz.jpg","min":"upload\\/articles\\/12\\/min\\/zz.jpg"},{"full":"upload\\/articles\\/12\\/full\\/zzz.jpg","min":"upload\\/articles\\/12\\/min\\/zzz.jpg"},{"full":"upload\\/articles\\/12\\/full\\/zzzz.jpg","min":"upload\\/articles\\/12\\/min\\/zzzz.jpg"},{"full":"upload\\/articles\\/12\\/full\\/zzzzz.jpg","min":"upload\\/articles\\/12\\/min\\/zzzzz.jpg"}]', 1, '2016-10-20 13:36:44', '|||', '|||', '|||', 1, '2016-10-20 10:36:44', '2016-11-08 19:01:38'),
(13, 7, 'meta.hotel', 'Seo для Готелю|SEO for Hotel|Seo для Отеля|', '|||', '|||', 0, '[]', 0, '0000-00-00 00:00:00', 'Дорога дододу - приватна садиба в самому серці Карпат|META Title EN|META Title RU|', 'Чудове місце для відпочинку як влітку так і взимку. Найкращий відпочинок в Микуличині.|META Description EN|META Description RU|', 'META Keywords, META Title, META Title1|META KeywordsEN|META Keywords RU|', 1, '2016-10-20 10:36:44', '2016-11-12 16:45:26'),
(14, 7, 'meta.rooms', 'Seo для Номерів|SEO for Rooms|Seo для Номеров|', '|||', '|||', 0, '[]', 0, '0000-00-00 00:00:00', 'Номери приватної садиби "Дорога додому"|META Title EN|META Title RU|', 'Гнучкий вибвр комфортних та затишних номерів для чудового відпочинку в Карпатах надасть Вам приватна садиба "Дорога додому"|META Description EN|META Description RU|', 'META Keywords, META Title, META Title1|META KeywordsEN|META Keywords RU|', 1, '2016-10-20 10:36:44', '2016-11-12 16:47:18'),
(15, 7, 'meta.services', 'Seo для Послуг|SEO for Services|Seo для Услуг|', '|||', '|||', 0, '[]', 0, '0000-00-00 00:00:00', 'Послуги  у приватній садибі "Дорога додому"|META Title EN|META Title RU|', 'Дова ших послуг у приватній садибі "Дорога дододу" сауна на дровах, дитячий майданчик, смачна гуцульська кухня та чудова природа|META Description EN|META Description RU|', 'META Keywords, META Title, META Title1|META KeywordsEN|META Keywords RU|', 1, '2016-10-20 10:36:44', '2016-11-12 16:50:26'),
(16, 7, 'meta.gallery', 'Seo для Галереї|SEO for Gallery|Seo для Галлереи|', '|||', '|||', 0, '[]', 0, '0000-00-00 00:00:00', 'Галерея приватної садиби "Дорога додому"|META Title EN|META Title RU|', 'Безліч чудових фото карпатських краєвидів, а також самої садиби "Дорога додому"|META Description EN|META Description RU|', 'META Keywords, META Title, META Title1|META KeywordsEN|META Keywords RU|', 1, '2016-10-20 10:36:44', '2016-11-12 16:51:48'),
(17, 7, 'meta.contact', 'Seo для Контактів|SEO for Contacts|Seo для Контактов|', '|||', '|||', 0, '[]', 0, '0000-00-00 00:00:00', 'Контакти приватної садиби "Дорога додому"|META Title EN|META Title RU|', 'Контактна інформація для відпочиваючих. Контактний телефон, адреса та локація для бажаючих відпочити у приватній садибі "Дорога додому" у Микуличині|META Description EN|META Description RU|', 'META Keywords, META Title, META Title1|META KeywordsEN|META Keywords RU|', 1, '2016-10-20 10:36:44', '2016-11-12 16:53:40'),
(18, 6, '', 'Гойдалка|Slide 1|Слайд 1|', '|<p>&nbsp;</p>\r\n\r\n<p>The territory of cottage &quot;The Way Home&quot;.</p>|<p>&nbsp;</p>\r\n\r\n<p>Территории коттеджа &quot;Дорога домой&quot;.</p>|', '|||', 0, '[{"full":"upload\\/articles\\/18\\/full\\/TRO_4507-min.JPG","min":"upload\\/articles\\/18\\/min\\/TRO_4507-min.JPG"}]', 6, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-10-23 10:04:03', '2016-11-07 07:59:52'),
(19, 6, '', 'Альтанка для відпочинку|Slide 2|Слайд 2|', '|<p>&nbsp;</p>\r\n\r\n<p>Playground</p>|<p>&nbsp;</p>\r\n\r\n<p>Детская площадка</p>|', '|||', 0, '[{"full":"upload\\/articles\\/19\\/full\\/TRO_4518-min.JPG","min":"upload\\/articles\\/19\\/min\\/TRO_4518-min.JPG"}]', 5, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-10-23 10:11:49', '2016-11-07 08:01:37'),
(20, 6, '', 'Котедж "Дорога додому"|Cottage "The Way Home"|Коттедж "Дорога домой"|', '|||', '|||', 0, '[{"full":"upload\\/articles\\/20\\/full\\/IMG_5141-min.jpg","min":"upload\\/articles\\/20\\/min\\/IMG_5141-min.jpg"}]', 8, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-10-23 10:14:16', '2016-11-07 07:58:18'),
(21, 6, '', 'Смачне карпатське вино|Slide 4|Слайд 4|', '|<h2 style="font-style:italic">Будь-яка назва&nbsp;</h2>||', '|||', 0, '[{"full":"upload\\/articles\\/21\\/full\\/TRO_4590-min.JPG","min":"upload\\/articles\\/21\\/min\\/TRO_4590-min.JPG"}]', 7, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-10-23 12:07:35', '2016-11-07 07:59:05'),
(22, 5, '', 'Приватна садиба "Дорога додому"|Album 1|Альбом 1|', '|||', '|||', 0, '[{"full":"upload\\/articles\\/22\\/full\\/1.jpg","min":"upload\\/articles\\/22\\/min\\/1.jpg"},{"full":"upload\\/articles\\/22\\/full\\/2.JPG","min":"upload\\/articles\\/22\\/min\\/2.JPG"},{"full":"upload\\/articles\\/22\\/full\\/3.JPG","min":"upload\\/articles\\/22\\/min\\/3.JPG"},{"full":"upload\\/articles\\/22\\/full\\/4.JPG","min":"upload\\/articles\\/22\\/min\\/4.JPG"},{"full":"upload\\/articles\\/22\\/full\\/5.JPG","min":"upload\\/articles\\/22\\/min\\/5.JPG"},{"full":"upload\\/articles\\/22\\/full\\/6.JPG","min":"upload\\/articles\\/22\\/min\\/6.JPG"},{"full":"upload\\/articles\\/22\\/full\\/7.jpg","min":"upload\\/articles\\/22\\/min\\/7.jpg"},{"full":"upload\\/articles\\/22\\/full\\/8.JPG","min":"upload\\/articles\\/22\\/min\\/8.JPG"}]', 2, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-10-25 19:28:03', '2016-11-08 15:38:08'),
(25, 2, '', 'Номер 1 на другому поверсі будинку господарів|Номер 1 на другому поверсі будинку господарів|Номер 1 на другому поверсі будинку господарів|', '<p>Просторий номер з балконом, розташований на другому поверсі. Зручності у номері:</p>\r\n\r\n<ul>\r\n	<li>&bull; спальне ліжко</li>\r\n	<li>&bull; додаткове місце - розкладне крісло</li>\r\n	<li>&bull; приліжкова тумбочка</li>\r\n	<li>&bull; шафа для одягу</li>\r\n	<li>&bull; телевізор</li>\r\n	<li>&bull; санвузол з душовою кабіною</li>\r\n	<li>&bull; балкон&nbsp;</li>\r\n	<li>&bull; безкоштовний Wi-Fi</li>\r\n</ul>|||', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>листопад</td>\r\n			<td>350 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1 грудня - 29 грудня</td>\r\n			<td>500 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 січня - 10 січня</td>\r\n			<td>900 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11 січня - березень</td>\r\n			<td>600 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>|||', 1, '[{"full":"upload\\/articles\\/25\\/full\\/in27.jpg","min":"upload\\/articles\\/25\\/min\\/in27.jpg"},{"full":"upload\\/articles\\/25\\/full\\/in30.jpg","min":"upload\\/articles\\/25\\/min\\/in30.jpg"},{"full":"upload\\/articles\\/25\\/full\\/in31.jpg","min":"upload\\/articles\\/25\\/min\\/in31.jpg"}]', 2, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-11-03 15:48:22', '2016-11-18 13:04:51'),
(26, 2, '', 'Номер 2 на другому поверсі будинку господарів|Номер 1 на другому поверсі будинку господарів|Номер 1 на другому поверсі будинку господарів|', '<p>Просторий номер з балконом, розташований на другому поверсі. Зручності у номері:</p>\r\n\r\n<ul>\r\n	<li>&bull; спальне ліжко</li>\r\n	<li>&bull; додаткове місце - розкладний&nbsp;диван</li>\r\n	<li>&bull; приліжкова тумбочка</li>\r\n	<li>&bull; шафа для одягу</li>\r\n	<li>&bull; телевізор</li>\r\n	<li>&bull; санвузол з душовою кабіною</li>\r\n	<li>&bull; балкон</li>\r\n	<li>&bull; безкоштовний Wi-Fi</li>\r\n</ul>|||', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>листопад</td>\r\n			<td>350 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1 грудня - 29 грудня</td>\r\n			<td>500 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 січня - 10 січня</td>\r\n			<td>900 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11 січня - березень</td>\r\n			<td>600 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>|||', 1, '[{"full":"upload\\/articles\\/26\\/full\\/IMG_0811-min.JPG","min":"upload\\/articles\\/26\\/min\\/IMG_0811-min.JPG"},{"full":"upload\\/articles\\/26\\/full\\/IMG_0812-min.JPG","min":"upload\\/articles\\/26\\/min\\/IMG_0812-min.JPG"},{"full":"upload\\/articles\\/26\\/full\\/IMG_0813-min.JPG","min":"upload\\/articles\\/26\\/min\\/IMG_0813-min.JPG"},{"full":"upload\\/articles\\/26\\/full\\/IMG_0814-min.JPG","min":"upload\\/articles\\/26\\/min\\/IMG_0814-min.JPG"},{"full":"upload\\/articles\\/26\\/full\\/IMG_0815-min.JPG","min":"upload\\/articles\\/26\\/min\\/IMG_0815-min.JPG"}]', 1, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-11-03 15:49:18', '2016-11-18 13:05:10'),
(27, 2, '', 'Двоповерховий котедж|Двоповерховий котедж|Двоповерховий котедж|', '<p>На першому поверсі:</p>\r\n\r\n<ul>\r\n	<li>камінний зал,де за великим столом може зібратися вся компанія;</li>\r\n	<li>кухня,оснащена необхідною технікою для приготування їжі та посудом;</li>\r\n	<li>двомісний номер з санвузлом.</li>\r\n</ul>\r\n\r\n<p>На другому поверсі-три номера з балконами.</p>\r\n\r\n<p>Безкоштовний Wi-Fi на всій території.</p>|||', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>листопад</td>\r\n			<td>1600 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1 грудня - 29 грудня</td>\r\n			<td>2000 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 січня - 10 січня</td>\r\n			<td>4000 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11 січня - 1 березеня</td>\r\n			<td>2500 грн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>|||', 1, '[{"full":"upload\\/articles\\/27\\/full\\/TRO_4482-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4482-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4543-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4543-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4544-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4544-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4546-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4546-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4547-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4547-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4549-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4549-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4550-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4550-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4552-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4552-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4553-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4553-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4555-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4555-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4557-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4557-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4558-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4558-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4559-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4559-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4560-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4560-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4579-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4579-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4582-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4582-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4584-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4584-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4591-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4591-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4592-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4592-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4595-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4595-min.JPG"},{"full":"upload\\/articles\\/27\\/full\\/TRO_4608-min.JPG","min":"upload\\/articles\\/27\\/min\\/TRO_4608-min.JPG"}]', 8, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-11-03 15:51:38', '2016-11-18 12:54:35'),
(28, 10, '', 'Відгуки', 'Відгуки про готель', NULL, 0, '', 0, '0000-00-00 00:00:00', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 7, 'meta.comments', 'Seo для Відгуків|SEO for Comments|Seo для Отзывов|', '|||', '|||', 0, '[]', 0, '0000-00-00 00:00:00', 'Відгуки про приватну садибу "Дорога додому"|META Title EN|META Title RU|', 'Всі відгуки відпочиваючих уКарпатах в Микуличині у приватній садибі "Дорога дододу". Чудовий відпочинок у Карпатах як влітку так і взимку|META Description EN|META Description RU|', 'META Keywords, META Title|META KeywordsEN|META Keywords RU|', 1, '0000-00-00 00:00:00', '2016-11-12 16:55:09'),
(31, 6, '', 'Дитячий майданчик|Дитячий майданчик|Дитячий майданчик|', '|||', '|||', 0, '[{"full":"upload\\/articles\\/31\\/full\\/TRO_4524-min.JPG","min":"upload\\/articles\\/31\\/min\\/TRO_4524-min.JPG"}]', 4, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-11-07 07:55:05', '2016-11-07 07:57:56'),
(32, 6, '', 'Гойдалка|Гойдалка|Гойдалка|', '|||', '|||', 0, '[{"full":"upload\\/articles\\/32\\/full\\/TRO_4531-min.JPG","min":"upload\\/articles\\/32\\/min\\/TRO_4531-min.JPG"}]', 3, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-11-07 08:02:44', '2016-11-07 08:03:24'),
(33, 6, '', 'Будинок господарів|Будинок господарів|Будинок господарів|', '|||', '|||', 0, '[{"full":"upload\\/articles\\/33\\/full\\/TRO_4504-min.jpg","min":"upload\\/articles\\/33\\/min\\/TRO_4504-min.jpg"}]', 2, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-11-07 08:05:47', '2016-11-07 08:06:31'),
(34, 6, '', 'Територія|Територія|Територія|', '|||', '|||', 0, '[{"full":"upload\\/articles\\/34\\/full\\/TRO_4539-min.JPG","min":"upload\\/articles\\/34\\/min\\/TRO_4539-min.JPG"}]', 1, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-11-07 08:07:54', '2016-11-07 08:08:16'),
(35, 3, '', 'Трансфер до місця відпочинку|Трансфер до місця відпочинку|Трансфер до місця відпочинку|', '<p>Ми організуємо Вам трансфер від Микуличинської АС до місця проживання з оглядом чудових краєвидів нашої місцини.</p>|||', 'Безкоштовно|||', 0, '[{"full":"upload\\/articles\\/35\\/full\\/IMG_0917-min.JPG","min":"upload\\/articles\\/35\\/min\\/IMG_0917-min.JPG"}]', 2, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-11-07 13:51:56', '2016-11-08 19:00:38'),
(36, 5, '', 'Номери|Номери|Номери|', '|||', '|||', 0, '[{"full":"upload\\/articles\\/36\\/full\\/IMG_0811-min.JPG","min":"upload\\/articles\\/36\\/min\\/IMG_0811-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/IMG_0812-min.JPG","min":"upload\\/articles\\/36\\/min\\/IMG_0812-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/IMG_0813-min.JPG","min":"upload\\/articles\\/36\\/min\\/IMG_0813-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/IMG_0814-min.JPG","min":"upload\\/articles\\/36\\/min\\/IMG_0814-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/IMG_0815-min.JPG","min":"upload\\/articles\\/36\\/min\\/IMG_0815-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/in27.jpg","min":"upload\\/articles\\/36\\/min\\/in27.jpg"},{"full":"upload\\/articles\\/36\\/full\\/in28.jpg","min":"upload\\/articles\\/36\\/min\\/in28.jpg"},{"full":"upload\\/articles\\/36\\/full\\/in30.jpg","min":"upload\\/articles\\/36\\/min\\/in30.jpg"},{"full":"upload\\/articles\\/36\\/full\\/in31.jpg","min":"upload\\/articles\\/36\\/min\\/in31.jpg"},{"full":"upload\\/articles\\/36\\/full\\/TRO_4543-min.JPG","min":"upload\\/articles\\/36\\/min\\/TRO_4543-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/TRO_4544-min.JPG","min":"upload\\/articles\\/36\\/min\\/TRO_4544-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/TRO_4546-min.JPG","min":"upload\\/articles\\/36\\/min\\/TRO_4546-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/TRO_4547-min.JPG","min":"upload\\/articles\\/36\\/min\\/TRO_4547-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/TRO_4549-min.JPG","min":"upload\\/articles\\/36\\/min\\/TRO_4549-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/TRO_4550-min.JPG","min":"upload\\/articles\\/36\\/min\\/TRO_4550-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/TRO_4552-min.JPG","min":"upload\\/articles\\/36\\/min\\/TRO_4552-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/TRO_4553-min.JPG","min":"upload\\/articles\\/36\\/min\\/TRO_4553-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/TRO_4555-min.JPG","min":"upload\\/articles\\/36\\/min\\/TRO_4555-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/TRO_4557-min.JPG","min":"upload\\/articles\\/36\\/min\\/TRO_4557-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/TRO_4558-min.JPG","min":"upload\\/articles\\/36\\/min\\/TRO_4558-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/TRO_4559-min.JPG","min":"upload\\/articles\\/36\\/min\\/TRO_4559-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/TRO_4560-min.JPG","min":"upload\\/articles\\/36\\/min\\/TRO_4560-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/TRO_4563-min.JPG","min":"upload\\/articles\\/36\\/min\\/TRO_4563-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/TRO_4564-min.JPG","min":"upload\\/articles\\/36\\/min\\/TRO_4564-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/TRO_4565-min.JPG","min":"upload\\/articles\\/36\\/min\\/TRO_4565-min.JPG"},{"full":"upload\\/articles\\/36\\/full\\/TRO_4567-min.JPG","min":"upload\\/articles\\/36\\/min\\/TRO_4567-min.JPG"}]', 1, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-11-08 19:04:21', '2016-11-08 19:25:39'),
(37, 5, '', 'Територія садиби|Територія садиби|Територія садиби|', '|||', '|||', 0, '[{"full":"upload\\/articles\\/37\\/full\\/IMG_0917-min.JPG","min":"upload\\/articles\\/37\\/min\\/IMG_0917-min.JPG"},{"full":"upload\\/articles\\/37\\/full\\/IMG_0919-min.JPG","min":"upload\\/articles\\/37\\/min\\/IMG_0919-min.JPG"},{"full":"upload\\/articles\\/37\\/full\\/IMG_2212-min.JPG","min":"upload\\/articles\\/37\\/min\\/IMG_2212-min.JPG"},{"full":"upload\\/articles\\/37\\/full\\/IMG_2249-min.JPG","min":"upload\\/articles\\/37\\/min\\/IMG_2249-min.JPG"},{"full":"upload\\/articles\\/37\\/full\\/IMG_5146-min.jpg","min":"upload\\/articles\\/37\\/min\\/IMG_5146-min.jpg"},{"full":"upload\\/articles\\/37\\/full\\/IMG_5164-min.jpg","min":"upload\\/articles\\/37\\/min\\/IMG_5164-min.jpg"},{"full":"upload\\/articles\\/37\\/full\\/TRO_4482-min.JPG","min":"upload\\/articles\\/37\\/min\\/TRO_4482-min.JPG"},{"full":"upload\\/articles\\/37\\/full\\/TRO_4505-min.JPG","min":"upload\\/articles\\/37\\/min\\/TRO_4505-min.JPG"},{"full":"upload\\/articles\\/37\\/full\\/TRO_4536-min.JPG","min":"upload\\/articles\\/37\\/min\\/TRO_4536-min.JPG"}]', 0, '0000-00-00 00:00:00', '|||', '|||', '|||', 1, '2016-11-08 19:12:34', '2016-11-08 19:21:36');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `link`, `fields`, `created_at`, `updated_at`) VALUES
(1, 'Готель', 'hotel', '["title","description"]', '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(2, 'Кімнати', 'rooms', '["title","description","gallery","price","quantity","priority","active"]', '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(3, 'Послуги', 'services', '["title","description","gallery","priority","active","price"]', '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(5, 'Галерея', 'gallery', '["title","description","gallery","priority","active"]', '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(6, 'Слайдер', 'slider', '["title","description","gallery","priority","active"]', '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(7, 'Seo', 'seo', '["title","meta_title","meta_description","meta_keywords"]', '2016-10-20 10:36:44', '2016-10-20 10:36:44'),
(10, 'Коментарі', 'comments', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL,
  `article_id` int(11) NOT NULL,
  `rate` double(8,2) NOT NULL,
  `user_name` text COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` text COLLATE utf8_unicode_ci,
  `user_email` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `article_id`, `rate`, `user_name`, `user_phone`, `user_email`, `comment`, `priority`, `date`, `active`, `created_at`, `updated_at`) VALUES
(51, 0, 3.00, 'Александр', '', 'exampl@gmail.com', 'Отдыхал с семьей. Все на высоте!', 0, '0000-00-00 00:00:00', 0, '2016-11-06 21:31:43', '2016-11-06 21:31:43');

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
('2016_10_06_124518_create_texts_table', 1),
('2016_11_04_104159_create_comments_table', 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `texts`
--

INSERT INTO `texts` (`id`, `page_id`, `name`, `type`, `title`, `description`, `priority`, `lang_active`, `created_at`, `updated_at`) VALUES
(1, 0, 'header.tel1', 'input', 'Контактний номер телефону 1', '+38 (099) 337-66-14', 3, 0, '2016-10-20 10:36:44', '2016-10-25 17:51:24'),
(2, 0, 'header.tel2', 'input', 'Контактний номер телефону 2', '+38 (098) 931-72-70', 3, 0, '2016-10-20 10:36:44', '2016-10-25 17:51:45'),
(3, 0, 'header.address', 'input', 'Адреса', 'Івано-Франківська область<br>Яремчанський район<br> 				с. Микуличин<br> вул. 1 травня, 23б|Ivano-Frankivsk region<br> Yaremche district <br>Mikulichin <br> street. V. Stefannyka 10|Ивано-Франковская область <br> Яремчанский район <br> с. Микуличин <br> ул. В. Стефанника, 10|', 2, 1, '2016-10-20 10:36:44', '2016-11-18 13:32:22'),
(6, 0, 'header.map', 'input', 'Карта', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3927.7351614688832!2d24.596868318385795!3d48.40517029053144!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNDjCsDI0JzE4LjQiTiAyNMKwMzUnNTkuMCJF!5e0!3m2!1sru!2sru!4v1478974607496" width="100%" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>', 0, 0, '2016-10-20 10:36:44', '2016-11-12 16:17:41'),
(8, 0, 'header.tel_stat', 'input', 'Контактний номер (стаціонарний)', '+38 (03434) 3-91-31', 4, 0, '2016-10-25 17:53:51', '2016-10-25 18:06:28'),
(9, 0, 'footer.fb', 'input', 'Посилання Facebook', 'https://www.facebook.com/', 0, 0, '2016-11-18 13:38:14', '2016-11-18 13:38:14');

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
(2, 'root', 'webdesignstudio@gmail.com', '$2y$10$BdvnOe9NrHYCkipriMsBRuvfVrOGQI0oi7XzPHQSQ42pUpJGg4Q6y', 'H3VT4quxtNN8ljG9lSAcJs046xnqEtSPrV1Jl06VFAgRQgdDzo4M0YM2mlFP', '2016-10-20 10:36:44', '2016-11-18 14:31:58'),
(3, 'admin', 'nila2927@yandex.ru', '$2y$10$u2PLb3xax.EpSo/T4FivPOiQ7qEYZWh4q7VCzktM0dvtyq0OOdo6a', '9jXj7PTMCyzsphX9nubiCDM1utzVx4GvNPPpOVRDYdPwaOpy2gL2FpI3c5RN', '2016-10-20 12:37:46', '2016-11-18 14:33:07');

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
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT для таблицы `langs`
--
ALTER TABLE `langs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
