package com.bodin.repository.internal;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.bodin.common.Type;
import com.bodin.model.Item;
import com.bodin.repository.ItemRepository;

/**
 * @author Bodin Srisompong
 */
@Component
public class ItemRepositoryImpl implements ItemRepository {
    @Override
    public List<Item> findAll() {
        Item item1 = new Item();
        item1.setKey(1001L);
        item1.setName("Kids boy accessories");
        item1.setDescription("N/A");
        item1.setQuantity(987);
        item1.setType(Type.ACTIVE);
        item1.setImageUrl("http://img1.11thcdn.com/g/7/2/5/9/9/9/8/0/0/0/7259998_B_V3.jpg");
        item1.setPrice(110200);
        item1.setDiscount(25);

        Item item2 = new Item();
        item2.setKey(1208L);
        item2.setName("Apple iPad Wi-Fi");
        item2.setDescription("Apple iPad Wi-Fi 128GB Silver (gen5)");
        item2.setQuantity(49);
        item2.setType(Type.INACTIVE);
        item2.setImageUrl("http://img1.11thcdn.com/g/7/3/6/0/7/5/7/0/0/0/7360757_B.jpg");
        item2.setPrice(2490000);
        item2.setDiscount(33.33);

        Item item3 = new Item();
        item3.setKey(5830L);
        item3.setName("WD HDD Ext ");
        item3.setDescription("WD HDD Ext 4TB My Passport (NEW) 2.5 USB3.0 Black");
        item3.setQuantity(1204);
        item3.setType(Type.INACTIVE);
        item3.setImageUrl("http://img1.11thcdn.com/g/7/3/6/2/0/3/4/0/0/0/7362034_A2.jpg");
        item3.setPrice(489000);
        item3.setDiscount(50);

        List<Item> items = new ArrayList<>();
        items.add(item1);
        items.add(item2);
        items.add(item3);

        return items;
    }
}
