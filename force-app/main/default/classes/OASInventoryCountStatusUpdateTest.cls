@isTest
private class OASInventoryCountStatusUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASInventoryCountStatusUpdate inventoryCountStatusUpdate1 = OASInventoryCountStatusUpdate.getExample();
        OASInventoryCountStatusUpdate inventoryCountStatusUpdate2 = inventoryCountStatusUpdate1;
        OASInventoryCountStatusUpdate inventoryCountStatusUpdate3 = new OASInventoryCountStatusUpdate();
        OASInventoryCountStatusUpdate inventoryCountStatusUpdate4 = inventoryCountStatusUpdate3;

        System.assert(inventoryCountStatusUpdate1.equals(inventoryCountStatusUpdate2));
        System.assert(inventoryCountStatusUpdate2.equals(inventoryCountStatusUpdate1));
        System.assert(inventoryCountStatusUpdate1.equals(inventoryCountStatusUpdate1));
        System.assert(inventoryCountStatusUpdate3.equals(inventoryCountStatusUpdate4));
        System.assert(inventoryCountStatusUpdate4.equals(inventoryCountStatusUpdate3));
        System.assert(inventoryCountStatusUpdate3.equals(inventoryCountStatusUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInventoryCountStatusUpdate inventoryCountStatusUpdate1 = OASInventoryCountStatusUpdate.getExample();
        OASInventoryCountStatusUpdate inventoryCountStatusUpdate2 = OASInventoryCountStatusUpdate.getExample();
        OASInventoryCountStatusUpdate inventoryCountStatusUpdate3 = new OASInventoryCountStatusUpdate();
        OASInventoryCountStatusUpdate inventoryCountStatusUpdate4 = new OASInventoryCountStatusUpdate();

        System.assert(inventoryCountStatusUpdate1.equals(inventoryCountStatusUpdate2));
        System.assert(inventoryCountStatusUpdate2.equals(inventoryCountStatusUpdate1));
        System.assert(inventoryCountStatusUpdate3.equals(inventoryCountStatusUpdate4));
        System.assert(inventoryCountStatusUpdate4.equals(inventoryCountStatusUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInventoryCountStatusUpdate inventoryCountStatusUpdate1 = OASInventoryCountStatusUpdate.getExample();
        OASInventoryCountStatusUpdate inventoryCountStatusUpdate2 = new OASInventoryCountStatusUpdate();

        System.assertEquals(false, inventoryCountStatusUpdate1.equals('foo'));
        System.assertEquals(false, inventoryCountStatusUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInventoryCountStatusUpdate inventoryCountStatusUpdate1 = OASInventoryCountStatusUpdate.getExample();
        OASInventoryCountStatusUpdate inventoryCountStatusUpdate2 = new OASInventoryCountStatusUpdate();
        OASInventoryCountStatusUpdate inventoryCountStatusUpdate3;

        System.assertEquals(false, inventoryCountStatusUpdate1.equals(inventoryCountStatusUpdate3));
        System.assertEquals(false, inventoryCountStatusUpdate2.equals(inventoryCountStatusUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInventoryCountStatusUpdate inventoryCountStatusUpdate1 = OASInventoryCountStatusUpdate.getExample();
        OASInventoryCountStatusUpdate inventoryCountStatusUpdate2 = new OASInventoryCountStatusUpdate();

        System.assertEquals(inventoryCountStatusUpdate1.hashCode(), inventoryCountStatusUpdate1.hashCode());
        System.assertEquals(inventoryCountStatusUpdate2.hashCode(), inventoryCountStatusUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInventoryCountStatusUpdate inventoryCountStatusUpdate1 = OASInventoryCountStatusUpdate.getExample();
        OASInventoryCountStatusUpdate inventoryCountStatusUpdate2 = OASInventoryCountStatusUpdate.getExample();
        OASInventoryCountStatusUpdate inventoryCountStatusUpdate3 = new OASInventoryCountStatusUpdate();
        OASInventoryCountStatusUpdate inventoryCountStatusUpdate4 = new OASInventoryCountStatusUpdate();

        System.assert(inventoryCountStatusUpdate1.equals(inventoryCountStatusUpdate2));
        System.assert(inventoryCountStatusUpdate3.equals(inventoryCountStatusUpdate4));
        System.assertEquals(inventoryCountStatusUpdate1.hashCode(), inventoryCountStatusUpdate2.hashCode());
        System.assertEquals(inventoryCountStatusUpdate3.hashCode(), inventoryCountStatusUpdate4.hashCode());
    }
}
