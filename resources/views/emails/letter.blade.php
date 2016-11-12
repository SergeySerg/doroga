<table style="font-family:Arial, Helvetica, sans-serif;
	color:#666;
	font-size:16px;
	text-shadow: 1px 1px 0px #fff;
	background:#eaebec;
	margin:20px;
	border:#ccc 1px solid;
	border-collapse:separate;
	border-spacing: 0px;

	-moz-border-radius:3px;
	-webkit-border-radius:3px;
	border-radius:3px;

	-moz-box-shadow: 0 1px 2px #d1d1d1;
	-webkit-box-shadow: 0 1px 2px #d1d1d1;
	box-shadow: 0 1px 2px #d1d1d1;">
    <tr >
        <td colspan="2" style="text-align: center;"><img src="<?php echo $message->embed('img/frontend/logo.png'); ?>"> </td>
    </tr>
    <tr>
        <td style="border-bottom: 1px solid #e0e0e0; border-right: 1px solid #e0e0e0; background: #fafafa;  padding: 7px 17px;">Номер</td>
        <td style="border-bottom: 1px solid #e0e0e0; background: #fafafa;  padding: 7px 17px;">{{ $room }}</td>
    </tr>
    <tr>
        <td style="border-bottom: 1px solid #e0e0e0; border-right: 1px solid #e0e0e0; padding: 7px 17px;">Дата заїзду</td>
        <td style="border-bottom: 1px solid #e0e0e0; padding: 7px 17px;">{{ $data_from  }}</td>
    </tr>
    <tr>
        <td style="border-bottom: 1px solid #e0e0e0; border-right: 1px solid #e0e0e0; background: #fafafa;  padding: 7px 17px;">Дата виїзду</td>
        <td style="border-bottom: 1px solid #e0e0e0; background: #fafafa;  padding: 7px 17px;">{{ $data_to }}</td>
    </tr>
    <tr>
        <td style="border-bottom: 1px solid #e0e0e0; border-right: 1px solid #e0e0e0; padding: 7px 17px;">Кількість дітей</td>
        <td style="border-bottom: 1px solid #e0e0e0; padding: 7px 17px;">{{ $quantityсhildren }}</td>
    </tr>
    <tr>
        <td style="border-bottom: 1px solid #e0e0e0; border-right: 1px solid #e0e0e0; background: #fafafa;  padding: 7px 17px;">Кількість дорослих</td>
        <td style="border-bottom: 1px solid #e0e0e0; background: #fafafa;  padding: 7px 17px;">{{ $quantityadult }}</td>
    </tr>
    <tr>
        <td style="border-bottom: 1px solid #e0e0e0; border-right: 1px solid #e0e0e0; padding: 7px 17px;">Замовник</td>
        <td style="border-bottom: 1px solid #e0e0e0; padding: 7px 17px;">{{ $name }}</td>
    </tr>
    <tr>
        <td style="border-bottom: 1px solid #e0e0e0; border-right: 1px solid #e0e0e0; background: #fafafa;  padding: 7px 17px;">Контактний номер телефону</td>
        <td style="border-bottom: 1px solid #e0e0e0; background: #fafafa;  padding: 7px 17px;">{{ $tel }}</td>
    </tr>
    <tr>
        <td style="border-bottom: 1px solid #e0e0e0;border-right: 1px solid #e0e0e0; padding: 7px 17px;">Email</td>
        <td style="border-bottom: 1px solid #e0e0e0; padding: 7px 17px;">{{ $email }}</td>
    </tr>
    <tr>
        <td style="border-bottom: 1px solid #e0e0e0;border-right: 1px solid #e0e0e0; background: #fafafa;  padding: 7px 17px;">Коментар</td>
        <td style="border-bottom: 1px solid #e0e0e0; background: #fafafa;  padding: 7px 17px;">{{ $message_body }}</td>
    </tr>
</table>