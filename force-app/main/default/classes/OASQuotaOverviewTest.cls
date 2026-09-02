@isTest
private class OASQuotaOverviewTest {
    @isTest
    private static void equalsSameInstance() {
        OASQuotaOverview quotaOverview1 = OASQuotaOverview.getExample();
        OASQuotaOverview quotaOverview2 = quotaOverview1;
        OASQuotaOverview quotaOverview3 = new OASQuotaOverview();
        OASQuotaOverview quotaOverview4 = quotaOverview3;

        System.assert(quotaOverview1.equals(quotaOverview2));
        System.assert(quotaOverview2.equals(quotaOverview1));
        System.assert(quotaOverview1.equals(quotaOverview1));
        System.assert(quotaOverview3.equals(quotaOverview4));
        System.assert(quotaOverview4.equals(quotaOverview3));
        System.assert(quotaOverview3.equals(quotaOverview3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQuotaOverview quotaOverview1 = OASQuotaOverview.getExample();
        OASQuotaOverview quotaOverview2 = OASQuotaOverview.getExample();
        OASQuotaOverview quotaOverview3 = new OASQuotaOverview();
        OASQuotaOverview quotaOverview4 = new OASQuotaOverview();

        System.assert(quotaOverview1.equals(quotaOverview2));
        System.assert(quotaOverview2.equals(quotaOverview1));
        System.assert(quotaOverview3.equals(quotaOverview4));
        System.assert(quotaOverview4.equals(quotaOverview3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQuotaOverview quotaOverview1 = OASQuotaOverview.getExample();
        OASQuotaOverview quotaOverview2 = new OASQuotaOverview();

        System.assertEquals(false, quotaOverview1.equals('foo'));
        System.assertEquals(false, quotaOverview2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQuotaOverview quotaOverview1 = OASQuotaOverview.getExample();
        OASQuotaOverview quotaOverview2 = new OASQuotaOverview();
        OASQuotaOverview quotaOverview3;

        System.assertEquals(false, quotaOverview1.equals(quotaOverview3));
        System.assertEquals(false, quotaOverview2.equals(quotaOverview3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQuotaOverview quotaOverview1 = OASQuotaOverview.getExample();
        OASQuotaOverview quotaOverview2 = new OASQuotaOverview();

        System.assertEquals(quotaOverview1.hashCode(), quotaOverview1.hashCode());
        System.assertEquals(quotaOverview2.hashCode(), quotaOverview2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQuotaOverview quotaOverview1 = OASQuotaOverview.getExample();
        OASQuotaOverview quotaOverview2 = OASQuotaOverview.getExample();
        OASQuotaOverview quotaOverview3 = new OASQuotaOverview();
        OASQuotaOverview quotaOverview4 = new OASQuotaOverview();

        System.assert(quotaOverview1.equals(quotaOverview2));
        System.assert(quotaOverview3.equals(quotaOverview4));
        System.assertEquals(quotaOverview1.hashCode(), quotaOverview2.hashCode());
        System.assertEquals(quotaOverview3.hashCode(), quotaOverview4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQuotaOverview quotaOverview = new OASQuotaOverview();
        System.assertEquals(new List<OASMeteredUsage>(), quotaOverview.metered);
        System.assertEquals(null, quotaOverview.features);
        System.assertEquals(null, quotaOverview.isTrialing);
        System.assertEquals(null, quotaOverview.limits);
        System.assertEquals(null, quotaOverview.plan);
        System.assertEquals(null, quotaOverview.planName);
        System.assertEquals(null, quotaOverview.trialEndsAt);
        System.assertEquals(null, quotaOverview.usage);
    }
}
