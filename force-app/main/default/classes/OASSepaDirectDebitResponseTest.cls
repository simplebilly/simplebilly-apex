@isTest
private class OASSepaDirectDebitResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASSepaDirectDebitResponse sepaDirectDebitResponse1 = OASSepaDirectDebitResponse.getExample();
        OASSepaDirectDebitResponse sepaDirectDebitResponse2 = sepaDirectDebitResponse1;
        OASSepaDirectDebitResponse sepaDirectDebitResponse3 = new OASSepaDirectDebitResponse();
        OASSepaDirectDebitResponse sepaDirectDebitResponse4 = sepaDirectDebitResponse3;

        System.assert(sepaDirectDebitResponse1.equals(sepaDirectDebitResponse2));
        System.assert(sepaDirectDebitResponse2.equals(sepaDirectDebitResponse1));
        System.assert(sepaDirectDebitResponse1.equals(sepaDirectDebitResponse1));
        System.assert(sepaDirectDebitResponse3.equals(sepaDirectDebitResponse4));
        System.assert(sepaDirectDebitResponse4.equals(sepaDirectDebitResponse3));
        System.assert(sepaDirectDebitResponse3.equals(sepaDirectDebitResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSepaDirectDebitResponse sepaDirectDebitResponse1 = OASSepaDirectDebitResponse.getExample();
        OASSepaDirectDebitResponse sepaDirectDebitResponse2 = OASSepaDirectDebitResponse.getExample();
        OASSepaDirectDebitResponse sepaDirectDebitResponse3 = new OASSepaDirectDebitResponse();
        OASSepaDirectDebitResponse sepaDirectDebitResponse4 = new OASSepaDirectDebitResponse();

        System.assert(sepaDirectDebitResponse1.equals(sepaDirectDebitResponse2));
        System.assert(sepaDirectDebitResponse2.equals(sepaDirectDebitResponse1));
        System.assert(sepaDirectDebitResponse3.equals(sepaDirectDebitResponse4));
        System.assert(sepaDirectDebitResponse4.equals(sepaDirectDebitResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSepaDirectDebitResponse sepaDirectDebitResponse1 = OASSepaDirectDebitResponse.getExample();
        OASSepaDirectDebitResponse sepaDirectDebitResponse2 = new OASSepaDirectDebitResponse();

        System.assertEquals(false, sepaDirectDebitResponse1.equals('foo'));
        System.assertEquals(false, sepaDirectDebitResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSepaDirectDebitResponse sepaDirectDebitResponse1 = OASSepaDirectDebitResponse.getExample();
        OASSepaDirectDebitResponse sepaDirectDebitResponse2 = new OASSepaDirectDebitResponse();
        OASSepaDirectDebitResponse sepaDirectDebitResponse3;

        System.assertEquals(false, sepaDirectDebitResponse1.equals(sepaDirectDebitResponse3));
        System.assertEquals(false, sepaDirectDebitResponse2.equals(sepaDirectDebitResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSepaDirectDebitResponse sepaDirectDebitResponse1 = OASSepaDirectDebitResponse.getExample();
        OASSepaDirectDebitResponse sepaDirectDebitResponse2 = new OASSepaDirectDebitResponse();

        System.assertEquals(sepaDirectDebitResponse1.hashCode(), sepaDirectDebitResponse1.hashCode());
        System.assertEquals(sepaDirectDebitResponse2.hashCode(), sepaDirectDebitResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSepaDirectDebitResponse sepaDirectDebitResponse1 = OASSepaDirectDebitResponse.getExample();
        OASSepaDirectDebitResponse sepaDirectDebitResponse2 = OASSepaDirectDebitResponse.getExample();
        OASSepaDirectDebitResponse sepaDirectDebitResponse3 = new OASSepaDirectDebitResponse();
        OASSepaDirectDebitResponse sepaDirectDebitResponse4 = new OASSepaDirectDebitResponse();

        System.assert(sepaDirectDebitResponse1.equals(sepaDirectDebitResponse2));
        System.assert(sepaDirectDebitResponse3.equals(sepaDirectDebitResponse4));
        System.assertEquals(sepaDirectDebitResponse1.hashCode(), sepaDirectDebitResponse2.hashCode());
        System.assertEquals(sepaDirectDebitResponse3.hashCode(), sepaDirectDebitResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSepaDirectDebitResponse sepaDirectDebitResponse = new OASSepaDirectDebitResponse();
        Map<String, String> x-property-mappings = sepaDirectDebitResponse.getx-property-mappings();
        System.assertEquals('contentType', x-property-mappings.get('content_type'));
        System.assertEquals('xmlContent', x-property-mappings.get('xml_content'));
    }
}
