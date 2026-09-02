@isTest
private class OASReturnWarehouseSummaryTest {
    @isTest
    private static void equalsSameInstance() {
        OASReturnWarehouseSummary returnWarehouseSummary1 = OASReturnWarehouseSummary.getExample();
        OASReturnWarehouseSummary returnWarehouseSummary2 = returnWarehouseSummary1;
        OASReturnWarehouseSummary returnWarehouseSummary3 = new OASReturnWarehouseSummary();
        OASReturnWarehouseSummary returnWarehouseSummary4 = returnWarehouseSummary3;

        System.assert(returnWarehouseSummary1.equals(returnWarehouseSummary2));
        System.assert(returnWarehouseSummary2.equals(returnWarehouseSummary1));
        System.assert(returnWarehouseSummary1.equals(returnWarehouseSummary1));
        System.assert(returnWarehouseSummary3.equals(returnWarehouseSummary4));
        System.assert(returnWarehouseSummary4.equals(returnWarehouseSummary3));
        System.assert(returnWarehouseSummary3.equals(returnWarehouseSummary3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASReturnWarehouseSummary returnWarehouseSummary1 = OASReturnWarehouseSummary.getExample();
        OASReturnWarehouseSummary returnWarehouseSummary2 = OASReturnWarehouseSummary.getExample();
        OASReturnWarehouseSummary returnWarehouseSummary3 = new OASReturnWarehouseSummary();
        OASReturnWarehouseSummary returnWarehouseSummary4 = new OASReturnWarehouseSummary();

        System.assert(returnWarehouseSummary1.equals(returnWarehouseSummary2));
        System.assert(returnWarehouseSummary2.equals(returnWarehouseSummary1));
        System.assert(returnWarehouseSummary3.equals(returnWarehouseSummary4));
        System.assert(returnWarehouseSummary4.equals(returnWarehouseSummary3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASReturnWarehouseSummary returnWarehouseSummary1 = OASReturnWarehouseSummary.getExample();
        OASReturnWarehouseSummary returnWarehouseSummary2 = new OASReturnWarehouseSummary();

        System.assertEquals(false, returnWarehouseSummary1.equals('foo'));
        System.assertEquals(false, returnWarehouseSummary2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASReturnWarehouseSummary returnWarehouseSummary1 = OASReturnWarehouseSummary.getExample();
        OASReturnWarehouseSummary returnWarehouseSummary2 = new OASReturnWarehouseSummary();
        OASReturnWarehouseSummary returnWarehouseSummary3;

        System.assertEquals(false, returnWarehouseSummary1.equals(returnWarehouseSummary3));
        System.assertEquals(false, returnWarehouseSummary2.equals(returnWarehouseSummary3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASReturnWarehouseSummary returnWarehouseSummary1 = OASReturnWarehouseSummary.getExample();
        OASReturnWarehouseSummary returnWarehouseSummary2 = new OASReturnWarehouseSummary();

        System.assertEquals(returnWarehouseSummary1.hashCode(), returnWarehouseSummary1.hashCode());
        System.assertEquals(returnWarehouseSummary2.hashCode(), returnWarehouseSummary2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASReturnWarehouseSummary returnWarehouseSummary1 = OASReturnWarehouseSummary.getExample();
        OASReturnWarehouseSummary returnWarehouseSummary2 = OASReturnWarehouseSummary.getExample();
        OASReturnWarehouseSummary returnWarehouseSummary3 = new OASReturnWarehouseSummary();
        OASReturnWarehouseSummary returnWarehouseSummary4 = new OASReturnWarehouseSummary();

        System.assert(returnWarehouseSummary1.equals(returnWarehouseSummary2));
        System.assert(returnWarehouseSummary3.equals(returnWarehouseSummary4));
        System.assertEquals(returnWarehouseSummary1.hashCode(), returnWarehouseSummary2.hashCode());
        System.assertEquals(returnWarehouseSummary3.hashCode(), returnWarehouseSummary4.hashCode());
    }
}
