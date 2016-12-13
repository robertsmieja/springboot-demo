<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Country - Edit</title>
    <link type="text/css" href="webjars/bootstrap/3.3.7-1/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
<h2>Edit Country</h2>
<form action="/country/update" method="post">
    <input type="hidden" name="id" value="${country.id}">
    <table class="table table-bordered">
        <tbody>
        <tr><th>Name</th><td><input type="text" name="name" required="required" value="${country.name}"></td></tr>
        <tr><td colspan="2"><input type="submit" value="Edit Country" class="btn btn-success"></tr>
        </tbody>
    </table>
</form>
<a href="/country/index" class="btn btn-success">Back</a>

<script type="application/javascript" src="webjars/jquery/3.1.1-1/jquery.js"></script>
<script type="application/javascript" src="webjars/bootstrap/3.3.7-1/js/bootstrap.js"></script>

</body>
</html>