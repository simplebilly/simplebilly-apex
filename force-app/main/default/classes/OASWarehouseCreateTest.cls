@isTest
private class OASWarehouseCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASWarehouseCreate warehouseCreate1 = OASWarehouseCreate.getExample();
        OASWarehouseCreate warehouseCreate2 = warehouseCreate1;
        OASWarehouseCreate warehouseCreate3 = new OASWarehouseCreate();
        OASWarehouseCreate warehouseCreate4 = warehouseCreate3;

        System.assert(warehouseCreate1.equals(warehouseCreate2));
        System.assert(warehouseCreate2.equals(warehouseCreate1));
        System.assert(warehouseCreate1.equals(warehouseCreate1));
        System.assert(warehouseCreate3.equals(warehouseCreate4));
        System.assert(warehouseCreate4.equals(warehouseCreate3));
        System.assert(warehouseCreate3.equals(warehouseCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASWarehouseCreate warehouseCreate1 = OASWarehouseCreate.getExample();
        OASWarehouseCreate warehouseCreate2 = OASWarehouseCreate.getExample();
        OASWarehouseCreate warehouseCreate3 = new OASWarehouseCreate();
        OASWarehouseCreate warehouseCreate4 = new OASWarehouseCreate();

        System.assert(warehouseCreate1.equals(warehouseCreate2));
        System.assert(warehouseCreate2.equals(warehouseCreate1));
        System.assert(warehouseCreate3.equals(warehouseCreate4));
        System.assert(warehouseCreate4.equals(warehouseCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASWarehouseCreate warehouseCreate1 = OASWarehouseCreate.getExample();
        OASWarehouseCreate warehouseCreate2 = new OASWarehouseCreate();

        System.assertEquals(false, warehouseCreate1.equals('foo'));
        System.assertEquals(false, warehouseCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASWarehouseCreate warehouseCreate1 = OASWarehouseCreate.getExample();
        OASWarehouseCreate warehouseCreate2 = new OASWarehouseCreate();
        OASWarehouseCreate warehouseCreate3;

        System.assertEquals(false, warehouseCreate1.equals(warehouseCreate3));
        System.assertEquals(false, warehouseCreate2.equals(warehouseCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASWarehouseCreate warehouseCreate1 = OASWarehouseCreate.getExample();
        OASWarehouseCreate warehouseCreate2 = new OASWarehouseCreate();

        System.assertEquals(warehouseCreate1.hashCode(), warehouseCreate1.hashCode());
        System.assertEquals(warehouseCreate2.hashCode(), warehouseCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASWarehouseCreate warehouseCreate1 = OASWarehouseCreate.getExample();
        OASWarehouseCreate warehouseCreate2 = OASWarehouseCreate.getExample();
        OASWarehouseCreate warehouseCreate3 = new OASWarehouseCreate();
        OASWarehouseCreate warehouseCreate4 = new OASWarehouseCreate();

        System.assert(warehouseCreate1.equals(warehouseCreate2));
        System.assert(warehouseCreate3.equals(warehouseCreate4));
        System.assertEquals(warehouseCreate1.hashCode(), warehouseCreate2.hashCode());
        System.assertEquals(warehouseCreate3.hashCode(), warehouseCreate4.hashCode());
    }
}
