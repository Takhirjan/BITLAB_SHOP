<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 30.04.2023
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="title.jsp" %>
</head>
<style>
    html,
    body {
        height: 100%;
    }
    .form-signin {
        max-width: 330px;
        padding: 15px;
    }

    .form-signin .form-floating:focus-within {
        z-index: 2;
    }

    .form-signin input[type="email"] {
        margin-bottom: -1px;
        border-bottom-right-radius: 0;
        border-bottom-left-radius: 0;
    }

    .form-signin input[type="password"] {
        margin-bottom: 10px;
        border-top-left-radius: 0;
        border-top-right-radius: 0;
    }
</style>
<body>
<%@include file="navbar.jsp"%>
<div class="container">
    <div class="row mt-5" >
        <div class="col-sm-6">
            <%
                String passwordError=request.getParameter("passwordError");
                if(passwordError!=null){
            %>
            <div class="alert alert-danger alert-dismissible fade show w-75" role="alert" style="margin-left: 65%" >
                <strong>Incorrect password!</strong>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <%
                }
            %>
        </div>
    </div>
</div>

<main class="form-signin w-100 m-auto">
<form action="login" method="post">
    <img class="mb-4" style="margin-left: 50px"
         src="https://portal.bitlab.kz/pluginfile.php/1/core_admin/logo/0x200/1682147778/logo_bitlab_header.png"
         alt="" width="200" height="100" >
    <h1 class="h3 mb-3 fw-normal text-center">Please sign in</h1>

    <div class="form-floating">
        <input type="email"  name="email" class="form-control" id="floatingInput" placeholder="name@example.com">
        <label for="floatingInput" name="email">Email address</label>
    </div>
    <div class="form-floating">
        <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password">
        <label for="floatingPassword">Password</label>
    </div>

    <div class="checkbox mb-3">
        <label>
            <input type="checkbox" value="remember-me"> Remember me
        </label>
    </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>

</form>
</main>
</body>
</html>
