<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ attribute name="name" type="java.lang.String" %>
<%@ attribute name="label" type="java.lang.String" %>
<%@ attribute name="type" required="false" type="java.lang.String" %>

<c:if test="${empty type}">
    <c:set var="type" value="text" />
</c:if>


<div class="form-group row">
    <label for="${name}" class="col-sm-2 col-form-label">${label}</label>
    <div class="col-sm-10">
        <input type="${type}" class="form-control" id="${name}" placeholder="${label}">
    </div>
</div>