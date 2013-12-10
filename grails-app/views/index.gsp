<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>

    <r:require modules="application, carousel, twitterBootstrap"/>
</head>

<body>
<div id="myCarousel" class="carousel slide">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <div class="item active">
            <div class="fill" style="background-image:url('img/Slide1.jpg');"></div>

            <div class="carousel-caption">
                <h1>Дизайн студии</h1>
            </div>
        </div>

        <div class="item">
            <div class="fill" style="background-image:url('img/Slide2.jpg');"></div>

            <div class="carousel-caption">
                <h1>Минимализм и удобство</h1>
            </div>
        </div>

        <div class="item">
            <div class="fill" style="background-image:url('img/Slide3.jpg');"></div>

            <div class="carousel-caption">
                <h1>Дизайн ванной комнаты</h1>
            </div>
        </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="icon-prev"></span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="icon-next"></span>
    </a>
</div>

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <h3><i class="icon-thumbs-up"></i> Качество</h3>

                <p>Наши поставщики гарантируют качество исполнения услуг. Они все хорошо зарекомендовали себя на рынке и
                были предварительно проверены на соответсвие высшим стандартам качества на предоставляемые услуги.
                Кроме того, каждый из вас может участвовать в оценке их работы. (в разработке)
                </p>
            </div>

            <div class="col-lg-4 col-md-4">
                <h3><i class="icon-shopping-cart"></i> Цена</h3>

                <p>Мы следим за ценами на рынке и с уверенностью можем утверждать, что цены наших поставщиков находятся
                в лучшем соотношении цена-качество на рынке.
            </div>

            <div class="col-lg-4 col-md-4">
                <h3><i class="icon-globe"></i> Удобство</h3>

                <p>С помощью нашего сайта Вы можете спланировать и заказать строительные, отделочные и ремонтные работы
                наравне с приобретением необходимых строй-материалов. Вам не понадобится обращаться к различным ресурсам.
                Мы собрали все самое необходимое для Вашего удобства!</p>
            </div>
        </div>
    </div>
</div>

<div class="section-colored text-center">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>Строй-Market: Лучшие консультации на рынке строительных, ремонтных и отделочных работ!</h2>

                <p>Мы работаем для того, чтобы помочь Вам в выборе лучшего решения!.</p>
                <hr>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2>Примеры наших дизайнерских работ</h2>
                <hr>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-6">
                <a href="#"><img class="img-rounded img-responsive img-home-portfolio" src="img/prj1.jpg"></a>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-6">
                <a href="#"><img class="img-rounded img-responsive img-home-portfolio" src="img/prj2.jpg"></a>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-6">
                <a href="#"><img class="img-rounded img-responsive img-home-portfolio" src="img/prj3.jpg"></a>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-6">
                <a href="#"><img class="img-rounded img-responsive img-home-portfolio" src="img/iprj1.jpg"></a>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-6">
                <a href="#"><img class="img-rounded img-responsive img-home-portfolio" src="img/iprj2.jpg"></a>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-6">
                <a href="#"><img class="img-rounded img-responsive img-home-portfolio" src="img/iprj3.jpg"></a>
            </div>
        </div>
    </div>
</div>
<r:require modules="application"/>
</body>
</html>
