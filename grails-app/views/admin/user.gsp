<!DOCTYPE html>
<html lang="ru">
<head>
    <meta name="layout" content="main"/>

    <r:require modules="application"/>
</head>

<body>
<tmpl:menu current="user"/>

<div class="container">
    <div class="row">
        <g:form action='...' method='POST' class='form-horizontal' role="form">
            <div class="form-group">
                <label for="username" class="col-sm-2 control-label"><g:message
                        code="springSecurity.login.username.label"/>:</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="username" name="j_username" value="${user.username}">
                </div>
            </div>
            <div class="form-group">
                <label for="firstName" class="col-sm-2 control-label">Фамилия:</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="firstName" name="j_password" value="${user.firstName}">
                </div>
            </div>
            <div class="form-group">
                <label for="lastName" class="col-sm-2 control-label">Имя:</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="lastName" name="j_password" value="${user.lastName}">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" name="" id="remember_me" <g:if test="${hasCookie}">checked="checked"</g:if>/> <g:message code="springSecurity.login.remember.me.label"/>
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
        </g:form>
    </div>
</div>

</body>
</html>