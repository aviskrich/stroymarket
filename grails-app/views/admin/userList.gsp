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
                    <td><g:link action="user" params="[userid: user.id]"><span class="glyphicon glyphicon-cog"></span> </g:link> </td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
</div>

<r:require modules="application"/>
</body>
</html>