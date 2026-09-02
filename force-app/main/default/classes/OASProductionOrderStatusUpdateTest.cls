@isTest
private class OASProductionOrderStatusUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductionOrderStatusUpdate productionOrderStatusUpdate1 = OASProductionOrderStatusUpdate.getExample();
        OASProductionOrderStatusUpdate productionOrderStatusUpdate2 = productionOrderStatusUpdate1;
        OASProductionOrderStatusUpdate productionOrderStatusUpdate3 = new OASProductionOrderStatusUpdate();
        OASProductionOrderStatusUpdate productionOrderStatusUpdate4 = productionOrderStatusUpdate3;

        System.assert(productionOrderStatusUpdate1.equals(productionOrderStatusUpdate2));
        System.assert(productionOrderStatusUpdate2.equals(productionOrderStatusUpdate1));
        System.assert(productionOrderStatusUpdate1.equals(productionOrderStatusUpdate1));
        System.assert(productionOrderStatusUpdate3.equals(productionOrderStatusUpdate4));
        System.assert(productionOrderStatusUpdate4.equals(productionOrderStatusUpdate3));
        System.assert(productionOrderStatusUpdate3.equals(productionOrderStatusUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductionOrderStatusUpdate productionOrderStatusUpdate1 = OASProductionOrderStatusUpdate.getExample();
        OASProductionOrderStatusUpdate productionOrderStatusUpdate2 = OASProductionOrderStatusUpdate.getExample();
        OASProductionOrderStatusUpdate productionOrderStatusUpdate3 = new OASProductionOrderStatusUpdate();
        OASProductionOrderStatusUpdate productionOrderStatusUpdate4 = new OASProductionOrderStatusUpdate();

        System.assert(productionOrderStatusUpdate1.equals(productionOrderStatusUpdate2));
        System.assert(productionOrderStatusUpdate2.equals(productionOrderStatusUpdate1));
        System.assert(productionOrderStatusUpdate3.equals(productionOrderStatusUpdate4));
        System.assert(productionOrderStatusUpdate4.equals(productionOrderStatusUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductionOrderStatusUpdate productionOrderStatusUpdate1 = OASProductionOrderStatusUpdate.getExample();
        OASProductionOrderStatusUpdate productionOrderStatusUpdate2 = new OASProductionOrderStatusUpdate();

        System.assertEquals(false, productionOrderStatusUpdate1.equals('foo'));
        System.assertEquals(false, productionOrderStatusUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductionOrderStatusUpdate productionOrderStatusUpdate1 = OASProductionOrderStatusUpdate.getExample();
        OASProductionOrderStatusUpdate productionOrderStatusUpdate2 = new OASProductionOrderStatusUpdate();
        OASProductionOrderStatusUpdate productionOrderStatusUpdate3;

        System.assertEquals(false, productionOrderStatusUpdate1.equals(productionOrderStatusUpdate3));
        System.assertEquals(false, productionOrderStatusUpdate2.equals(productionOrderStatusUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductionOrderStatusUpdate productionOrderStatusUpdate1 = OASProductionOrderStatusUpdate.getExample();
        OASProductionOrderStatusUpdate productionOrderStatusUpdate2 = new OASProductionOrderStatusUpdate();

        System.assertEquals(productionOrderStatusUpdate1.hashCode(), productionOrderStatusUpdate1.hashCode());
        System.assertEquals(productionOrderStatusUpdate2.hashCode(), productionOrderStatusUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductionOrderStatusUpdate productionOrderStatusUpdate1 = OASProductionOrderStatusUpdate.getExample();
        OASProductionOrderStatusUpdate productionOrderStatusUpdate2 = OASProductionOrderStatusUpdate.getExample();
        OASProductionOrderStatusUpdate productionOrderStatusUpdate3 = new OASProductionOrderStatusUpdate();
        OASProductionOrderStatusUpdate productionOrderStatusUpdate4 = new OASProductionOrderStatusUpdate();

        System.assert(productionOrderStatusUpdate1.equals(productionOrderStatusUpdate2));
        System.assert(productionOrderStatusUpdate3.equals(productionOrderStatusUpdate4));
        System.assertEquals(productionOrderStatusUpdate1.hashCode(), productionOrderStatusUpdate2.hashCode());
        System.assertEquals(productionOrderStatusUpdate3.hashCode(), productionOrderStatusUpdate4.hashCode());
    }
}
