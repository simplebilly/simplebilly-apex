@isTest
private class OASEmissionsExportResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASEmissionsExportResponse emissionsExportResponse1 = OASEmissionsExportResponse.getExample();
        OASEmissionsExportResponse emissionsExportResponse2 = emissionsExportResponse1;
        OASEmissionsExportResponse emissionsExportResponse3 = new OASEmissionsExportResponse();
        OASEmissionsExportResponse emissionsExportResponse4 = emissionsExportResponse3;

        System.assert(emissionsExportResponse1.equals(emissionsExportResponse2));
        System.assert(emissionsExportResponse2.equals(emissionsExportResponse1));
        System.assert(emissionsExportResponse1.equals(emissionsExportResponse1));
        System.assert(emissionsExportResponse3.equals(emissionsExportResponse4));
        System.assert(emissionsExportResponse4.equals(emissionsExportResponse3));
        System.assert(emissionsExportResponse3.equals(emissionsExportResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEmissionsExportResponse emissionsExportResponse1 = OASEmissionsExportResponse.getExample();
        OASEmissionsExportResponse emissionsExportResponse2 = OASEmissionsExportResponse.getExample();
        OASEmissionsExportResponse emissionsExportResponse3 = new OASEmissionsExportResponse();
        OASEmissionsExportResponse emissionsExportResponse4 = new OASEmissionsExportResponse();

        System.assert(emissionsExportResponse1.equals(emissionsExportResponse2));
        System.assert(emissionsExportResponse2.equals(emissionsExportResponse1));
        System.assert(emissionsExportResponse3.equals(emissionsExportResponse4));
        System.assert(emissionsExportResponse4.equals(emissionsExportResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEmissionsExportResponse emissionsExportResponse1 = OASEmissionsExportResponse.getExample();
        OASEmissionsExportResponse emissionsExportResponse2 = new OASEmissionsExportResponse();

        System.assertEquals(false, emissionsExportResponse1.equals('foo'));
        System.assertEquals(false, emissionsExportResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEmissionsExportResponse emissionsExportResponse1 = OASEmissionsExportResponse.getExample();
        OASEmissionsExportResponse emissionsExportResponse2 = new OASEmissionsExportResponse();
        OASEmissionsExportResponse emissionsExportResponse3;

        System.assertEquals(false, emissionsExportResponse1.equals(emissionsExportResponse3));
        System.assertEquals(false, emissionsExportResponse2.equals(emissionsExportResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEmissionsExportResponse emissionsExportResponse1 = OASEmissionsExportResponse.getExample();
        OASEmissionsExportResponse emissionsExportResponse2 = new OASEmissionsExportResponse();

        System.assertEquals(emissionsExportResponse1.hashCode(), emissionsExportResponse1.hashCode());
        System.assertEquals(emissionsExportResponse2.hashCode(), emissionsExportResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEmissionsExportResponse emissionsExportResponse1 = OASEmissionsExportResponse.getExample();
        OASEmissionsExportResponse emissionsExportResponse2 = OASEmissionsExportResponse.getExample();
        OASEmissionsExportResponse emissionsExportResponse3 = new OASEmissionsExportResponse();
        OASEmissionsExportResponse emissionsExportResponse4 = new OASEmissionsExportResponse();

        System.assert(emissionsExportResponse1.equals(emissionsExportResponse2));
        System.assert(emissionsExportResponse3.equals(emissionsExportResponse4));
        System.assertEquals(emissionsExportResponse1.hashCode(), emissionsExportResponse2.hashCode());
        System.assertEquals(emissionsExportResponse3.hashCode(), emissionsExportResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEmissionsExportResponse emissionsExportResponse = new OASEmissionsExportResponse();
        Map<String, String> x-property-mappings = emissionsExportResponse.getx-property-mappings();
        System.assertEquals('csvContent', x-property-mappings.get('csv_content'));
    }
}
