<%@ page import="org.stroymarket.security.User" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="ru" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="ru" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="ru" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="ru" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><g:layoutTitle default="Строй-Market"/></title>

<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">

<g:layoutHead/>
<r:layoutResources/>
</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Навигация</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- You'll want to use a responsive image option so this logo looks good on devices - I recommend using something like retina.js (do a quick Google search for it and you'll find it) -->
            <a class="navbar-brand" href="${createLink(uri: "/")}">Строй-Market</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav navbar-left">
                <sec:ifLoggedIn><li><a href="#"><i class="icon-user"></i> ${new User().getCurrentUserName().username}
                </a></li></sec:ifLoggedIn>
                <sec:ifLoggedIn><li><g:link controller="logout">Выйти</g:link></li></sec:ifLoggedIn>
                <sec:ifNotLoggedIn><li><g:link controller="login">Войти</g:link></li></sec:ifNotLoggedIn>
                <sec:ifAllGranted roles="ROLE_ADMIN"><li><a href="#">Административная консоль</a>
                </li></sec:ifAllGranted>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">О нас</a></li>
                <li><a href="#">Услуги</a></li>
                <li><a href="#">Контакты</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Наши работы <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Проекты домов</a></li>
                        <li><a href="#">Дизайн интерьера</a></li>
                        <li><a href="#">Тест портфолио</a></li>
                    </ul>
                </li>
                <li><g:link controller="blog" action="list">Статьи</g:link></li>

                <!--li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Разное <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="full-width.html">Full Width Page</a></li>
                        <li><a href="sidebar.html">Sidebar Page</a></li>
                        <li><a href="faq.html">FAQ</a></li>
                        <li><a href="404.html">404</a></li>
                        <li><a href="pricing.html">Pricing Table</a></li>
                    </ul>
                </li-->
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container -->
</nav>
<g:layoutBody/>
<div class="container">

    <hr>

    <footer>
        <div class="row">
            <div class="col-lg-12">
                <p>Copyright &copy; Company 2013</p>
            </div>
        </div>
    </footer>

</div><!-- /.container -->

<!-- Bootstrap core JavaScript -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${resource(dir: 'js', file: 'bootstrap.js')}"></script>
<script src="${resource(dir: 'js', file: 'modern-business.js')}"></script>
<r:layoutResources/>
</body>

</body>
</html>
</html>
