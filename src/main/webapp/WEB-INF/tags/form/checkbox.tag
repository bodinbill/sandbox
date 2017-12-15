<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ attribute name="name" type="java.lang.String" %>
<%@ attribute name="label" type="java.lang.String" %>
<%@ attribute name="placeholder" type="java.lang.String" %>

<div class="form-group row">
    <label class="col-sm-2">${label}</label>
    <div class="col-sm-10">
        <div class="form-check">
            <label class="form-check-label">
                <input class="form-check-input" name="${name}" type="checkbox"> ${placeholder}
            </label>
        </div>
    </div>
</div>