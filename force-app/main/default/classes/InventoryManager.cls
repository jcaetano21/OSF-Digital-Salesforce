public with sharing class InventoryManager {
    private class Item {
        public String name { get; set; }
        public Integer quantity { get; set; }

        public Item(String n, Integer q) {
            this.name = n;
            this.quantity = q;
        }
    }

    private Map<String, Item> inventoryMap;

    public InventoryManager() {
        this.inventoryMap = new Map<String, Item>();
    }

    public void addItem(String itemName, Integer quantity) {
        if (itemName == null || quantity == null || quantity < 0) {
            return;
        }

        if (inventoryMap.containsKey(itemName)) {
            inventoryMap.get(itemName).quantity += quantity;
        } else {
            Item newItem = new Item(itemName, quantity);
            inventoryMap.put(itemName, newItem);
        }
    }

    public void removeItem(String itemName, Integer quantity) {
        if (itemName == null || quantity == null || quantity < 0) {
            return;
        }

        if (inventoryMap.containsKey(itemName)) {
            Item currentItem = inventoryMap.get(itemName);

            if (quantity >= currentItem.quantity) {
                currentItem.quantity = 0;
            } else {
                currentItem.quantity -= quantity;
            }
        }
    }

    public Integer getQuantity(String itemName) {
        if (itemName == null) {
            return null;
        }

        if (inventoryMap.containsKey(itemName)) {
            return inventoryMap.get(itemName).quantity;
        }

        return null;
    }
}