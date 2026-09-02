@isTest
private class OASXRechnungResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASXRechnungResponse xrechnungResponse1 = OASXRechnungResponse.getExample();
        OASXRechnungResponse xrechnungResponse2 = xrechnungResponse1;
        OASXRechnungResponse xrechnungResponse3 = new OASXRechnungResponse();
        OASXRechnungResponse xrechnungResponse4 = xrechnungResponse3;

        System.assert(xrechnungResponse1.equals(xrechnungResponse2));
        System.assert(xrechnungResponse2.equals(xrechnungResponse1));
        System.assert(xrechnungResponse1.equals(xrechnungResponse1));
        System.assert(xrechnungResponse3.equals(xrechnungResponse4));
        System.assert(xrechnungResponse4.equals(xrechnungResponse3));
        System.assert(xrechnungResponse3.equals(xrechnungResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXRechnungResponse xrechnungResponse1 = OASXRechnungResponse.getExample();
        OASXRechnungResponse xrechnungResponse2 = OASXRechnungResponse.getExample();
        OASXRechnungResponse xrechnungResponse3 = new OASXRechnungResponse();
        OASXRechnungResponse xrechnungResponse4 = new OASXRechnungResponse();

        System.assert(xrechnungResponse1.equals(xrechnungResponse2));
        System.assert(xrechnungResponse2.equals(xrechnungResponse1));
        System.assert(xrechnungResponse3.equals(xrechnungResponse4));
        System.assert(xrechnungResponse4.equals(xrechnungResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXRechnungResponse xrechnungResponse1 = OASXRechnungResponse.getExample();
        OASXRechnungResponse xrechnungResponse2 = new OASXRechnungResponse();

        System.assertEquals(false, xrechnungResponse1.equals('foo'));
        System.assertEquals(false, xrechnungResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXRechnungResponse xrechnungResponse1 = OASXRechnungResponse.getExample();
        OASXRechnungResponse xrechnungResponse2 = new OASXRechnungResponse();
        OASXRechnungResponse xrechnungResponse3;

        System.assertEquals(false, xrechnungResponse1.equals(xrechnungResponse3));
        System.assertEquals(false, xrechnungResponse2.equals(xrechnungResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXRechnungResponse xrechnungResponse1 = OASXRechnungResponse.getExample();
        OASXRechnungResponse xrechnungResponse2 = new OASXRechnungResponse();

        System.assertEquals(xrechnungResponse1.hashCode(), xrechnungResponse1.hashCode());
        System.assertEquals(xrechnungResponse2.hashCode(), xrechnungResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXRechnungResponse xrechnungResponse1 = OASXRechnungResponse.getExample();
        OASXRechnungResponse xrechnungResponse2 = OASXRechnungResponse.getExample();
        OASXRechnungResponse xrechnungResponse3 = new OASXRechnungResponse();
        OASXRechnungResponse xrechnungResponse4 = new OASXRechnungResponse();

        System.assert(xrechnungResponse1.equals(xrechnungResponse2));
        System.assert(xrechnungResponse3.equals(xrechnungResponse4));
        System.assertEquals(xrechnungResponse1.hashCode(), xrechnungResponse2.hashCode());
        System.assertEquals(xrechnungResponse3.hashCode(), xrechnungResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASXRechnungResponse xrechnungResponse = new OASXRechnungResponse();
        Map<String, String> x-property-mappings = xrechnungResponse.getx-property-mappings();
        System.assertEquals('contentType', x-property-mappings.get('content_type'));
    }
}
