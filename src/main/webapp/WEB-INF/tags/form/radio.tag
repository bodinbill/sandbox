<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ attribute name="label" type="java.lang.String" %>

<div class="form-group row">
    <label class="col-sm-2 col-form-label">${label}</label>
    <div class="col-sm-10">
        <jsp:doBody/>
    </div>
</div>