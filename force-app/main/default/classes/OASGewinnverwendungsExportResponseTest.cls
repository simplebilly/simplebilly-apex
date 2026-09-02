@isTest
private class OASGewinnverwendungsExportResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse1 = OASGewinnverwendungsExportResponse.getExample();
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse2 = gewinnverwendungsExportResponse1;
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse3 = new OASGewinnverwendungsExportResponse();
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse4 = gewinnverwendungsExportResponse3;

        System.assert(gewinnverwendungsExportResponse1.equals(gewinnverwendungsExportResponse2));
        System.assert(gewinnverwendungsExportResponse2.equals(gewinnverwendungsExportResponse1));
        System.assert(gewinnverwendungsExportResponse1.equals(gewinnverwendungsExportResponse1));
        System.assert(gewinnverwendungsExportResponse3.equals(gewinnverwendungsExportResponse4));
        System.assert(gewinnverwendungsExportResponse4.equals(gewinnverwendungsExportResponse3));
        System.assert(gewinnverwendungsExportResponse3.equals(gewinnverwendungsExportResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse1 = OASGewinnverwendungsExportResponse.getExample();
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse2 = OASGewinnverwendungsExportResponse.getExample();
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse3 = new OASGewinnverwendungsExportResponse();
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse4 = new OASGewinnverwendungsExportResponse();

        System.assert(gewinnverwendungsExportResponse1.equals(gewinnverwendungsExportResponse2));
        System.assert(gewinnverwendungsExportResponse2.equals(gewinnverwendungsExportResponse1));
        System.assert(gewinnverwendungsExportResponse3.equals(gewinnverwendungsExportResponse4));
        System.assert(gewinnverwendungsExportResponse4.equals(gewinnverwendungsExportResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse1 = OASGewinnverwendungsExportResponse.getExample();
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse2 = new OASGewinnverwendungsExportResponse();

        System.assertEquals(false, gewinnverwendungsExportResponse1.equals('foo'));
        System.assertEquals(false, gewinnverwendungsExportResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse1 = OASGewinnverwendungsExportResponse.getExample();
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse2 = new OASGewinnverwendungsExportResponse();
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse3;

        System.assertEquals(false, gewinnverwendungsExportResponse1.equals(gewinnverwendungsExportResponse3));
        System.assertEquals(false, gewinnverwendungsExportResponse2.equals(gewinnverwendungsExportResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse1 = OASGewinnverwendungsExportResponse.getExample();
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse2 = new OASGewinnverwendungsExportResponse();

        System.assertEquals(gewinnverwendungsExportResponse1.hashCode(), gewinnverwendungsExportResponse1.hashCode());
        System.assertEquals(gewinnverwendungsExportResponse2.hashCode(), gewinnverwendungsExportResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse1 = OASGewinnverwendungsExportResponse.getExample();
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse2 = OASGewinnverwendungsExportResponse.getExample();
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse3 = new OASGewinnverwendungsExportResponse();
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse4 = new OASGewinnverwendungsExportResponse();

        System.assert(gewinnverwendungsExportResponse1.equals(gewinnverwendungsExportResponse2));
        System.assert(gewinnverwendungsExportResponse3.equals(gewinnverwendungsExportResponse4));
        System.assertEquals(gewinnverwendungsExportResponse1.hashCode(), gewinnverwendungsExportResponse2.hashCode());
        System.assertEquals(gewinnverwendungsExportResponse3.hashCode(), gewinnverwendungsExportResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGewinnverwendungsExportResponse gewinnverwendungsExportResponse = new OASGewinnverwendungsExportResponse();
        Map<String, String> x-property-mappings = gewinnverwendungsExportResponse.getx-property-mappings();
        System.assertEquals('csvContent', x-property-mappings.get('csv_content'));
    }
}
