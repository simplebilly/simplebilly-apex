@isTest
private class OASUpdateConnectionRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpdateConnectionRequest updateConnectionRequest1 = OASUpdateConnectionRequest.getExample();
        OASUpdateConnectionRequest updateConnectionRequest2 = updateConnectionRequest1;
        OASUpdateConnectionRequest updateConnectionRequest3 = new OASUpdateConnectionRequest();
        OASUpdateConnectionRequest updateConnectionRequest4 = updateConnectionRequest3;

        System.assert(updateConnectionRequest1.equals(updateConnectionRequest2));
        System.assert(updateConnectionRequest2.equals(updateConnectionRequest1));
        System.assert(updateConnectionRequest1.equals(updateConnectionRequest1));
        System.assert(updateConnectionRequest3.equals(updateConnectionRequest4));
        System.assert(updateConnectionRequest4.equals(updateConnectionRequest3));
        System.assert(updateConnectionRequest3.equals(updateConnectionRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpdateConnectionRequest updateConnectionRequest1 = OASUpdateConnectionRequest.getExample();
        OASUpdateConnectionRequest updateConnectionRequest2 = OASUpdateConnectionRequest.getExample();
        OASUpdateConnectionRequest updateConnectionRequest3 = new OASUpdateConnectionRequest();
        OASUpdateConnectionRequest updateConnectionRequest4 = new OASUpdateConnectionRequest();

        System.assert(updateConnectionRequest1.equals(updateConnectionRequest2));
        System.assert(updateConnectionRequest2.equals(updateConnectionRequest1));
        System.assert(updateConnectionRequest3.equals(updateConnectionRequest4));
        System.assert(updateConnectionRequest4.equals(updateConnectionRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpdateConnectionRequest updateConnectionRequest1 = OASUpdateConnectionRequest.getExample();
        OASUpdateConnectionRequest updateConnectionRequest2 = new OASUpdateConnectionRequest();

        System.assertEquals(false, updateConnectionRequest1.equals('foo'));
        System.assertEquals(false, updateConnectionRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpdateConnectionRequest updateConnectionRequest1 = OASUpdateConnectionRequest.getExample();
        OASUpdateConnectionRequest updateConnectionRequest2 = new OASUpdateConnectionRequest();
        OASUpdateConnectionRequest updateConnectionRequest3;

        System.assertEquals(false, updateConnectionRequest1.equals(updateConnectionRequest3));
        System.assertEquals(false, updateConnectionRequest2.equals(updateConnectionRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpdateConnectionRequest updateConnectionRequest1 = OASUpdateConnectionRequest.getExample();
        OASUpdateConnectionRequest updateConnectionRequest2 = new OASUpdateConnectionRequest();

        System.assertEquals(updateConnectionRequest1.hashCode(), updateConnectionRequest1.hashCode());
        System.assertEquals(updateConnectionRequest2.hashCode(), updateConnectionRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpdateConnectionRequest updateConnectionRequest1 = OASUpdateConnectionRequest.getExample();
        OASUpdateConnectionRequest updateConnectionRequest2 = OASUpdateConnectionRequest.getExample();
        OASUpdateConnectionRequest updateConnectionRequest3 = new OASUpdateConnectionRequest();
        OASUpdateConnectionRequest updateConnectionRequest4 = new OASUpdateConnectionRequest();

        System.assert(updateConnectionRequest1.equals(updateConnectionRequest2));
        System.assert(updateConnectionRequest3.equals(updateConnectionRequest4));
        System.assertEquals(updateConnectionRequest1.hashCode(), updateConnectionRequest2.hashCode());
        System.assertEquals(updateConnectionRequest3.hashCode(), updateConnectionRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUpdateConnectionRequest updateConnectionRequest = new OASUpdateConnectionRequest();
        Map<String, String> x-property-mappings = updateConnectionRequest.getx-property-mappings();
        System.assertEquals('apiKey', x-property-mappings.get('api_key'));
        System.assertEquals('apiSecret', x-property-mappings.get('api_secret'));
        System.assertEquals('isActive', x-property-mappings.get('is_active'));
        System.assertEquals('shopDomain', x-property-mappings.get('shop_domain'));
    }
}
