@isTest
private class OASCreateConnectionRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreateConnectionRequest createConnectionRequest1 = OASCreateConnectionRequest.getExample();
        OASCreateConnectionRequest createConnectionRequest2 = createConnectionRequest1;
        OASCreateConnectionRequest createConnectionRequest3 = new OASCreateConnectionRequest();
        OASCreateConnectionRequest createConnectionRequest4 = createConnectionRequest3;

        System.assert(createConnectionRequest1.equals(createConnectionRequest2));
        System.assert(createConnectionRequest2.equals(createConnectionRequest1));
        System.assert(createConnectionRequest1.equals(createConnectionRequest1));
        System.assert(createConnectionRequest3.equals(createConnectionRequest4));
        System.assert(createConnectionRequest4.equals(createConnectionRequest3));
        System.assert(createConnectionRequest3.equals(createConnectionRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateConnectionRequest createConnectionRequest1 = OASCreateConnectionRequest.getExample();
        OASCreateConnectionRequest createConnectionRequest2 = OASCreateConnectionRequest.getExample();
        OASCreateConnectionRequest createConnectionRequest3 = new OASCreateConnectionRequest();
        OASCreateConnectionRequest createConnectionRequest4 = new OASCreateConnectionRequest();

        System.assert(createConnectionRequest1.equals(createConnectionRequest2));
        System.assert(createConnectionRequest2.equals(createConnectionRequest1));
        System.assert(createConnectionRequest3.equals(createConnectionRequest4));
        System.assert(createConnectionRequest4.equals(createConnectionRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateConnectionRequest createConnectionRequest1 = OASCreateConnectionRequest.getExample();
        OASCreateConnectionRequest createConnectionRequest2 = new OASCreateConnectionRequest();

        System.assertEquals(false, createConnectionRequest1.equals('foo'));
        System.assertEquals(false, createConnectionRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateConnectionRequest createConnectionRequest1 = OASCreateConnectionRequest.getExample();
        OASCreateConnectionRequest createConnectionRequest2 = new OASCreateConnectionRequest();
        OASCreateConnectionRequest createConnectionRequest3;

        System.assertEquals(false, createConnectionRequest1.equals(createConnectionRequest3));
        System.assertEquals(false, createConnectionRequest2.equals(createConnectionRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateConnectionRequest createConnectionRequest1 = OASCreateConnectionRequest.getExample();
        OASCreateConnectionRequest createConnectionRequest2 = new OASCreateConnectionRequest();

        System.assertEquals(createConnectionRequest1.hashCode(), createConnectionRequest1.hashCode());
        System.assertEquals(createConnectionRequest2.hashCode(), createConnectionRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateConnectionRequest createConnectionRequest1 = OASCreateConnectionRequest.getExample();
        OASCreateConnectionRequest createConnectionRequest2 = OASCreateConnectionRequest.getExample();
        OASCreateConnectionRequest createConnectionRequest3 = new OASCreateConnectionRequest();
        OASCreateConnectionRequest createConnectionRequest4 = new OASCreateConnectionRequest();

        System.assert(createConnectionRequest1.equals(createConnectionRequest2));
        System.assert(createConnectionRequest3.equals(createConnectionRequest4));
        System.assertEquals(createConnectionRequest1.hashCode(), createConnectionRequest2.hashCode());
        System.assertEquals(createConnectionRequest3.hashCode(), createConnectionRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateConnectionRequest createConnectionRequest = new OASCreateConnectionRequest();
        Map<String, String> x-property-mappings = createConnectionRequest.getx-property-mappings();
        System.assertEquals('apiKey', x-property-mappings.get('api_key'));
        System.assertEquals('apiSecret', x-property-mappings.get('api_secret'));
        System.assertEquals('shopDomain', x-property-mappings.get('shop_domain'));
    }
}
