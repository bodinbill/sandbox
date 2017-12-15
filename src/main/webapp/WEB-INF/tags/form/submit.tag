<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ attribute name="label" type="java.lang.String" %>

<div class="form-group row">
    <div class="offset-sm-2 col-sm-10">
        <button type="submit" class="btn btn-primary">${label}</button>
    </div>
</div>