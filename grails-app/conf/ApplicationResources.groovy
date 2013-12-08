modules = {
    application {
        dependsOn('jquery')

        resource url: 'font-awesome/css/font-awesome.min.css'
        resource url: 'css/modern-business.css'
        resource url: 'css/bootstrap.css'

        resource url: 'js/application.js'
        resource url: 'js/bootstrap.min.js'
        resource url: 'js/modern-business.js'
    }
}