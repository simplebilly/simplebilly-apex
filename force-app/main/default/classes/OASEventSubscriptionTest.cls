@isTest
private class OASEventSubscriptionTest {
    @isTest
    private static void equalsSameInstance() {
        OASEventSubscription eventSubscription1 = OASEventSubscription.getExample();
        OASEventSubscription eventSubscription2 = eventSubscription1;
        OASEventSubscription eventSubscription3 = new OASEventSubscription();
        OASEventSubscription eventSubscription4 = eventSubscription3;

        System.assert(eventSubscription1.equals(eventSubscription2));
        System.assert(eventSubscription2.equals(eventSubscription1));
        System.assert(eventSubscription1.equals(eventSubscription1));
        System.assert(eventSubscription3.equals(eventSubscription4));
        System.assert(eventSubscription4.equals(eventSubscription3));
        System.assert(eventSubscription3.equals(eventSubscription3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEventSubscription eventSubscription1 = OASEventSubscription.getExample();
        OASEventSubscription eventSubscription2 = OASEventSubscription.getExample();
        OASEventSubscription eventSubscription3 = new OASEventSubscription();
        OASEventSubscription eventSubscription4 = new OASEventSubscription();

        System.assert(eventSubscription1.equals(eventSubscription2));
        System.assert(eventSubscription2.equals(eventSubscription1));
        System.assert(eventSubscription3.equals(eventSubscription4));
        System.assert(eventSubscription4.equals(eventSubscription3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEventSubscription eventSubscription1 = OASEventSubscription.getExample();
        OASEventSubscription eventSubscription2 = new OASEventSubscription();

        System.assertEquals(false, eventSubscription1.equals('foo'));
        System.assertEquals(false, eventSubscription2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEventSubscription eventSubscription1 = OASEventSubscription.getExample();
        OASEventSubscription eventSubscription2 = new OASEventSubscription();
        OASEventSubscription eventSubscription3;

        System.assertEquals(false, eventSubscription1.equals(eventSubscription3));
        System.assertEquals(false, eventSubscription2.equals(eventSubscription3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEventSubscription eventSubscription1 = OASEventSubscription.getExample();
        OASEventSubscription eventSubscription2 = new OASEventSubscription();

        System.assertEquals(eventSubscription1.hashCode(), eventSubscription1.hashCode());
        System.assertEquals(eventSubscription2.hashCode(), eventSubscription2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEventSubscription eventSubscription1 = OASEventSubscription.getExample();
        OASEventSubscription eventSubscription2 = OASEventSubscription.getExample();
        OASEventSubscription eventSubscription3 = new OASEventSubscription();
        OASEventSubscription eventSubscription4 = new OASEventSubscription();

        System.assert(eventSubscription1.equals(eventSubscription2));
        System.assert(eventSubscription3.equals(eventSubscription4));
        System.assertEquals(eventSubscription1.hashCode(), eventSubscription2.hashCode());
        System.assertEquals(eventSubscription3.hashCode(), eventSubscription4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEventSubscription eventSubscription = new OASEventSubscription();
        Map<String, String> x-property-mappings = eventSubscription.getx-property-mappings();
        System.assertEquals('callbackUrl', x-property-mappings.get('callback_url'));
        System.assertEquals('eventType', x-property-mappings.get('event_type'));
        System.assertEquals('isActive', x-property-mappings.get('is_active'));
        System.assertEquals('subscriptionId', x-property-mappings.get('subscription_id'));
    }
}
