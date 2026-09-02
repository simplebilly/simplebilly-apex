@isTest
private class OASPeppolResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASPeppolResponse peppolResponse1 = OASPeppolResponse.getExample();
        OASPeppolResponse peppolResponse2 = peppolResponse1;
        OASPeppolResponse peppolResponse3 = new OASPeppolResponse();
        OASPeppolResponse peppolResponse4 = peppolResponse3;

        System.assert(peppolResponse1.equals(peppolResponse2));
        System.assert(peppolResponse2.equals(peppolResponse1));
        System.assert(peppolResponse1.equals(peppolResponse1));
        System.assert(peppolResponse3.equals(peppolResponse4));
        System.assert(peppolResponse4.equals(peppolResponse3));
        System.assert(peppolResponse3.equals(peppolResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPeppolResponse peppolResponse1 = OASPeppolResponse.getExample();
        OASPeppolResponse peppolResponse2 = OASPeppolResponse.getExample();
        OASPeppolResponse peppolResponse3 = new OASPeppolResponse();
        OASPeppolResponse peppolResponse4 = new OASPeppolResponse();

        System.assert(peppolResponse1.equals(peppolResponse2));
        System.assert(peppolResponse2.equals(peppolResponse1));
        System.assert(peppolResponse3.equals(peppolResponse4));
        System.assert(peppolResponse4.equals(peppolResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPeppolResponse peppolResponse1 = OASPeppolResponse.getExample();
        OASPeppolResponse peppolResponse2 = new OASPeppolResponse();

        System.assertEquals(false, peppolResponse1.equals('foo'));
        System.assertEquals(false, peppolResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPeppolResponse peppolResponse1 = OASPeppolResponse.getExample();
        OASPeppolResponse peppolResponse2 = new OASPeppolResponse();
        OASPeppolResponse peppolResponse3;

        System.assertEquals(false, peppolResponse1.equals(peppolResponse3));
        System.assertEquals(false, peppolResponse2.equals(peppolResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPeppolResponse peppolResponse1 = OASPeppolResponse.getExample();
        OASPeppolResponse peppolResponse2 = new OASPeppolResponse();

        System.assertEquals(peppolResponse1.hashCode(), peppolResponse1.hashCode());
        System.assertEquals(peppolResponse2.hashCode(), peppolResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPeppolResponse peppolResponse1 = OASPeppolResponse.getExample();
        OASPeppolResponse peppolResponse2 = OASPeppolResponse.getExample();
        OASPeppolResponse peppolResponse3 = new OASPeppolResponse();
        OASPeppolResponse peppolResponse4 = new OASPeppolResponse();

        System.assert(peppolResponse1.equals(peppolResponse2));
        System.assert(peppolResponse3.equals(peppolResponse4));
        System.assertEquals(peppolResponse1.hashCode(), peppolResponse2.hashCode());
        System.assertEquals(peppolResponse3.hashCode(), peppolResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPeppolResponse peppolResponse = new OASPeppolResponse();
        Map<String, String> x-property-mappings = peppolResponse.getx-property-mappings();
        System.assertEquals('contentType', x-property-mappings.get('content_type'));
    }
}
