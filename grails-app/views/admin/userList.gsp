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
        <table class="table table-hover">
            <thead>
            <tr>
                <th>Имя пользователя</th>
                <th>Группы</th>
                <th>Имя</th>
                <th>Фамилия</th>
                <th></th>
            </tr>
            </thead>

            <tbody>
            <g:each in="${users}" var="user" status="i">
                <tr>
                    <td>${user.username}</td>
                    <td>${user.roles}</td>
                    <td>${user.firstName}</td>
                    <td>${user.lastName}</td>
                    <td><g:link action="user" params="[userId: user.id]"><span class="glyphicon glyphicon-cog"></span> </g:link> </td>
                </tr>
            </g:each>
            </tbody>
        </table>
        <div class="col-sm-offset-11 col-sm-1">
            <g:link action="createUser" class="btn btn-default">Добавить</g:link>
        </div>
    </div>
</div>

<r:require modules="application"/>
</body>
</html>