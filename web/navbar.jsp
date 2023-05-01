<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 25.04.2023
  Time: 18:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
        <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
            <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
            <span class="fs-4"> <%=sitename%></span>
        </a>

        <ul class="nav nav-pills">
            <li class="nav-item"><a href="#" class="nav-link active" aria-current="page">Top Sales</a></li>
            <li class="nav-item"><a href="#" class="nav-link">New Sales</a></li>
            <li class="nav-item"><a href="#" class="nav-link">By Category</a></li>
            <li class="nav-item"><a href="/login" class="nav-link">Sign in</a></li>
        </ul>
    </header>
</div>
</body>
</html>
