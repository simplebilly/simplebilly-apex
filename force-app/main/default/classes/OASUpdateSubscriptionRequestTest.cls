@isTest
private class OASUpdateSubscriptionRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpdateSubscriptionRequest updateSubscriptionRequest1 = OASUpdateSubscriptionRequest.getExample();
        OASUpdateSubscriptionRequest updateSubscriptionRequest2 = updateSubscriptionRequest1;
        OASUpdateSubscriptionRequest updateSubscriptionRequest3 = new OASUpdateSubscriptionRequest();
        OASUpdateSubscriptionRequest updateSubscriptionRequest4 = updateSubscriptionRequest3;

        System.assert(updateSubscriptionRequest1.equals(updateSubscriptionRequest2));
        System.assert(updateSubscriptionRequest2.equals(updateSubscriptionRequest1));
        System.assert(updateSubscriptionRequest1.equals(updateSubscriptionRequest1));
        System.assert(updateSubscriptionRequest3.equals(updateSubscriptionRequest4));
        System.assert(updateSubscriptionRequest4.equals(updateSubscriptionRequest3));
        System.assert(updateSubscriptionRequest3.equals(updateSubscriptionRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpdateSubscriptionRequest updateSubscriptionRequest1 = OASUpdateSubscriptionRequest.getExample();
        OASUpdateSubscriptionRequest updateSubscriptionRequest2 = OASUpdateSubscriptionRequest.getExample();
        OASUpdateSubscriptionRequest updateSubscriptionRequest3 = new OASUpdateSubscriptionRequest();
        OASUpdateSubscriptionRequest updateSubscriptionRequest4 = new OASUpdateSubscriptionRequest();

        System.assert(updateSubscriptionRequest1.equals(updateSubscriptionRequest2));
        System.assert(updateSubscriptionRequest2.equals(updateSubscriptionRequest1));
        System.assert(updateSubscriptionRequest3.equals(updateSubscriptionRequest4));
        System.assert(updateSubscriptionRequest4.equals(updateSubscriptionRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpdateSubscriptionRequest updateSubscriptionRequest1 = OASUpdateSubscriptionRequest.getExample();
        OASUpdateSubscriptionRequest updateSubscriptionRequest2 = new OASUpdateSubscriptionRequest();

        System.assertEquals(false, updateSubscriptionRequest1.equals('foo'));
        System.assertEquals(false, updateSubscriptionRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpdateSubscriptionRequest updateSubscriptionRequest1 = OASUpdateSubscriptionRequest.getExample();
        OASUpdateSubscriptionRequest updateSubscriptionRequest2 = new OASUpdateSubscriptionRequest();
        OASUpdateSubscriptionRequest updateSubscriptionRequest3;

        System.assertEquals(false, updateSubscriptionRequest1.equals(updateSubscriptionRequest3));
        System.assertEquals(false, updateSubscriptionRequest2.equals(updateSubscriptionRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpdateSubscriptionRequest updateSubscriptionRequest1 = OASUpdateSubscriptionRequest.getExample();
        OASUpdateSubscriptionRequest updateSubscriptionRequest2 = new OASUpdateSubscriptionRequest();

        System.assertEquals(updateSubscriptionRequest1.hashCode(), updateSubscriptionRequest1.hashCode());
        System.assertEquals(updateSubscriptionRequest2.hashCode(), updateSubscriptionRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpdateSubscriptionRequest updateSubscriptionRequest1 = OASUpdateSubscriptionRequest.getExample();
        OASUpdateSubscriptionRequest updateSubscriptionRequest2 = OASUpdateSubscriptionRequest.getExample();
        OASUpdateSubscriptionRequest updateSubscriptionRequest3 = new OASUpdateSubscriptionRequest();
        OASUpdateSubscriptionRequest updateSubscriptionRequest4 = new OASUpdateSubscriptionRequest();

        System.assert(updateSubscriptionRequest1.equals(updateSubscriptionRequest2));
        System.assert(updateSubscriptionRequest3.equals(updateSubscriptionRequest4));
        System.assertEquals(updateSubscriptionRequest1.hashCode(), updateSubscriptionRequest2.hashCode());
        System.assertEquals(updateSubscriptionRequest3.hashCode(), updateSubscriptionRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUpdateSubscriptionRequest updateSubscriptionRequest = new OASUpdateSubscriptionRequest();
        Map<String, String> x-property-mappings = updateSubscriptionRequest.getx-property-mappings();
        System.assertEquals('eventType', x-property-mappings.get('event_type'));
        System.assertEquals('isActive', x-property-mappings.get('is_active'));
    }
}
