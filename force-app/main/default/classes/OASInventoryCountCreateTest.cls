@isTest
private class OASInventoryCountCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASInventoryCountCreate inventoryCountCreate1 = OASInventoryCountCreate.getExample();
        OASInventoryCountCreate inventoryCountCreate2 = inventoryCountCreate1;
        OASInventoryCountCreate inventoryCountCreate3 = new OASInventoryCountCreate();
        OASInventoryCountCreate inventoryCountCreate4 = inventoryCountCreate3;

        System.assert(inventoryCountCreate1.equals(inventoryCountCreate2));
        System.assert(inventoryCountCreate2.equals(inventoryCountCreate1));
        System.assert(inventoryCountCreate1.equals(inventoryCountCreate1));
        System.assert(inventoryCountCreate3.equals(inventoryCountCreate4));
        System.assert(inventoryCountCreate4.equals(inventoryCountCreate3));
        System.assert(inventoryCountCreate3.equals(inventoryCountCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInventoryCountCreate inventoryCountCreate1 = OASInventoryCountCreate.getExample();
        OASInventoryCountCreate inventoryCountCreate2 = OASInventoryCountCreate.getExample();
        OASInventoryCountCreate inventoryCountCreate3 = new OASInventoryCountCreate();
        OASInventoryCountCreate inventoryCountCreate4 = new OASInventoryCountCreate();

        System.assert(inventoryCountCreate1.equals(inventoryCountCreate2));
        System.assert(inventoryCountCreate2.equals(inventoryCountCreate1));
        System.assert(inventoryCountCreate3.equals(inventoryCountCreate4));
        System.assert(inventoryCountCreate4.equals(inventoryCountCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInventoryCountCreate inventoryCountCreate1 = OASInventoryCountCreate.getExample();
        OASInventoryCountCreate inventoryCountCreate2 = new OASInventoryCountCreate();

        System.assertEquals(false, inventoryCountCreate1.equals('foo'));
        System.assertEquals(false, inventoryCountCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInventoryCountCreate inventoryCountCreate1 = OASInventoryCountCreate.getExample();
        OASInventoryCountCreate inventoryCountCreate2 = new OASInventoryCountCreate();
        OASInventoryCountCreate inventoryCountCreate3;

        System.assertEquals(false, inventoryCountCreate1.equals(inventoryCountCreate3));
        System.assertEquals(false, inventoryCountCreate2.equals(inventoryCountCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInventoryCountCreate inventoryCountCreate1 = OASInventoryCountCreate.getExample();
        OASInventoryCountCreate inventoryCountCreate2 = new OASInventoryCountCreate();

        System.assertEquals(inventoryCountCreate1.hashCode(), inventoryCountCreate1.hashCode());
        System.assertEquals(inventoryCountCreate2.hashCode(), inventoryCountCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInventoryCountCreate inventoryCountCreate1 = OASInventoryCountCreate.getExample();
        OASInventoryCountCreate inventoryCountCreate2 = OASInventoryCountCreate.getExample();
        OASInventoryCountCreate inventoryCountCreate3 = new OASInventoryCountCreate();
        OASInventoryCountCreate inventoryCountCreate4 = new OASInventoryCountCreate();

        System.assert(inventoryCountCreate1.equals(inventoryCountCreate2));
        System.assert(inventoryCountCreate3.equals(inventoryCountCreate4));
        System.assertEquals(inventoryCountCreate1.hashCode(), inventoryCountCreate2.hashCode());
        System.assertEquals(inventoryCountCreate3.hashCode(), inventoryCountCreate4.hashCode());
    }
}
