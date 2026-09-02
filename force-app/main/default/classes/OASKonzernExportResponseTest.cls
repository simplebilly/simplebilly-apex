@isTest
private class OASKonzernExportResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASKonzernExportResponse konzernExportResponse1 = OASKonzernExportResponse.getExample();
        OASKonzernExportResponse konzernExportResponse2 = konzernExportResponse1;
        OASKonzernExportResponse konzernExportResponse3 = new OASKonzernExportResponse();
        OASKonzernExportResponse konzernExportResponse4 = konzernExportResponse3;

        System.assert(konzernExportResponse1.equals(konzernExportResponse2));
        System.assert(konzernExportResponse2.equals(konzernExportResponse1));
        System.assert(konzernExportResponse1.equals(konzernExportResponse1));
        System.assert(konzernExportResponse3.equals(konzernExportResponse4));
        System.assert(konzernExportResponse4.equals(konzernExportResponse3));
        System.assert(konzernExportResponse3.equals(konzernExportResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASKonzernExportResponse konzernExportResponse1 = OASKonzernExportResponse.getExample();
        OASKonzernExportResponse konzernExportResponse2 = OASKonzernExportResponse.getExample();
        OASKonzernExportResponse konzernExportResponse3 = new OASKonzernExportResponse();
        OASKonzernExportResponse konzernExportResponse4 = new OASKonzernExportResponse();

        System.assert(konzernExportResponse1.equals(konzernExportResponse2));
        System.assert(konzernExportResponse2.equals(konzernExportResponse1));
        System.assert(konzernExportResponse3.equals(konzernExportResponse4));
        System.assert(konzernExportResponse4.equals(konzernExportResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASKonzernExportResponse konzernExportResponse1 = OASKonzernExportResponse.getExample();
        OASKonzernExportResponse konzernExportResponse2 = new OASKonzernExportResponse();

        System.assertEquals(false, konzernExportResponse1.equals('foo'));
        System.assertEquals(false, konzernExportResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASKonzernExportResponse konzernExportResponse1 = OASKonzernExportResponse.getExample();
        OASKonzernExportResponse konzernExportResponse2 = new OASKonzernExportResponse();
        OASKonzernExportResponse konzernExportResponse3;

        System.assertEquals(false, konzernExportResponse1.equals(konzernExportResponse3));
        System.assertEquals(false, konzernExportResponse2.equals(konzernExportResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASKonzernExportResponse konzernExportResponse1 = OASKonzernExportResponse.getExample();
        OASKonzernExportResponse konzernExportResponse2 = new OASKonzernExportResponse();

        System.assertEquals(konzernExportResponse1.hashCode(), konzernExportResponse1.hashCode());
        System.assertEquals(konzernExportResponse2.hashCode(), konzernExportResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASKonzernExportResponse konzernExportResponse1 = OASKonzernExportResponse.getExample();
        OASKonzernExportResponse konzernExportResponse2 = OASKonzernExportResponse.getExample();
        OASKonzernExportResponse konzernExportResponse3 = new OASKonzernExportResponse();
        OASKonzernExportResponse konzernExportResponse4 = new OASKonzernExportResponse();

        System.assert(konzernExportResponse1.equals(konzernExportResponse2));
        System.assert(konzernExportResponse3.equals(konzernExportResponse4));
        System.assertEquals(konzernExportResponse1.hashCode(), konzernExportResponse2.hashCode());
        System.assertEquals(konzernExportResponse3.hashCode(), konzernExportResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASKonzernExportResponse konzernExportResponse = new OASKonzernExportResponse();
        Map<String, String> x-property-mappings = konzernExportResponse.getx-property-mappings();
        System.assertEquals('csvContent', x-property-mappings.get('csv_content'));
    }
}
