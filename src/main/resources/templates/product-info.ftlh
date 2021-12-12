<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Registration form</title>
    <style>
        body {
            font: 11pt Arial, Helvetica, sans-serif; /* Рубленый шрифт текста */
            margin: 0; /* Отступы на странице */
        }
        h1 {
            font-size: 36px; /* Размер шрифта */
            margin: 0; /* Убираем отступы */
            color: #fc6; /* Цвет текста */
        }
        h2 {
            margin-top: 0; /* Убираем отступ сверху */
        }
        #header { /* Верхний блок */
            background: #FA8072; /* Цвет фона */
            padding: 10px; /* Поля вокруг текста */
        }
        #sidebar { /* Левая колонка */
            float: left; /* Обтекание справа */
            border: 1px solid #333; /* Параметры рамки вокруг */
            width: 20%; /* Ширина колонки */
            padding: 5px; /* Поля вокруг текста */
            margin: 10px 10px 20px 5px; /* Значения отступов */
        }
        #content { /* Правая колонка */
            margin: 10px 5px 20px 25%; /* Значения отступов */
            padding: 5px; /* Поля вокруг текста */
            border: 1px solid #333; /* Параметры рамки */
        }
        #footer { /* Нижний блок */
            background: #FA8072; /* Цвет фона */
            padding: 5px; /* Поля вокруг текста */
            color: #fff; /* Цвет текста */
            clear: left; /* Отменяем действие float */
        }
    </style>
</head>
<body>
<div id="header"><h1>INFO</h1></div>
<div id="sidebar">
    <p><h4>Details of the product</h4>
    <b>Product: </b> ${product.title}<br>
    <b>Description: </b> ${product.description}<br>
    <b>Price: </b> ${product.price}<br>
    <b>Category product: </b> ${product.category}<br></p>

</div>

<form action="/product/delete/${product.id}" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Delete product"/>
</form>

<form action="/" method="get">
    <input type="submit" value="Back">
</form>

<div id="footer">&copy; Create Igor Kolesnik</div>
</body>
</html>