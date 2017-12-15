<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ attribute name="item" type="com.bodin.model.web.WebItem" %>
<%@ attribute name="index" type="java.lang.Integer" %>

<div class="item">
    <img src="${item.entity.imageUrl}">
    <h5>${item.title}</h5>
    <div class="price-c">
        <label>Price</label>
        <span class="full-price">${item.priceText}</span>
        ${item.totalPriceText} THB
    </div>
    <div class="qty">
        <label>Qty</label>
        ${item.qtyText}
    </div>
    <div class="show-details-c">
        <div class="show-details btn btn-info" v-on:click="toggle">Show details</div>
        <div class="collapse" v-if="isVisible">${item.entity.description}</div>
    </div>
</div>