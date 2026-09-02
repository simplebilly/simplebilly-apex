@isTest
private class OASCreateSubscriptionRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreateSubscriptionRequest createSubscriptionRequest1 = OASCreateSubscriptionRequest.getExample();
        OASCreateSubscriptionRequest createSubscriptionRequest2 = createSubscriptionRequest1;
        OASCreateSubscriptionRequest createSubscriptionRequest3 = new OASCreateSubscriptionRequest();
        OASCreateSubscriptionRequest createSubscriptionRequest4 = createSubscriptionRequest3;

        System.assert(createSubscriptionRequest1.equals(createSubscriptionRequest2));
        System.assert(createSubscriptionRequest2.equals(createSubscriptionRequest1));
        System.assert(createSubscriptionRequest1.equals(createSubscriptionRequest1));
        System.assert(createSubscriptionRequest3.equals(createSubscriptionRequest4));
        System.assert(createSubscriptionRequest4.equals(createSubscriptionRequest3));
        System.assert(createSubscriptionRequest3.equals(createSubscriptionRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateSubscriptionRequest createSubscriptionRequest1 = OASCreateSubscriptionRequest.getExample();
        OASCreateSubscriptionRequest createSubscriptionRequest2 = OASCreateSubscriptionRequest.getExample();
        OASCreateSubscriptionRequest createSubscriptionRequest3 = new OASCreateSubscriptionRequest();
        OASCreateSubscriptionRequest createSubscriptionRequest4 = new OASCreateSubscriptionRequest();

        System.assert(createSubscriptionRequest1.equals(createSubscriptionRequest2));
        System.assert(createSubscriptionRequest2.equals(createSubscriptionRequest1));
        System.assert(createSubscriptionRequest3.equals(createSubscriptionRequest4));
        System.assert(createSubscriptionRequest4.equals(createSubscriptionRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateSubscriptionRequest createSubscriptionRequest1 = OASCreateSubscriptionRequest.getExample();
        OASCreateSubscriptionRequest createSubscriptionRequest2 = new OASCreateSubscriptionRequest();

        System.assertEquals(false, createSubscriptionRequest1.equals('foo'));
        System.assertEquals(false, createSubscriptionRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateSubscriptionRequest createSubscriptionRequest1 = OASCreateSubscriptionRequest.getExample();
        OASCreateSubscriptionRequest createSubscriptionRequest2 = new OASCreateSubscriptionRequest();
        OASCreateSubscriptionRequest createSubscriptionRequest3;

        System.assertEquals(false, createSubscriptionRequest1.equals(createSubscriptionRequest3));
        System.assertEquals(false, createSubscriptionRequest2.equals(createSubscriptionRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateSubscriptionRequest createSubscriptionRequest1 = OASCreateSubscriptionRequest.getExample();
        OASCreateSubscriptionRequest createSubscriptionRequest2 = new OASCreateSubscriptionRequest();

        System.assertEquals(createSubscriptionRequest1.hashCode(), createSubscriptionRequest1.hashCode());
        System.assertEquals(createSubscriptionRequest2.hashCode(), createSubscriptionRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateSubscriptionRequest createSubscriptionRequest1 = OASCreateSubscriptionRequest.getExample();
        OASCreateSubscriptionRequest createSubscriptionRequest2 = OASCreateSubscriptionRequest.getExample();
        OASCreateSubscriptionRequest createSubscriptionRequest3 = new OASCreateSubscriptionRequest();
        OASCreateSubscriptionRequest createSubscriptionRequest4 = new OASCreateSubscriptionRequest();

        System.assert(createSubscriptionRequest1.equals(createSubscriptionRequest2));
        System.assert(createSubscriptionRequest3.equals(createSubscriptionRequest4));
        System.assertEquals(createSubscriptionRequest1.hashCode(), createSubscriptionRequest2.hashCode());
        System.assertEquals(createSubscriptionRequest3.hashCode(), createSubscriptionRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateSubscriptionRequest createSubscriptionRequest = new OASCreateSubscriptionRequest();
        Map<String, String> x-property-mappings = createSubscriptionRequest.getx-property-mappings();
        System.assertEquals('eventType', x-property-mappings.get('event_type'));
        System.assertEquals('isActive', x-property-mappings.get('is_active'));
    }
}
