package com.bodin.repository;

import java.util.List;

import com.bodin.model.Item;

/**
 * @author Bodin Srisompong
 */
public interface ItemRepository {
    List<Item> findAll();
}
