@isTest
private class OASReturnOrderTest {
    @isTest
    private static void equalsSameInstance() {
        OASReturnOrder returnOrder1 = OASReturnOrder.getExample();
        OASReturnOrder returnOrder2 = returnOrder1;
        OASReturnOrder returnOrder3 = new OASReturnOrder();
        OASReturnOrder returnOrder4 = returnOrder3;

        System.assert(returnOrder1.equals(returnOrder2));
        System.assert(returnOrder2.equals(returnOrder1));
        System.assert(returnOrder1.equals(returnOrder1));
        System.assert(returnOrder3.equals(returnOrder4));
        System.assert(returnOrder4.equals(returnOrder3));
        System.assert(returnOrder3.equals(returnOrder3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASReturnOrder returnOrder1 = OASReturnOrder.getExample();
        OASReturnOrder returnOrder2 = OASReturnOrder.getExample();
        OASReturnOrder returnOrder3 = new OASReturnOrder();
        OASReturnOrder returnOrder4 = new OASReturnOrder();

        System.assert(returnOrder1.equals(returnOrder2));
        System.assert(returnOrder2.equals(returnOrder1));
        System.assert(returnOrder3.equals(returnOrder4));
        System.assert(returnOrder4.equals(returnOrder3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASReturnOrder returnOrder1 = OASReturnOrder.getExample();
        OASReturnOrder returnOrder2 = new OASReturnOrder();

        System.assertEquals(false, returnOrder1.equals('foo'));
        System.assertEquals(false, returnOrder2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASReturnOrder returnOrder1 = OASReturnOrder.getExample();
        OASReturnOrder returnOrder2 = new OASReturnOrder();
        OASReturnOrder returnOrder3;

        System.assertEquals(false, returnOrder1.equals(returnOrder3));
        System.assertEquals(false, returnOrder2.equals(returnOrder3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASReturnOrder returnOrder1 = OASReturnOrder.getExample();
        OASReturnOrder returnOrder2 = new OASReturnOrder();

        System.assertEquals(returnOrder1.hashCode(), returnOrder1.hashCode());
        System.assertEquals(returnOrder2.hashCode(), returnOrder2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASReturnOrder returnOrder1 = OASReturnOrder.getExample();
        OASReturnOrder returnOrder2 = OASReturnOrder.getExample();
        OASReturnOrder returnOrder3 = new OASReturnOrder();
        OASReturnOrder returnOrder4 = new OASReturnOrder();

        System.assert(returnOrder1.equals(returnOrder2));
        System.assert(returnOrder3.equals(returnOrder4));
        System.assertEquals(returnOrder1.hashCode(), returnOrder2.hashCode());
        System.assertEquals(returnOrder3.hashCode(), returnOrder4.hashCode());
    }
}
