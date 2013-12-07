<html>
<head>
    <meta name='layout' content='main'/>

    <r:require modules="application"/>
</head>

<body>
<div class="section">
    <div class="container">

        <div class="row">
            <h1 class="page-header">Авторизация</h1>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <g:if test='${flash.message}'>
                    <div class='alert alert-bloc'>
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        ${flash.message}
                    </div>
                </g:if>

                <form action='${postUrl}' method='POST' id='loginForm' class='form-horizontal' autocomplete='off'>
                    <div class="control-group">
                        <label class="control-label" for="username"><g:message
                                code="springSecurity.login.username.label"/>:</label>

                        <div class="controls">
                            <input type="text" id="username" name="j_username" placeholder="Имя пользователя">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="password"><g:message
                                code="springSecurity.login.password.label"/>:</label>

                        <div class="controls">
                            <input type="password" id="password" name="j_password" placeholder="Пароль">
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <label class="checkbox">
                                <input type="checkbox" name="${rememberMeParameter}" id="remember_me"
                                       <g:if test="${hasCookie}">checked="checked"</g:if>/>
                                <g:message code="springSecurity.login.remember.me.label"/>
                            </label>
                            <button type="submit" id="submit" class="btn"><g:message
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
