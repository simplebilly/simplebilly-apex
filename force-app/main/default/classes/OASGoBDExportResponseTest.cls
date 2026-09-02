@isTest
private class OASGoBDExportResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASGoBDExportResponse goBDExportResponse1 = OASGoBDExportResponse.getExample();
        OASGoBDExportResponse goBDExportResponse2 = goBDExportResponse1;
        OASGoBDExportResponse goBDExportResponse3 = new OASGoBDExportResponse();
        OASGoBDExportResponse goBDExportResponse4 = goBDExportResponse3;

        System.assert(goBDExportResponse1.equals(goBDExportResponse2));
        System.assert(goBDExportResponse2.equals(goBDExportResponse1));
        System.assert(goBDExportResponse1.equals(goBDExportResponse1));
        System.assert(goBDExportResponse3.equals(goBDExportResponse4));
        System.assert(goBDExportResponse4.equals(goBDExportResponse3));
        System.assert(goBDExportResponse3.equals(goBDExportResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGoBDExportResponse goBDExportResponse1 = OASGoBDExportResponse.getExample();
        OASGoBDExportResponse goBDExportResponse2 = OASGoBDExportResponse.getExample();
        OASGoBDExportResponse goBDExportResponse3 = new OASGoBDExportResponse();
        OASGoBDExportResponse goBDExportResponse4 = new OASGoBDExportResponse();

        System.assert(goBDExportResponse1.equals(goBDExportResponse2));
        System.assert(goBDExportResponse2.equals(goBDExportResponse1));
        System.assert(goBDExportResponse3.equals(goBDExportResponse4));
        System.assert(goBDExportResponse4.equals(goBDExportResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGoBDExportResponse goBDExportResponse1 = OASGoBDExportResponse.getExample();
        OASGoBDExportResponse goBDExportResponse2 = new OASGoBDExportResponse();

        System.assertEquals(false, goBDExportResponse1.equals('foo'));
        System.assertEquals(false, goBDExportResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGoBDExportResponse goBDExportResponse1 = OASGoBDExportResponse.getExample();
        OASGoBDExportResponse goBDExportResponse2 = new OASGoBDExportResponse();
        OASGoBDExportResponse goBDExportResponse3;

        System.assertEquals(false, goBDExportResponse1.equals(goBDExportResponse3));
        System.assertEquals(false, goBDExportResponse2.equals(goBDExportResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGoBDExportResponse goBDExportResponse1 = OASGoBDExportResponse.getExample();
        OASGoBDExportResponse goBDExportResponse2 = new OASGoBDExportResponse();

        System.assertEquals(goBDExportResponse1.hashCode(), goBDExportResponse1.hashCode());
        System.assertEquals(goBDExportResponse2.hashCode(), goBDExportResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGoBDExportResponse goBDExportResponse1 = OASGoBDExportResponse.getExample();
        OASGoBDExportResponse goBDExportResponse2 = OASGoBDExportResponse.getExample();
        OASGoBDExportResponse goBDExportResponse3 = new OASGoBDExportResponse();
        OASGoBDExportResponse goBDExportResponse4 = new OASGoBDExportResponse();

        System.assert(goBDExportResponse1.equals(goBDExportResponse2));
        System.assert(goBDExportResponse3.equals(goBDExportResponse4));
        System.assertEquals(goBDExportResponse1.hashCode(), goBDExportResponse2.hashCode());
        System.assertEquals(goBDExportResponse3.hashCode(), goBDExportResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGoBDExportResponse goBDExportResponse = new OASGoBDExportResponse();
        Map<String, String> x-property-mappings = goBDExportResponse.getx-property-mappings();
        System.assertEquals('bookingCount', x-property-mappings.get('booking_count'));
        System.assertEquals('csvContent', x-property-mappings.get('csv_content'));
    }
}
