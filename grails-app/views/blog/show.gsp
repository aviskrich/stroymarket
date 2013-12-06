<%@ page import="java.text.DateFormat" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<%@page defaultCodec="html" %>
<div class="container">

    <div class="row">

        <div class="col-lg-12">
            <ol class="breadcrumb">
                <li><a href="${createLink(uri: "/")}">На главную</a></li>
                <li><a href="${createLink(action: "list")}">Статьи</a></li>
                <li class="active">${blog.postName}</li>
            </ol>
            <h1 class="page-header">${blog.postName}</h1>

        </div>

    </div>

    <div class="row">

        <div class="col-lg-8">
            <p>${blog.prePost}</p>
            <a href="#"><img src="${blog.imgSrc}" class="img-responsive"></a>
            <p>${raw(blog.postContent)}</p>

            <p class="muted"> <i class="icon-twitter"></i>автор: <a href="#">Иванов Иван Иванович</a></p>
            <p class="muted"> <i class="icon-time"></i>${blog.pubDate}</p>
        </div>
    </div>

    <div class="row">
        <ul class="pager">
            <g:if test="${hasPrev}"><li class="previous"><a href="${createLink(action: "show", params: [blogid: blog.getId()-1])}">&larr; Предыдущая</a></li> </g:if>
            <g:if test="${hasNext}"><li class="next"><a href="${createLink(action: "show", params: [blogid: blog.getId()+1])}">Следующая &rarr;</a></li></g:if>
        </ul>
    </div>

</div><!-- /.container -->
</body>
</html>