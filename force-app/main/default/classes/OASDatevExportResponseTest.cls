@isTest
private class OASDatevExportResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASDatevExportResponse datevExportResponse1 = OASDatevExportResponse.getExample();
        OASDatevExportResponse datevExportResponse2 = datevExportResponse1;
        OASDatevExportResponse datevExportResponse3 = new OASDatevExportResponse();
        OASDatevExportResponse datevExportResponse4 = datevExportResponse3;

        System.assert(datevExportResponse1.equals(datevExportResponse2));
        System.assert(datevExportResponse2.equals(datevExportResponse1));
        System.assert(datevExportResponse1.equals(datevExportResponse1));
        System.assert(datevExportResponse3.equals(datevExportResponse4));
        System.assert(datevExportResponse4.equals(datevExportResponse3));
        System.assert(datevExportResponse3.equals(datevExportResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDatevExportResponse datevExportResponse1 = OASDatevExportResponse.getExample();
        OASDatevExportResponse datevExportResponse2 = OASDatevExportResponse.getExample();
        OASDatevExportResponse datevExportResponse3 = new OASDatevExportResponse();
        OASDatevExportResponse datevExportResponse4 = new OASDatevExportResponse();

        System.assert(datevExportResponse1.equals(datevExportResponse2));
        System.assert(datevExportResponse2.equals(datevExportResponse1));
        System.assert(datevExportResponse3.equals(datevExportResponse4));
        System.assert(datevExportResponse4.equals(datevExportResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDatevExportResponse datevExportResponse1 = OASDatevExportResponse.getExample();
        OASDatevExportResponse datevExportResponse2 = new OASDatevExportResponse();

        System.assertEquals(false, datevExportResponse1.equals('foo'));
        System.assertEquals(false, datevExportResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDatevExportResponse datevExportResponse1 = OASDatevExportResponse.getExample();
        OASDatevExportResponse datevExportResponse2 = new OASDatevExportResponse();
        OASDatevExportResponse datevExportResponse3;

        System.assertEquals(false, datevExportResponse1.equals(datevExportResponse3));
        System.assertEquals(false, datevExportResponse2.equals(datevExportResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDatevExportResponse datevExportResponse1 = OASDatevExportResponse.getExample();
        OASDatevExportResponse datevExportResponse2 = new OASDatevExportResponse();

        System.assertEquals(datevExportResponse1.hashCode(), datevExportResponse1.hashCode());
        System.assertEquals(datevExportResponse2.hashCode(), datevExportResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDatevExportResponse datevExportResponse1 = OASDatevExportResponse.getExample();
        OASDatevExportResponse datevExportResponse2 = OASDatevExportResponse.getExample();
        OASDatevExportResponse datevExportResponse3 = new OASDatevExportResponse();
        OASDatevExportResponse datevExportResponse4 = new OASDatevExportResponse();

        System.assert(datevExportResponse1.equals(datevExportResponse2));
        System.assert(datevExportResponse3.equals(datevExportResponse4));
        System.assertEquals(datevExportResponse1.hashCode(), datevExportResponse2.hashCode());
        System.assertEquals(datevExportResponse3.hashCode(), datevExportResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDatevExportResponse datevExportResponse = new OASDatevExportResponse();
        Map<String, String> x-property-mappings = datevExportResponse.getx-property-mappings();
        System.assertEquals('bookingCount', x-property-mappings.get('booking_count'));
        System.assertEquals('csvContent', x-property-mappings.get('csv_content'));
    }
}
