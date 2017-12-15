<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ attribute name="label" type="java.lang.String" %>
<%@ attribute name="name" type="java.lang.String" %>
<%@ attribute name="value" type="java.lang.String" %>
<%@ attribute name="index" type="java.lang.Integer" %>
<%@ attribute name="checked" type="java.lang.Boolean" required="false" %>
<%@ attribute name="disabled" type="java.lang.Boolean" required="false" %>

<c:if test="${checked}">
    <c:set var="attr" value=" checked" />
</c:if>
<c:if test="${disabled}">
    <c:set var="attr" value="${attr} disabled" />
    <c:set var="cssClass" value=" disabled" />
</c:if>

<div class="form-check${cssClass}">
    <label class="form-check-label">
        <input class="form-check-input" type="radio" name="${name}" id="${name}${index}" value="${value}"${attr}>
        ${label}
    </label>
</div>