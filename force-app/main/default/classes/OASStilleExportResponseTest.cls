@isTest
private class OASStilleExportResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASStilleExportResponse stilleExportResponse1 = OASStilleExportResponse.getExample();
        OASStilleExportResponse stilleExportResponse2 = stilleExportResponse1;
        OASStilleExportResponse stilleExportResponse3 = new OASStilleExportResponse();
        OASStilleExportResponse stilleExportResponse4 = stilleExportResponse3;

        System.assert(stilleExportResponse1.equals(stilleExportResponse2));
        System.assert(stilleExportResponse2.equals(stilleExportResponse1));
        System.assert(stilleExportResponse1.equals(stilleExportResponse1));
        System.assert(stilleExportResponse3.equals(stilleExportResponse4));
        System.assert(stilleExportResponse4.equals(stilleExportResponse3));
        System.assert(stilleExportResponse3.equals(stilleExportResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASStilleExportResponse stilleExportResponse1 = OASStilleExportResponse.getExample();
        OASStilleExportResponse stilleExportResponse2 = OASStilleExportResponse.getExample();
        OASStilleExportResponse stilleExportResponse3 = new OASStilleExportResponse();
        OASStilleExportResponse stilleExportResponse4 = new OASStilleExportResponse();

        System.assert(stilleExportResponse1.equals(stilleExportResponse2));
        System.assert(stilleExportResponse2.equals(stilleExportResponse1));
        System.assert(stilleExportResponse3.equals(stilleExportResponse4));
        System.assert(stilleExportResponse4.equals(stilleExportResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASStilleExportResponse stilleExportResponse1 = OASStilleExportResponse.getExample();
        OASStilleExportResponse stilleExportResponse2 = new OASStilleExportResponse();

        System.assertEquals(false, stilleExportResponse1.equals('foo'));
        System.assertEquals(false, stilleExportResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASStilleExportResponse stilleExportResponse1 = OASStilleExportResponse.getExample();
        OASStilleExportResponse stilleExportResponse2 = new OASStilleExportResponse();
        OASStilleExportResponse stilleExportResponse3;

        System.assertEquals(false, stilleExportResponse1.equals(stilleExportResponse3));
        System.assertEquals(false, stilleExportResponse2.equals(stilleExportResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASStilleExportResponse stilleExportResponse1 = OASStilleExportResponse.getExample();
        OASStilleExportResponse stilleExportResponse2 = new OASStilleExportResponse();

        System.assertEquals(stilleExportResponse1.hashCode(), stilleExportResponse1.hashCode());
        System.assertEquals(stilleExportResponse2.hashCode(), stilleExportResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASStilleExportResponse stilleExportResponse1 = OASStilleExportResponse.getExample();
        OASStilleExportResponse stilleExportResponse2 = OASStilleExportResponse.getExample();
        OASStilleExportResponse stilleExportResponse3 = new OASStilleExportResponse();
        OASStilleExportResponse stilleExportResponse4 = new OASStilleExportResponse();

        System.assert(stilleExportResponse1.equals(stilleExportResponse2));
        System.assert(stilleExportResponse3.equals(stilleExportResponse4));
        System.assertEquals(stilleExportResponse1.hashCode(), stilleExportResponse2.hashCode());
        System.assertEquals(stilleExportResponse3.hashCode(), stilleExportResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASStilleExportResponse stilleExportResponse = new OASStilleExportResponse();
        Map<String, String> x-property-mappings = stilleExportResponse.getx-property-mappings();
        System.assertEquals('csvContent', x-property-mappings.get('csv_content'));
    }
}
