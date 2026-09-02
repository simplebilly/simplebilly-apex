@isTest
private class OASWarehouseTest {
    @isTest
    private static void equalsSameInstance() {
        OASWarehouse warehouse1 = OASWarehouse.getExample();
        OASWarehouse warehouse2 = warehouse1;
        OASWarehouse warehouse3 = new OASWarehouse();
        OASWarehouse warehouse4 = warehouse3;

        System.assert(warehouse1.equals(warehouse2));
        System.assert(warehouse2.equals(warehouse1));
        System.assert(warehouse1.equals(warehouse1));
        System.assert(warehouse3.equals(warehouse4));
        System.assert(warehouse4.equals(warehouse3));
        System.assert(warehouse3.equals(warehouse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASWarehouse warehouse1 = OASWarehouse.getExample();
        OASWarehouse warehouse2 = OASWarehouse.getExample();
        OASWarehouse warehouse3 = new OASWarehouse();
        OASWarehouse warehouse4 = new OASWarehouse();

        System.assert(warehouse1.equals(warehouse2));
        System.assert(warehouse2.equals(warehouse1));
        System.assert(warehouse3.equals(warehouse4));
        System.assert(warehouse4.equals(warehouse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASWarehouse warehouse1 = OASWarehouse.getExample();
        OASWarehouse warehouse2 = new OASWarehouse();

        System.assertEquals(false, warehouse1.equals('foo'));
        System.assertEquals(false, warehouse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASWarehouse warehouse1 = OASWarehouse.getExample();
        OASWarehouse warehouse2 = new OASWarehouse();
        OASWarehouse warehouse3;

        System.assertEquals(false, warehouse1.equals(warehouse3));
        System.assertEquals(false, warehouse2.equals(warehouse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASWarehouse warehouse1 = OASWarehouse.getExample();
        OASWarehouse warehouse2 = new OASWarehouse();

        System.assertEquals(warehouse1.hashCode(), warehouse1.hashCode());
        System.assertEquals(warehouse2.hashCode(), warehouse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASWarehouse warehouse1 = OASWarehouse.getExample();
        OASWarehouse warehouse2 = OASWarehouse.getExample();
        OASWarehouse warehouse3 = new OASWarehouse();
        OASWarehouse warehouse4 = new OASWarehouse();

        System.assert(warehouse1.equals(warehouse2));
        System.assert(warehouse3.equals(warehouse4));
        System.assertEquals(warehouse1.hashCode(), warehouse2.hashCode());
        System.assertEquals(warehouse3.hashCode(), warehouse4.hashCode());
    }
}
