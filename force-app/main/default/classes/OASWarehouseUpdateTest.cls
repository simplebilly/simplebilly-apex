@isTest
private class OASWarehouseUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASWarehouseUpdate warehouseUpdate1 = OASWarehouseUpdate.getExample();
        OASWarehouseUpdate warehouseUpdate2 = warehouseUpdate1;
        OASWarehouseUpdate warehouseUpdate3 = new OASWarehouseUpdate();
        OASWarehouseUpdate warehouseUpdate4 = warehouseUpdate3;

        System.assert(warehouseUpdate1.equals(warehouseUpdate2));
        System.assert(warehouseUpdate2.equals(warehouseUpdate1));
        System.assert(warehouseUpdate1.equals(warehouseUpdate1));
        System.assert(warehouseUpdate3.equals(warehouseUpdate4));
        System.assert(warehouseUpdate4.equals(warehouseUpdate3));
        System.assert(warehouseUpdate3.equals(warehouseUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASWarehouseUpdate warehouseUpdate1 = OASWarehouseUpdate.getExample();
        OASWarehouseUpdate warehouseUpdate2 = OASWarehouseUpdate.getExample();
        OASWarehouseUpdate warehouseUpdate3 = new OASWarehouseUpdate();
        OASWarehouseUpdate warehouseUpdate4 = new OASWarehouseUpdate();

        System.assert(warehouseUpdate1.equals(warehouseUpdate2));
        System.assert(warehouseUpdate2.equals(warehouseUpdate1));
        System.assert(warehouseUpdate3.equals(warehouseUpdate4));
        System.assert(warehouseUpdate4.equals(warehouseUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASWarehouseUpdate warehouseUpdate1 = OASWarehouseUpdate.getExample();
        OASWarehouseUpdate warehouseUpdate2 = new OASWarehouseUpdate();

        System.assertEquals(false, warehouseUpdate1.equals('foo'));
        System.assertEquals(false, warehouseUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASWarehouseUpdate warehouseUpdate1 = OASWarehouseUpdate.getExample();
        OASWarehouseUpdate warehouseUpdate2 = new OASWarehouseUpdate();
        OASWarehouseUpdate warehouseUpdate3;

        System.assertEquals(false, warehouseUpdate1.equals(warehouseUpdate3));
        System.assertEquals(false, warehouseUpdate2.equals(warehouseUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASWarehouseUpdate warehouseUpdate1 = OASWarehouseUpdate.getExample();
        OASWarehouseUpdate warehouseUpdate2 = new OASWarehouseUpdate();

        System.assertEquals(warehouseUpdate1.hashCode(), warehouseUpdate1.hashCode());
        System.assertEquals(warehouseUpdate2.hashCode(), warehouseUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASWarehouseUpdate warehouseUpdate1 = OASWarehouseUpdate.getExample();
        OASWarehouseUpdate warehouseUpdate2 = OASWarehouseUpdate.getExample();
        OASWarehouseUpdate warehouseUpdate3 = new OASWarehouseUpdate();
        OASWarehouseUpdate warehouseUpdate4 = new OASWarehouseUpdate();

        System.assert(warehouseUpdate1.equals(warehouseUpdate2));
        System.assert(warehouseUpdate3.equals(warehouseUpdate4));
        System.assertEquals(warehouseUpdate1.hashCode(), warehouseUpdate2.hashCode());
        System.assertEquals(warehouseUpdate3.hashCode(), warehouseUpdate4.hashCode());
    }
}
