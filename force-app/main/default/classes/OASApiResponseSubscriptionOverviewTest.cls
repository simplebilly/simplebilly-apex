@isTest
private class OASApiResponseSubscriptionOverviewTest {
    @isTest
    private static void equalsSameInstance() {
        OASApiResponseSubscriptionOverview apiResponseSubscriptionOverview1 = OASApiResponseSubscriptionOverview.getExample();
        OASApiResponseSubscriptionOverview apiResponseSubscriptionOverview2 = apiResponseSubscriptionOverview1;
        OASApiResponseSubscriptionOverview apiResponseSubscriptionOverview3 = new OASApiResponseSubscriptionOverview();
        OASApiResponseSubscriptionOverview apiResponseSubscriptionOverview4 = apiResponseSubscriptionOverview3;

        System.assert(apiResponseSubscriptionOverview1.equals(apiResponseSubscriptionOverview2));
        System.assert(apiResponseSubscriptionOverview2.equals(apiResponseSubscriptionOverview1));
        System.assert(apiResponseSubscriptionOverview1.equals(apiResponseSubscriptionOverview1));
        System.assert(apiResponseSubscriptionOverview3.equals(apiResponseSubscriptionOverview4));
        System.assert(apiResponseSubscriptionOverview4.equals(apiResponseSubscriptionOverview3));
        System.assert(apiResponseSubscriptionOverview3.equals(apiResponseSubscriptionOverview3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASApiResponseSubscriptionOverview apiResponseSubscriptionOverview1 = OASApiResponseSubscriptionOverview.getExample();
        OASApiResponseSubscriptionOverview apiResponseSubscriptionOverview2 = OASApiResponseSubscriptionOverview.getExample();
        OASApiResponseSubscriptionOverview apiResponseSubscriptionOverview3 = new OASApiResponseSubscriptionOverview();
        OASApiResponseSubscriptionOverview apiResponseSubscriptionOverview4 = new OASApiResponseSubscriptionOverview();

        System.assert(apiResponseSubscriptionOverview1.equals(apiResponseSubscriptionOverview2));
        System.assert(apiResponseSubscriptionOverview2.equals(apiResponseSubscriptionOverview1));
        System.assert(apiResponseSubscriptionOverview3.equals(apiResponseSubscriptionOverview4));
        System.assert(apiResponseSubscriptionOverview4.equals(apiResponseSubscriptionOverview3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASApiResponseSubscriptionOverview apiResponseSubscriptionOverview1 = OASApiResponseSubscriptionOverview.getExample();
        OASApiResponseSubscriptionOverview apiResponseSubscriptionOverview2 = new OASApiResponseSubscriptionOverview();

        System.assertEquals(false, apiResponseSubscriptionOverview1.equals('foo'));
        System.assertEquals(false, apiResponseSubscriptionOverview2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASApiResponseSubscriptionOverview apiResponseSubscriptionOverview1 = OASApiResponseSubscriptionOverview.getExample();
        OASApiResponseSubscriptionOverview apiResponseSubscriptionOverview2 = new OASApiResponseSubscriptionOverview();
        OASApiResponseSubscriptionOverview apiResponseSubscriptionOverview3;

        System.assertEquals(false, apiResponseSubscriptionOverview1.equals(apiResponseSubscriptionOverview3));
        System.assertEquals(false, apiResponseSubscriptionOverview2.equals(apiResponseSubscriptionOverview3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASApiResponseSubscriptionOverview apiResponseSubscriptionOverview1 = OASApiResponseSubscriptionOverview.getExample();
        OASApiResponseSubscriptionOverview apiResponseSubscriptionOverview2 = new OASApiResponseSubscriptionOverview();

        System.assertEquals(apiResponseSubscriptionOverview1.hashCode(), apiResponseSubscriptionOverview1.hashCode());
        System.assertEquals(apiResponseSubscriptionOverview2.hashCode(), apiResponseSubscriptionOverview2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASApiResponseSubscriptionOverview apiResponseSubscriptionOverview1 = OASApiResponseSubscriptionOverview.getExample();
        OASApiResponseSubscriptionOverview apiResponseSubscriptionOverview2 = OASApiResponseSubscriptionOverview.getExample();
        OASApiResponseSubscriptionOverview apiResponseSubscriptionOverview3 = new OASApiResponseSubscriptionOverview();
        OASApiResponseSubscriptionOverview apiResponseSubscriptionOverview4 = new OASApiResponseSubscriptionOverview();

        System.assert(apiResponseSubscriptionOverview1.equals(apiResponseSubscriptionOverview2));
        System.assert(apiResponseSubscriptionOverview3.equals(apiResponseSubscriptionOverview4));
        System.assertEquals(apiResponseSubscriptionOverview1.hashCode(), apiResponseSubscriptionOverview2.hashCode());
        System.assertEquals(apiResponseSubscriptionOverview3.hashCode(), apiResponseSubscriptionOverview4.hashCode());
    }
}
