<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tc" tagdir="/WEB-INF/tags/common" %>

<link rel="stylesheet" href="/css/bundle/item.css">

<div id="itemList" class="row">
    <c:forEach var="item" items="${items}" varStatus="status">
        <div class="col-sm-4">
            <tc:item item="${item}"/>
        </div>
    </c:forEach>
</div>

<script src="/js/bundle/item.js"></script>