@isTest
private class OASReturnLogisticsSummaryTest {
    @isTest
    private static void equalsSameInstance() {
        OASReturnLogisticsSummary returnLogisticsSummary1 = OASReturnLogisticsSummary.getExample();
        OASReturnLogisticsSummary returnLogisticsSummary2 = returnLogisticsSummary1;
        OASReturnLogisticsSummary returnLogisticsSummary3 = new OASReturnLogisticsSummary();
        OASReturnLogisticsSummary returnLogisticsSummary4 = returnLogisticsSummary3;

        System.assert(returnLogisticsSummary1.equals(returnLogisticsSummary2));
        System.assert(returnLogisticsSummary2.equals(returnLogisticsSummary1));
        System.assert(returnLogisticsSummary1.equals(returnLogisticsSummary1));
        System.assert(returnLogisticsSummary3.equals(returnLogisticsSummary4));
        System.assert(returnLogisticsSummary4.equals(returnLogisticsSummary3));
        System.assert(returnLogisticsSummary3.equals(returnLogisticsSummary3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASReturnLogisticsSummary returnLogisticsSummary1 = OASReturnLogisticsSummary.getExample();
        OASReturnLogisticsSummary returnLogisticsSummary2 = OASReturnLogisticsSummary.getExample();
        OASReturnLogisticsSummary returnLogisticsSummary3 = new OASReturnLogisticsSummary();
        OASReturnLogisticsSummary returnLogisticsSummary4 = new OASReturnLogisticsSummary();

        System.assert(returnLogisticsSummary1.equals(returnLogisticsSummary2));
        System.assert(returnLogisticsSummary2.equals(returnLogisticsSummary1));
        System.assert(returnLogisticsSummary3.equals(returnLogisticsSummary4));
        System.assert(returnLogisticsSummary4.equals(returnLogisticsSummary3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASReturnLogisticsSummary returnLogisticsSummary1 = OASReturnLogisticsSummary.getExample();
        OASReturnLogisticsSummary returnLogisticsSummary2 = new OASReturnLogisticsSummary();

        System.assertEquals(false, returnLogisticsSummary1.equals('foo'));
        System.assertEquals(false, returnLogisticsSummary2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASReturnLogisticsSummary returnLogisticsSummary1 = OASReturnLogisticsSummary.getExample();
        OASReturnLogisticsSummary returnLogisticsSummary2 = new OASReturnLogisticsSummary();
        OASReturnLogisticsSummary returnLogisticsSummary3;

        System.assertEquals(false, returnLogisticsSummary1.equals(returnLogisticsSummary3));
        System.assertEquals(false, returnLogisticsSummary2.equals(returnLogisticsSummary3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASReturnLogisticsSummary returnLogisticsSummary1 = OASReturnLogisticsSummary.getExample();
        OASReturnLogisticsSummary returnLogisticsSummary2 = new OASReturnLogisticsSummary();

        System.assertEquals(returnLogisticsSummary1.hashCode(), returnLogisticsSummary1.hashCode());
        System.assertEquals(returnLogisticsSummary2.hashCode(), returnLogisticsSummary2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASReturnLogisticsSummary returnLogisticsSummary1 = OASReturnLogisticsSummary.getExample();
        OASReturnLogisticsSummary returnLogisticsSummary2 = OASReturnLogisticsSummary.getExample();
        OASReturnLogisticsSummary returnLogisticsSummary3 = new OASReturnLogisticsSummary();
        OASReturnLogisticsSummary returnLogisticsSummary4 = new OASReturnLogisticsSummary();

        System.assert(returnLogisticsSummary1.equals(returnLogisticsSummary2));
        System.assert(returnLogisticsSummary3.equals(returnLogisticsSummary4));
        System.assertEquals(returnLogisticsSummary1.hashCode(), returnLogisticsSummary2.hashCode());
        System.assertEquals(returnLogisticsSummary3.hashCode(), returnLogisticsSummary4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASReturnLogisticsSummary returnLogisticsSummary = new OASReturnLogisticsSummary();
        System.assertEquals(new List<OASReturnWarehouseSummary>(), returnLogisticsSummary.byWarehouse);
        System.assertEquals(null, returnLogisticsSummary.byStatus);
        System.assertEquals(null, returnLogisticsSummary.itemsRestocked);
        System.assertEquals(null, returnLogisticsSummary.itemsScrapped);
        System.assertEquals(null, returnLogisticsSummary.totalItems);
        System.assertEquals(null, returnLogisticsSummary.totalReturns);
    }
}
