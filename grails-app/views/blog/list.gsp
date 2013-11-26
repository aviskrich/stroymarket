<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="container">

    <div class="row">

        <div class="col-lg-12">
            <h1 class="page-header">Статьи <small>последние добавленные</small></h1>
            <ol class="breadcrumb">
                <li><a href="${createLink(uri: "/")}">На главную</a></li>
                <li class="active">Статьи</li>
            </ol>
        </div>

    </div>

    <div class="row">

        <div class="col-lg-8">

            <h1><a href="#">Блог первый</a></h1>

            <p class="lead">автор: <a href="#">Иванов Иван Иванович</a></p>
            <hr>

            <p><i class="icon-time"></i> за 30 Октября 2013 14:30 </p>
            <hr>
            <a href="#"><img src="http://placehold.it/900x300" class="img-responsive"></a>
            <hr>

            <p>Краткое описание будущей статьи, которое будем хранить отдельно от всего текста</p>
            <a class="btn btn-primary" href="#">Читать далее <i class="icon-angle-right"></i></a>

            <hr>

            <h1><a href="#">Еще одна статья</a></h1>

            <p class="lead">автор: <a href="#">Петров Петр Петрович</a></p>
            <hr>

            <p><i class="icon-time"></i> за 29 Октября 2013 12:45 </p>
            <hr>
            <a href="#"><img src="http://placehold.it/900x300" class="img-responsive"></a>
            <hr>

            <p>Краткое описание будущей статьи, которое будем хранить отдельно от всего текста</p>
            <a class="btn btn-primary" href="#">Читать далее <i class="icon-angle-right"></i></a>

            <hr>

            <ul class="pager">
                <li class="previous"><a href="#">&larr; Предыдущие</a></li>
                <li class="next"><a href="#">Следующие &rarr;</a></li>
            </ul>

        </div>

        <div class="col-lg-4">
            <div class="well">
                <h4>Поиск по статьям</h4>

                <div class="input-group">
                    <input type="text" class="form-control">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button"><i class="icon-search"></i></button>
                    </span>
                </div><!-- /input-group -->
            </div><!-- /well -->
            <!--div class="well">
                <h4>Popular Blog Categories</h4>

                <div class="row">
                    <div class="col-lg-6">
                        <ul class="list-unstyled">
                            <li><a href="#dinosaurs">Dinosaurs</a></li>
                            <li><a href="#spaceships">Spaceships</a></li>
                            <li><a href="#fried-foods">Fried Foods</a></li>
                            <li><a href="#wild-animals">Wild Animals</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-6">
                        <ul class="list-unstyled">
                            <li><a href="#alien-abductions">Alien Abductions</a></li>
                            <li><a href="#business-casual">Business Casual</a></li>
                            <li><a href="#robots">Robots</a></li>
                            <li><a href="#fireworks">Fireworks</a></li>
                        </ul>
                    </div>
                </div>
            </div><!-- /well -->
            <!--div class="well">
                <h4>Side Widget Well</h4>

                <p>Bootstrap's default well's work great for side widgets! What is a widget anyways...?</p>
            </div><!-- /well -->
        </div>
    </div>

</div><!-- /.container -->
</body>
</html>