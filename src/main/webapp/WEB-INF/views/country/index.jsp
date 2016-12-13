<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Country</title>
    <link type="text/css" href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
<h2>List of Countries</h2>
<table class="table table-bordered">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Edit</th>
    </tr>
    <tbody>
    <c:forEach items="${countries}" var="country" varStatus="itr">
        <tr>
            <%--<td>${itr.index+1}</td>--%>
            <td>${country.id}</td>
                <td>${country.name}</td>
            <td><a href="/country/edit/${country.id}" class="btn btn-warning">Edit</a> </td>
        </tr>
    </c:forEach>
    </tbody>

</table>
<a href="/country/create" class="btn btn-success">Add Country</a>

<script type="application/javascript" src="webjars/jquery/3.1.1-1/jquery.js"></script>
<script type="application/javascript" src="webjars/bootstrap/3.3.7-1/js/bootstrap.js"></script>

</body>
</html>