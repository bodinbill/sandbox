package com.bodin.model.web;

import java.text.DecimalFormat;

import com.bodin.model.Item;

import lombok.Getter;

/**
 * @author Bodin Srisompong
 */
public class WebItem {
    private static final DecimalFormat FORMATTER = new DecimalFormat("#,##0");
    @Getter
    private Item entity;

    public WebItem(Item item) {
        this.entity = item;
    }

    public String getTitle() {
        return entity.getName() + " (id=" + entity.getKey() + ")";
    }

    public String getPriceText() {
        return FORMATTER.format(entity.getPrice() / 100);
    }

    public String getTotalPriceText() {
        double totalPrice = entity.getPrice() * (100 - entity.getDiscount()) / 10000.0;
        return FORMATTER.format(totalPrice);
    }

    public String getQtyText() {
        return FORMATTER.format(entity.getQuantity());
    }
}
