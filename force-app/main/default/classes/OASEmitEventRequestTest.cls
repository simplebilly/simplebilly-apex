@isTest
private class OASEmitEventRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASEmitEventRequest emitEventRequest1 = OASEmitEventRequest.getExample();
        OASEmitEventRequest emitEventRequest2 = emitEventRequest1;
        OASEmitEventRequest emitEventRequest3 = new OASEmitEventRequest();
        OASEmitEventRequest emitEventRequest4 = emitEventRequest3;

        System.assert(emitEventRequest1.equals(emitEventRequest2));
        System.assert(emitEventRequest2.equals(emitEventRequest1));
        System.assert(emitEventRequest1.equals(emitEventRequest1));
        System.assert(emitEventRequest3.equals(emitEventRequest4));
        System.assert(emitEventRequest4.equals(emitEventRequest3));
        System.assert(emitEventRequest3.equals(emitEventRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEmitEventRequest emitEventRequest1 = OASEmitEventRequest.getExample();
        OASEmitEventRequest emitEventRequest2 = OASEmitEventRequest.getExample();
        OASEmitEventRequest emitEventRequest3 = new OASEmitEventRequest();
        OASEmitEventRequest emitEventRequest4 = new OASEmitEventRequest();

        System.assert(emitEventRequest1.equals(emitEventRequest2));
        System.assert(emitEventRequest2.equals(emitEventRequest1));
        System.assert(emitEventRequest3.equals(emitEventRequest4));
        System.assert(emitEventRequest4.equals(emitEventRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEmitEventRequest emitEventRequest1 = OASEmitEventRequest.getExample();
        OASEmitEventRequest emitEventRequest2 = new OASEmitEventRequest();

        System.assertEquals(false, emitEventRequest1.equals('foo'));
        System.assertEquals(false, emitEventRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEmitEventRequest emitEventRequest1 = OASEmitEventRequest.getExample();
        OASEmitEventRequest emitEventRequest2 = new OASEmitEventRequest();
        OASEmitEventRequest emitEventRequest3;

        System.assertEquals(false, emitEventRequest1.equals(emitEventRequest3));
        System.assertEquals(false, emitEventRequest2.equals(emitEventRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEmitEventRequest emitEventRequest1 = OASEmitEventRequest.getExample();
        OASEmitEventRequest emitEventRequest2 = new OASEmitEventRequest();

        System.assertEquals(emitEventRequest1.hashCode(), emitEventRequest1.hashCode());
        System.assertEquals(emitEventRequest2.hashCode(), emitEventRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEmitEventRequest emitEventRequest1 = OASEmitEventRequest.getExample();
        OASEmitEventRequest emitEventRequest2 = OASEmitEventRequest.getExample();
        OASEmitEventRequest emitEventRequest3 = new OASEmitEventRequest();
        OASEmitEventRequest emitEventRequest4 = new OASEmitEventRequest();

        System.assert(emitEventRequest1.equals(emitEventRequest2));
        System.assert(emitEventRequest3.equals(emitEventRequest4));
        System.assertEquals(emitEventRequest1.hashCode(), emitEventRequest2.hashCode());
        System.assertEquals(emitEventRequest3.hashCode(), emitEventRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEmitEventRequest emitEventRequest = new OASEmitEventRequest();
        Map<String, String> x-property-mappings = emitEventRequest.getx-property-mappings();
        System.assertEquals('eventType', x-property-mappings.get('event_type'));
    }
}
