modules = {
    twitterBootstrap {
        dependsOn('jquery')

        resource url: 'css/bootstrap.css'
        resource url: 'js/bootstrap.min.js'
    }

    application {
        dependsOn('jquery')

        resource url: 'font-awesome/css/font-awesome.min.css'
        resource url: 'css/modern-business.css'

        resource url: 'js/application.js'
        resource url: 'js/modern-business.js'
    }

    semanticUI {
        dependsOn('jquery')

        resource url: 'js/semantic.js'
        resource url: 'css/semantic.css'
    }

    carousel {
        dependsOn('jquery')

        resource url: 'js/bootstrap-carousel.js'
    }
}