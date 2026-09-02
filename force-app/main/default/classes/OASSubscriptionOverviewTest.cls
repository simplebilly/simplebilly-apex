@isTest
private class OASSubscriptionOverviewTest {
    @isTest
    private static void equalsSameInstance() {
        OASSubscriptionOverview subscriptionOverview1 = OASSubscriptionOverview.getExample();
        OASSubscriptionOverview subscriptionOverview2 = subscriptionOverview1;
        OASSubscriptionOverview subscriptionOverview3 = new OASSubscriptionOverview();
        OASSubscriptionOverview subscriptionOverview4 = subscriptionOverview3;

        System.assert(subscriptionOverview1.equals(subscriptionOverview2));
        System.assert(subscriptionOverview2.equals(subscriptionOverview1));
        System.assert(subscriptionOverview1.equals(subscriptionOverview1));
        System.assert(subscriptionOverview3.equals(subscriptionOverview4));
        System.assert(subscriptionOverview4.equals(subscriptionOverview3));
        System.assert(subscriptionOverview3.equals(subscriptionOverview3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSubscriptionOverview subscriptionOverview1 = OASSubscriptionOverview.getExample();
        OASSubscriptionOverview subscriptionOverview2 = OASSubscriptionOverview.getExample();
        OASSubscriptionOverview subscriptionOverview3 = new OASSubscriptionOverview();
        OASSubscriptionOverview subscriptionOverview4 = new OASSubscriptionOverview();

        System.assert(subscriptionOverview1.equals(subscriptionOverview2));
        System.assert(subscriptionOverview2.equals(subscriptionOverview1));
        System.assert(subscriptionOverview3.equals(subscriptionOverview4));
        System.assert(subscriptionOverview4.equals(subscriptionOverview3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSubscriptionOverview subscriptionOverview1 = OASSubscriptionOverview.getExample();
        OASSubscriptionOverview subscriptionOverview2 = new OASSubscriptionOverview();

        System.assertEquals(false, subscriptionOverview1.equals('foo'));
        System.assertEquals(false, subscriptionOverview2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSubscriptionOverview subscriptionOverview1 = OASSubscriptionOverview.getExample();
        OASSubscriptionOverview subscriptionOverview2 = new OASSubscriptionOverview();
        OASSubscriptionOverview subscriptionOverview3;

        System.assertEquals(false, subscriptionOverview1.equals(subscriptionOverview3));
        System.assertEquals(false, subscriptionOverview2.equals(subscriptionOverview3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSubscriptionOverview subscriptionOverview1 = OASSubscriptionOverview.getExample();
        OASSubscriptionOverview subscriptionOverview2 = new OASSubscriptionOverview();

        System.assertEquals(subscriptionOverview1.hashCode(), subscriptionOverview1.hashCode());
        System.assertEquals(subscriptionOverview2.hashCode(), subscriptionOverview2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSubscriptionOverview subscriptionOverview1 = OASSubscriptionOverview.getExample();
        OASSubscriptionOverview subscriptionOverview2 = OASSubscriptionOverview.getExample();
        OASSubscriptionOverview subscriptionOverview3 = new OASSubscriptionOverview();
        OASSubscriptionOverview subscriptionOverview4 = new OASSubscriptionOverview();

        System.assert(subscriptionOverview1.equals(subscriptionOverview2));
        System.assert(subscriptionOverview3.equals(subscriptionOverview4));
        System.assertEquals(subscriptionOverview1.hashCode(), subscriptionOverview2.hashCode());
        System.assertEquals(subscriptionOverview3.hashCode(), subscriptionOverview4.hashCode());
    }
}
