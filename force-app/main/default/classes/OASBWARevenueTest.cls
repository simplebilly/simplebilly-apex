@isTest
private class OASBWARevenueTest {
    @isTest
    private static void equalsSameInstance() {
        OASBWARevenue bwARevenue1 = OASBWARevenue.getExample();
        OASBWARevenue bwARevenue2 = bwARevenue1;
        OASBWARevenue bwARevenue3 = new OASBWARevenue();
        OASBWARevenue bwARevenue4 = bwARevenue3;

        System.assert(bwARevenue1.equals(bwARevenue2));
        System.assert(bwARevenue2.equals(bwARevenue1));
        System.assert(bwARevenue1.equals(bwARevenue1));
        System.assert(bwARevenue3.equals(bwARevenue4));
        System.assert(bwARevenue4.equals(bwARevenue3));
        System.assert(bwARevenue3.equals(bwARevenue3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBWARevenue bwARevenue1 = OASBWARevenue.getExample();
        OASBWARevenue bwARevenue2 = OASBWARevenue.getExample();
        OASBWARevenue bwARevenue3 = new OASBWARevenue();
        OASBWARevenue bwARevenue4 = new OASBWARevenue();

        System.assert(bwARevenue1.equals(bwARevenue2));
        System.assert(bwARevenue2.equals(bwARevenue1));
        System.assert(bwARevenue3.equals(bwARevenue4));
        System.assert(bwARevenue4.equals(bwARevenue3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBWARevenue bwARevenue1 = OASBWARevenue.getExample();
        OASBWARevenue bwARevenue2 = new OASBWARevenue();

        System.assertEquals(false, bwARevenue1.equals('foo'));
        System.assertEquals(false, bwARevenue2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBWARevenue bwARevenue1 = OASBWARevenue.getExample();
        OASBWARevenue bwARevenue2 = new OASBWARevenue();
        OASBWARevenue bwARevenue3;

        System.assertEquals(false, bwARevenue1.equals(bwARevenue3));
        System.assertEquals(false, bwARevenue2.equals(bwARevenue3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBWARevenue bwARevenue1 = OASBWARevenue.getExample();
        OASBWARevenue bwARevenue2 = new OASBWARevenue();

        System.assertEquals(bwARevenue1.hashCode(), bwARevenue1.hashCode());
        System.assertEquals(bwARevenue2.hashCode(), bwARevenue2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBWARevenue bwARevenue1 = OASBWARevenue.getExample();
        OASBWARevenue bwARevenue2 = OASBWARevenue.getExample();
        OASBWARevenue bwARevenue3 = new OASBWARevenue();
        OASBWARevenue bwARevenue4 = new OASBWARevenue();

        System.assert(bwARevenue1.equals(bwARevenue2));
        System.assert(bwARevenue3.equals(bwARevenue4));
        System.assertEquals(bwARevenue1.hashCode(), bwARevenue2.hashCode());
        System.assertEquals(bwARevenue3.hashCode(), bwARevenue4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBWARevenue bwARevenue = new OASBWARevenue();
        Map<String, String> x-property-mappings = bwARevenue.getx-property-mappings();
        System.assertEquals('revenueBreakdown', x-property-mappings.get('revenue_breakdown'));
        System.assertEquals('totalRevenue', x-property-mappings.get('total_revenue'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBWARevenue bwARevenue = new OASBWARevenue();
        System.assertEquals(new List<OASRevenueItem>(), bwARevenue.revenueBreakdown);
        System.assertEquals(null, bwARevenue.totalRevenue);
    }
}
