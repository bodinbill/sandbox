<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.util.List" %>
<%@ page import="com.bodin.model.Item" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<style>
    .item {
        border: 1px solid #e7e7e7;
        padding: 10px;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;;
    }

    .item img {
        display: block;
        width: 100%;
    }

    .item .full-price {
        color: #f00;
        text-decoration: line-through;
    }

    .item h5, .item .price-c, .item .show-details-c {
        margin-top: 15px;
    }

    .item .qty {
        font-size: 14px;
        color: #666;
    }
</style>
<div class="row">
    <%
        DecimalFormat formatter = new DecimalFormat("#,##0");

        List<Item> items = (List<Item>) request.getAttribute("items");
        for (Item item : items) {
            String title = item.getName() + " (id=" + item.getKey() + ")";
            double totalPrice = item.getPrice() * (100 - item.getDiscount()) / 10000.0;
            String priceText = formatter.format(item.getPrice() / 100);
            String totalPriceText = formatter.format(totalPrice);
            String qtyText = formatter.format(item.getQuantity());
    %>


    <div class="col-sm-4">
        <div class="item">
            <img src="<%=item.getImageUrl() %>">
            <h5><%=title %>
            </h5>
            <div class="price-c">
                <label>Price</label>
                <span class="full-price"><%=priceText %></span>
                <%=totalPriceText %> THB
            </div>
            <div class="qty">
                <label>Qty</label>
                <%=qtyText %>
            </div>
            <div class="show-details-c">
                <div class="show-details btn btn-info">Show details</div>
                <div class="collapse"><%=item.getDescription() %>
                </div>
            </div>
        </div>
    </div>

    <%
        }
    %>

    <script>
        $(".item").each(function () {
            var me = this;
            $(me).find(".show-details").click(function () {
                $(me).find(".collapse").toggle();
            });
        });
    </script>
</div>