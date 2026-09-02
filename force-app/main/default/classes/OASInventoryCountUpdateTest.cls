@isTest
private class OASInventoryCountUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASInventoryCountUpdate inventoryCountUpdate1 = OASInventoryCountUpdate.getExample();
        OASInventoryCountUpdate inventoryCountUpdate2 = inventoryCountUpdate1;
        OASInventoryCountUpdate inventoryCountUpdate3 = new OASInventoryCountUpdate();
        OASInventoryCountUpdate inventoryCountUpdate4 = inventoryCountUpdate3;

        System.assert(inventoryCountUpdate1.equals(inventoryCountUpdate2));
        System.assert(inventoryCountUpdate2.equals(inventoryCountUpdate1));
        System.assert(inventoryCountUpdate1.equals(inventoryCountUpdate1));
        System.assert(inventoryCountUpdate3.equals(inventoryCountUpdate4));
        System.assert(inventoryCountUpdate4.equals(inventoryCountUpdate3));
        System.assert(inventoryCountUpdate3.equals(inventoryCountUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInventoryCountUpdate inventoryCountUpdate1 = OASInventoryCountUpdate.getExample();
        OASInventoryCountUpdate inventoryCountUpdate2 = OASInventoryCountUpdate.getExample();
        OASInventoryCountUpdate inventoryCountUpdate3 = new OASInventoryCountUpdate();
        OASInventoryCountUpdate inventoryCountUpdate4 = new OASInventoryCountUpdate();

        System.assert(inventoryCountUpdate1.equals(inventoryCountUpdate2));
        System.assert(inventoryCountUpdate2.equals(inventoryCountUpdate1));
        System.assert(inventoryCountUpdate3.equals(inventoryCountUpdate4));
        System.assert(inventoryCountUpdate4.equals(inventoryCountUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInventoryCountUpdate inventoryCountUpdate1 = OASInventoryCountUpdate.getExample();
        OASInventoryCountUpdate inventoryCountUpdate2 = new OASInventoryCountUpdate();

        System.assertEquals(false, inventoryCountUpdate1.equals('foo'));
        System.assertEquals(false, inventoryCountUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInventoryCountUpdate inventoryCountUpdate1 = OASInventoryCountUpdate.getExample();
        OASInventoryCountUpdate inventoryCountUpdate2 = new OASInventoryCountUpdate();
        OASInventoryCountUpdate inventoryCountUpdate3;

        System.assertEquals(false, inventoryCountUpdate1.equals(inventoryCountUpdate3));
        System.assertEquals(false, inventoryCountUpdate2.equals(inventoryCountUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInventoryCountUpdate inventoryCountUpdate1 = OASInventoryCountUpdate.getExample();
        OASInventoryCountUpdate inventoryCountUpdate2 = new OASInventoryCountUpdate();

        System.assertEquals(inventoryCountUpdate1.hashCode(), inventoryCountUpdate1.hashCode());
        System.assertEquals(inventoryCountUpdate2.hashCode(), inventoryCountUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInventoryCountUpdate inventoryCountUpdate1 = OASInventoryCountUpdate.getExample();
        OASInventoryCountUpdate inventoryCountUpdate2 = OASInventoryCountUpdate.getExample();
        OASInventoryCountUpdate inventoryCountUpdate3 = new OASInventoryCountUpdate();
        OASInventoryCountUpdate inventoryCountUpdate4 = new OASInventoryCountUpdate();

        System.assert(inventoryCountUpdate1.equals(inventoryCountUpdate2));
        System.assert(inventoryCountUpdate3.equals(inventoryCountUpdate4));
        System.assertEquals(inventoryCountUpdate1.hashCode(), inventoryCountUpdate2.hashCode());
        System.assertEquals(inventoryCountUpdate3.hashCode(), inventoryCountUpdate4.hashCode());
    }
}
