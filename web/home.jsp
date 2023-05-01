<%@ page import="java.util.ArrayList" %>
<%@ page import="Models.Items" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 25.04.2023
  Time: 18:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main page</title>
    <%@include file="title.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container mt-3">
    <div class="row">
        <h4 class="text-center fs-1">
            Welcome to <%=sitename%>
        </h4>
        <p class="mt-3 text-secondary text-center">Electronic devices with high quality and services</p>
    </div>
</div>
<%
    ArrayList<Items> items = (ArrayList<Items>) request.getAttribute("tovary");
    if (items != null) {


%>
<div class="container">
    <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">

        <%
            for (Items items1 : items) {

        %>
        <div class="col">
            <div class="card mb-4 rounded-3 shadow-lg">
                <div class="card-header py-3">
                    <h4 class="my-0 fw-normal"><%=items1.getName()%>
                    </h4>
                </div>
                <div class="card-body">
                    <h1 class="card-title pricing-card-title">$<%=items1.getPrice()%>
                    </h1>
                    <ul class="list-unstyled mt-3 mb-4 text-break">
                        <li><%=items1.getDescription()%>
                        </li>
                    </ul>
                    <button type="button" class="w-100 btn btn-lg btn-success">Buy now</button>
                </div>
            </div>
            </div>
        <%
            }
        %>
    </div>
</div>
<%


    }
%>


</body>
</html>
