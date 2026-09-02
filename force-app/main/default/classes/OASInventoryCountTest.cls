@isTest
private class OASInventoryCountTest {
    @isTest
    private static void equalsSameInstance() {
        OASInventoryCount inventoryCount1 = OASInventoryCount.getExample();
        OASInventoryCount inventoryCount2 = inventoryCount1;
        OASInventoryCount inventoryCount3 = new OASInventoryCount();
        OASInventoryCount inventoryCount4 = inventoryCount3;

        System.assert(inventoryCount1.equals(inventoryCount2));
        System.assert(inventoryCount2.equals(inventoryCount1));
        System.assert(inventoryCount1.equals(inventoryCount1));
        System.assert(inventoryCount3.equals(inventoryCount4));
        System.assert(inventoryCount4.equals(inventoryCount3));
        System.assert(inventoryCount3.equals(inventoryCount3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInventoryCount inventoryCount1 = OASInventoryCount.getExample();
        OASInventoryCount inventoryCount2 = OASInventoryCount.getExample();
        OASInventoryCount inventoryCount3 = new OASInventoryCount();
        OASInventoryCount inventoryCount4 = new OASInventoryCount();

        System.assert(inventoryCount1.equals(inventoryCount2));
        System.assert(inventoryCount2.equals(inventoryCount1));
        System.assert(inventoryCount3.equals(inventoryCount4));
        System.assert(inventoryCount4.equals(inventoryCount3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInventoryCount inventoryCount1 = OASInventoryCount.getExample();
        OASInventoryCount inventoryCount2 = new OASInventoryCount();

        System.assertEquals(false, inventoryCount1.equals('foo'));
        System.assertEquals(false, inventoryCount2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInventoryCount inventoryCount1 = OASInventoryCount.getExample();
        OASInventoryCount inventoryCount2 = new OASInventoryCount();
        OASInventoryCount inventoryCount3;

        System.assertEquals(false, inventoryCount1.equals(inventoryCount3));
        System.assertEquals(false, inventoryCount2.equals(inventoryCount3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInventoryCount inventoryCount1 = OASInventoryCount.getExample();
        OASInventoryCount inventoryCount2 = new OASInventoryCount();

        System.assertEquals(inventoryCount1.hashCode(), inventoryCount1.hashCode());
        System.assertEquals(inventoryCount2.hashCode(), inventoryCount2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInventoryCount inventoryCount1 = OASInventoryCount.getExample();
        OASInventoryCount inventoryCount2 = OASInventoryCount.getExample();
        OASInventoryCount inventoryCount3 = new OASInventoryCount();
        OASInventoryCount inventoryCount4 = new OASInventoryCount();

        System.assert(inventoryCount1.equals(inventoryCount2));
        System.assert(inventoryCount3.equals(inventoryCount4));
        System.assertEquals(inventoryCount1.hashCode(), inventoryCount2.hashCode());
        System.assertEquals(inventoryCount3.hashCode(), inventoryCount4.hashCode());
    }
}
