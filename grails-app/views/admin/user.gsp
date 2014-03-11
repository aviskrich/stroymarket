<!DOCTYPE html>
<html lang="ru">
<head>
    <meta name="layout" content="main"/>

    <r:require modules="application"/>
</head>

<body>
<tmpl:menu current="user"/>

<div class="container">
    <div class="row" style="margin-top: 10px">
        <g:form action='updateUser' method='POST' class='form-horizontal' role="form" params="[user: user]">
            <div class="form-group">
                <label for="username" class="col-sm-2 control-label"><g:message
                        code="springSecurity.login.username.label"/>:</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="username" name="username" value="${user.username}">
                </div>
            </div>
            <div class="form-group" id="passwordGroup">
                <label for="username" class="col-sm-2 control-label"><g:message
                        code="springSecurity.login.password.label"/>:</label>
                <div class="col-sm-8">
                    <input type="password" class="form-control" id="password1" name="password1" value="" autocomplete="off">
                </div>
                <div class="col-sm-8 col-sm-offset-2" style="margin-top: 12px;">
                    <input type="password" class="form-control" id="password2" name="password2" value="" autocomplete="off">
                </div>
            </div>
            <div class="form-group">
                <label for="firstName" class="col-sm-2 control-label">Имя:</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="firstName" name="firstName" value="${user.firstName}">
                </div>
            </div>
            <div class="form-group">
                <label for="lastName" class="col-sm-2 control-label">Фамилия:</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="lastName" name="lastName" value="${user.lastName}">
                </div>
            </div>
            <div class="form-group">
                <label for="lastName" class="col-sm-2 control-label">Группа:</label>
                <div class="col-sm-8">
                    <g:select class="form-control" name="roles" from="${roles}" value="${user.roles}"/>
                </div>
            </div>

            <input style="display: none" id="userId" name="userId" value="${user.id}">
            <input style="display: none" id="newuser" name="newuser" value="${newuser}">
            <div class="form-group">
                <div class="col-sm-offset-8 col-sm-2 text-right">
                    <button type="submit" id="submit" class="btn btn-default">Сохранить</button>
                </div>
            </div>
        </g:form>
    </div>
</div>

<script lang="javascript">
    $(document).ready(function () {
        $(".form-control").keyup(function () {
            var passwordGroup = $("#passwordGroup");
            var password1 = $("#password1");
            var password2 = $("#password2");

            if (password1.val() != password2.val()) {
                passwordGroup.removeClass("has-success");
                passwordGroup.addClass("has-error");
                $("#submit").addClass("disabled");
            } else {
                if ($("#newuser").val() == "true" && password1.val() == "") {
                    passwordGroup.removeClass("has-success");
                    passwordGroup.addClass("has-error");
                    $("#submit").addClass("disabled");
                } else {
                    passwordGroup.removeClass("has-error");
                    passwordGroup.addClass("has-success");
                    $("#submit").removeClass("disabled");
                }
            }
        })
    });
</script>

</body>
</html>