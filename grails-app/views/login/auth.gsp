<html>
<head>
    <meta name='layout' content='main'/>

    <r:require modules="application, semanticUI, twitterBootstrap"/>
</head>

<body>

<div class="ui one column page grid">
    <div class="ui column form segment">
        <div class="field">
            <label>Имя пользователя:</label>

            <div class="ui left labeled icon input">
                <input type="text" placeholder="username">
                <i class="user icon"></i>

                <div class="ui corner label">
                    <i class="icon asterisk"></i>
                </div>
            </div>
        </div>

        <div class="field">
            <label>Пароль:</label>

            <div class="ui left labeled icon input">
                <input type="password">
                <i class="lock icon"></i>

                <div class="ui corner label">
                    <i class="icon asterisk"></i>
                </div>
            </div>
        </div>

        <div class="field">
            <div class="ui toggle checkbox">
                <input type="checkbox" name="${rememberMeParameter}">
                <label>Запомнить меня</label>
            </div>
        </div>

        <div class="ui error message">
            <div class="header">We noticed some issues</div>
        </div>

        <div class="ui submit button">Войти</div>
    </div></div>


<div class="section">
    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <g:if test='${flash.message}'>
                    <div class='alert alert-danger'>
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        ${flash.message}
                    </div>
                </g:if>

                <form action='${postUrl}' method='POST' id='loginForm' class='form-horizontal' role="form"
                      autocomplete='off'>
                    <h2 class="form-signin-heading col-lg-offset-4">Авторизация</h2>

                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label"><g:message
                                code="springSecurity.login.username.label"/>:</label>

                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="username" name="j_username"
                                   placeholder="Имя пользователя">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="password" class="col-sm-2 control-label"><g:message
                                code="springSecurity.login.password.label"/>:</label>

                        <div class="col-sm-8">
                            <input type="password" class="form-control" id="password" name="j_password"
                                   placeholder="Пароль">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="${rememberMeParameter}" id="remember_me"
                                           <g:if test="${hasCookie}">checked="checked"</g:if>/> <g:message
                                        code="springSecurity.login.remember.me.label"/>
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" id="submit" class="btn btn-default"><g:message
                                    code="springSecurity.login.button.label"/></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<r:require modules="application"/>
<script type='text/javascript'>
    <!--
    (function () {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
    // -->
</script>
</body>
</html>
