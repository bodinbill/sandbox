package com.bodin.model;

import com.bodin.common.Type;

import lombok.Data;

/**
 * @author Bodin Srisompong
 */
@Data
public class Item {
    private Long key;
    private String name;
    private String description;
    private int quantity;
    private Type type;
    private String imageUrl;
    private int price;
    private double discount;
}
