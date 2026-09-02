@isTest
private class OASProductionOrderTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductionOrder productionOrder1 = OASProductionOrder.getExample();
        OASProductionOrder productionOrder2 = productionOrder1;
        OASProductionOrder productionOrder3 = new OASProductionOrder();
        OASProductionOrder productionOrder4 = productionOrder3;

        System.assert(productionOrder1.equals(productionOrder2));
        System.assert(productionOrder2.equals(productionOrder1));
        System.assert(productionOrder1.equals(productionOrder1));
        System.assert(productionOrder3.equals(productionOrder4));
        System.assert(productionOrder4.equals(productionOrder3));
        System.assert(productionOrder3.equals(productionOrder3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductionOrder productionOrder1 = OASProductionOrder.getExample();
        OASProductionOrder productionOrder2 = OASProductionOrder.getExample();
        OASProductionOrder productionOrder3 = new OASProductionOrder();
        OASProductionOrder productionOrder4 = new OASProductionOrder();

        System.assert(productionOrder1.equals(productionOrder2));
        System.assert(productionOrder2.equals(productionOrder1));
        System.assert(productionOrder3.equals(productionOrder4));
        System.assert(productionOrder4.equals(productionOrder3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductionOrder productionOrder1 = OASProductionOrder.getExample();
        OASProductionOrder productionOrder2 = new OASProductionOrder();

        System.assertEquals(false, productionOrder1.equals('foo'));
        System.assertEquals(false, productionOrder2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductionOrder productionOrder1 = OASProductionOrder.getExample();
        OASProductionOrder productionOrder2 = new OASProductionOrder();
        OASProductionOrder productionOrder3;

        System.assertEquals(false, productionOrder1.equals(productionOrder3));
        System.assertEquals(false, productionOrder2.equals(productionOrder3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductionOrder productionOrder1 = OASProductionOrder.getExample();
        OASProductionOrder productionOrder2 = new OASProductionOrder();

        System.assertEquals(productionOrder1.hashCode(), productionOrder1.hashCode());
        System.assertEquals(productionOrder2.hashCode(), productionOrder2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductionOrder productionOrder1 = OASProductionOrder.getExample();
        OASProductionOrder productionOrder2 = OASProductionOrder.getExample();
        OASProductionOrder productionOrder3 = new OASProductionOrder();
        OASProductionOrder productionOrder4 = new OASProductionOrder();

        System.assert(productionOrder1.equals(productionOrder2));
        System.assert(productionOrder3.equals(productionOrder4));
        System.assertEquals(productionOrder1.hashCode(), productionOrder2.hashCode());
        System.assertEquals(productionOrder3.hashCode(), productionOrder4.hashCode());
    }
}
