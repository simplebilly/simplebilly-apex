@isTest
private class OASReturnOrderStatusUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASReturnOrderStatusUpdate returnOrderStatusUpdate1 = OASReturnOrderStatusUpdate.getExample();
        OASReturnOrderStatusUpdate returnOrderStatusUpdate2 = returnOrderStatusUpdate1;
        OASReturnOrderStatusUpdate returnOrderStatusUpdate3 = new OASReturnOrderStatusUpdate();
        OASReturnOrderStatusUpdate returnOrderStatusUpdate4 = returnOrderStatusUpdate3;

        System.assert(returnOrderStatusUpdate1.equals(returnOrderStatusUpdate2));
        System.assert(returnOrderStatusUpdate2.equals(returnOrderStatusUpdate1));
        System.assert(returnOrderStatusUpdate1.equals(returnOrderStatusUpdate1));
        System.assert(returnOrderStatusUpdate3.equals(returnOrderStatusUpdate4));
        System.assert(returnOrderStatusUpdate4.equals(returnOrderStatusUpdate3));
        System.assert(returnOrderStatusUpdate3.equals(returnOrderStatusUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASReturnOrderStatusUpdate returnOrderStatusUpdate1 = OASReturnOrderStatusUpdate.getExample();
        OASReturnOrderStatusUpdate returnOrderStatusUpdate2 = OASReturnOrderStatusUpdate.getExample();
        OASReturnOrderStatusUpdate returnOrderStatusUpdate3 = new OASReturnOrderStatusUpdate();
        OASReturnOrderStatusUpdate returnOrderStatusUpdate4 = new OASReturnOrderStatusUpdate();

        System.assert(returnOrderStatusUpdate1.equals(returnOrderStatusUpdate2));
        System.assert(returnOrderStatusUpdate2.equals(returnOrderStatusUpdate1));
        System.assert(returnOrderStatusUpdate3.equals(returnOrderStatusUpdate4));
        System.assert(returnOrderStatusUpdate4.equals(returnOrderStatusUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASReturnOrderStatusUpdate returnOrderStatusUpdate1 = OASReturnOrderStatusUpdate.getExample();
        OASReturnOrderStatusUpdate returnOrderStatusUpdate2 = new OASReturnOrderStatusUpdate();

        System.assertEquals(false, returnOrderStatusUpdate1.equals('foo'));
        System.assertEquals(false, returnOrderStatusUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASReturnOrderStatusUpdate returnOrderStatusUpdate1 = OASReturnOrderStatusUpdate.getExample();
        OASReturnOrderStatusUpdate returnOrderStatusUpdate2 = new OASReturnOrderStatusUpdate();
        OASReturnOrderStatusUpdate returnOrderStatusUpdate3;

        System.assertEquals(false, returnOrderStatusUpdate1.equals(returnOrderStatusUpdate3));
        System.assertEquals(false, returnOrderStatusUpdate2.equals(returnOrderStatusUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASReturnOrderStatusUpdate returnOrderStatusUpdate1 = OASReturnOrderStatusUpdate.getExample();
        OASReturnOrderStatusUpdate returnOrderStatusUpdate2 = new OASReturnOrderStatusUpdate();

        System.assertEquals(returnOrderStatusUpdate1.hashCode(), returnOrderStatusUpdate1.hashCode());
        System.assertEquals(returnOrderStatusUpdate2.hashCode(), returnOrderStatusUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASReturnOrderStatusUpdate returnOrderStatusUpdate1 = OASReturnOrderStatusUpdate.getExample();
        OASReturnOrderStatusUpdate returnOrderStatusUpdate2 = OASReturnOrderStatusUpdate.getExample();
        OASReturnOrderStatusUpdate returnOrderStatusUpdate3 = new OASReturnOrderStatusUpdate();
        OASReturnOrderStatusUpdate returnOrderStatusUpdate4 = new OASReturnOrderStatusUpdate();

        System.assert(returnOrderStatusUpdate1.equals(returnOrderStatusUpdate2));
        System.assert(returnOrderStatusUpdate3.equals(returnOrderStatusUpdate4));
        System.assertEquals(returnOrderStatusUpdate1.hashCode(), returnOrderStatusUpdate2.hashCode());
        System.assertEquals(returnOrderStatusUpdate3.hashCode(), returnOrderStatusUpdate4.hashCode());
    }
}
