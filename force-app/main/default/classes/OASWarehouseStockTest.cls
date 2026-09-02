@isTest
private class OASWarehouseStockTest {
    @isTest
    private static void equalsSameInstance() {
        OASWarehouseStock warehouseStock1 = OASWarehouseStock.getExample();
        OASWarehouseStock warehouseStock2 = warehouseStock1;
        OASWarehouseStock warehouseStock3 = new OASWarehouseStock();
        OASWarehouseStock warehouseStock4 = warehouseStock3;

        System.assert(warehouseStock1.equals(warehouseStock2));
        System.assert(warehouseStock2.equals(warehouseStock1));
        System.assert(warehouseStock1.equals(warehouseStock1));
        System.assert(warehouseStock3.equals(warehouseStock4));
        System.assert(warehouseStock4.equals(warehouseStock3));
        System.assert(warehouseStock3.equals(warehouseStock3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASWarehouseStock warehouseStock1 = OASWarehouseStock.getExample();
        OASWarehouseStock warehouseStock2 = OASWarehouseStock.getExample();
        OASWarehouseStock warehouseStock3 = new OASWarehouseStock();
        OASWarehouseStock warehouseStock4 = new OASWarehouseStock();

        System.assert(warehouseStock1.equals(warehouseStock2));
        System.assert(warehouseStock2.equals(warehouseStock1));
        System.assert(warehouseStock3.equals(warehouseStock4));
        System.assert(warehouseStock4.equals(warehouseStock3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASWarehouseStock warehouseStock1 = OASWarehouseStock.getExample();
        OASWarehouseStock warehouseStock2 = new OASWarehouseStock();

        System.assertEquals(false, warehouseStock1.equals('foo'));
        System.assertEquals(false, warehouseStock2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASWarehouseStock warehouseStock1 = OASWarehouseStock.getExample();
        OASWarehouseStock warehouseStock2 = new OASWarehouseStock();
        OASWarehouseStock warehouseStock3;

        System.assertEquals(false, warehouseStock1.equals(warehouseStock3));
        System.assertEquals(false, warehouseStock2.equals(warehouseStock3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASWarehouseStock warehouseStock1 = OASWarehouseStock.getExample();
        OASWarehouseStock warehouseStock2 = new OASWarehouseStock();

        System.assertEquals(warehouseStock1.hashCode(), warehouseStock1.hashCode());
        System.assertEquals(warehouseStock2.hashCode(), warehouseStock2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASWarehouseStock warehouseStock1 = OASWarehouseStock.getExample();
        OASWarehouseStock warehouseStock2 = OASWarehouseStock.getExample();
        OASWarehouseStock warehouseStock3 = new OASWarehouseStock();
        OASWarehouseStock warehouseStock4 = new OASWarehouseStock();

        System.assert(warehouseStock1.equals(warehouseStock2));
        System.assert(warehouseStock3.equals(warehouseStock4));
        System.assertEquals(warehouseStock1.hashCode(), warehouseStock2.hashCode());
        System.assertEquals(warehouseStock3.hashCode(), warehouseStock4.hashCode());
    }
}
