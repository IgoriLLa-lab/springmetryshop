<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Home page</title>
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
<div id="header"><h1>METRY SHOP</h1> <h4>The best fabric from the best suppliers</h4></div>

<div id="sidebar">
    <p><a <#if user.email??>
    <h3>Name user: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Exit"/>
    </form>
<#else>
    <a href="/login">Enter to shop</a></h1>
    <a href="/registration">Зарегистрироваться</a>
    </#if></a></p>

</div>
<div id="content">
    <p><form action="/" method="get">
        Search by title product : <input type="text" name="title">
        <input type="submit" value="Search"/>
    </form>
    <#list products as product>
        <div>
            <p><b>${product.title}</b> ${product.price} rub. | <a href="/product/${product.id}">Details...</a></p>
        </div>
    <#else>
        <h3>Empty</h3>
    </#list>
    <#if user.email??>
    <hr>
    <h3>Сreate a new product</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Title: <input type="text" name="title"/><br><br>
        Description: <input type="text" name="description"/><br><br>
        Price: <input type="number" name="price"/><br><br>
        Category: <input type="text" name="category"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Add product"/>
    </form>
    </#if></p>

</div>
<div id="footer">&copy; Create Igor Kolesnik</div>
</body>
</html>