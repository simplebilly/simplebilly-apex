@isTest
private class OASCreateShipmentRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreateShipmentRequest createShipmentRequest1 = OASCreateShipmentRequest.getExample();
        OASCreateShipmentRequest createShipmentRequest2 = createShipmentRequest1;
        OASCreateShipmentRequest createShipmentRequest3 = new OASCreateShipmentRequest();
        OASCreateShipmentRequest createShipmentRequest4 = createShipmentRequest3;

        System.assert(createShipmentRequest1.equals(createShipmentRequest2));
        System.assert(createShipmentRequest2.equals(createShipmentRequest1));
        System.assert(createShipmentRequest1.equals(createShipmentRequest1));
        System.assert(createShipmentRequest3.equals(createShipmentRequest4));
        System.assert(createShipmentRequest4.equals(createShipmentRequest3));
        System.assert(createShipmentRequest3.equals(createShipmentRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateShipmentRequest createShipmentRequest1 = OASCreateShipmentRequest.getExample();
        OASCreateShipmentRequest createShipmentRequest2 = OASCreateShipmentRequest.getExample();
        OASCreateShipmentRequest createShipmentRequest3 = new OASCreateShipmentRequest();
        OASCreateShipmentRequest createShipmentRequest4 = new OASCreateShipmentRequest();

        System.assert(createShipmentRequest1.equals(createShipmentRequest2));
        System.assert(createShipmentRequest2.equals(createShipmentRequest1));
        System.assert(createShipmentRequest3.equals(createShipmentRequest4));
        System.assert(createShipmentRequest4.equals(createShipmentRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateShipmentRequest createShipmentRequest1 = OASCreateShipmentRequest.getExample();
        OASCreateShipmentRequest createShipmentRequest2 = new OASCreateShipmentRequest();

        System.assertEquals(false, createShipmentRequest1.equals('foo'));
        System.assertEquals(false, createShipmentRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateShipmentRequest createShipmentRequest1 = OASCreateShipmentRequest.getExample();
        OASCreateShipmentRequest createShipmentRequest2 = new OASCreateShipmentRequest();
        OASCreateShipmentRequest createShipmentRequest3;

        System.assertEquals(false, createShipmentRequest1.equals(createShipmentRequest3));
        System.assertEquals(false, createShipmentRequest2.equals(createShipmentRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateShipmentRequest createShipmentRequest1 = OASCreateShipmentRequest.getExample();
        OASCreateShipmentRequest createShipmentRequest2 = new OASCreateShipmentRequest();

        System.assertEquals(createShipmentRequest1.hashCode(), createShipmentRequest1.hashCode());
        System.assertEquals(createShipmentRequest2.hashCode(), createShipmentRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateShipmentRequest createShipmentRequest1 = OASCreateShipmentRequest.getExample();
        OASCreateShipmentRequest createShipmentRequest2 = OASCreateShipmentRequest.getExample();
        OASCreateShipmentRequest createShipmentRequest3 = new OASCreateShipmentRequest();
        OASCreateShipmentRequest createShipmentRequest4 = new OASCreateShipmentRequest();

        System.assert(createShipmentRequest1.equals(createShipmentRequest2));
        System.assert(createShipmentRequest3.equals(createShipmentRequest4));
        System.assertEquals(createShipmentRequest1.hashCode(), createShipmentRequest2.hashCode());
        System.assertEquals(createShipmentRequest3.hashCode(), createShipmentRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateShipmentRequest createShipmentRequest = new OASCreateShipmentRequest();
        Map<String, String> x-property-mappings = createShipmentRequest.getx-property-mappings();
        System.assertEquals('weightKg', x-property-mappings.get('weight_kg'));
    }
}
