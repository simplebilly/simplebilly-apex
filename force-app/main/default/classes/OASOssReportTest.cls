@isTest
private class OASOssReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASOssReport ossReport1 = OASOssReport.getExample();
        OASOssReport ossReport2 = ossReport1;
        OASOssReport ossReport3 = new OASOssReport();
        OASOssReport ossReport4 = ossReport3;

        System.assert(ossReport1.equals(ossReport2));
        System.assert(ossReport2.equals(ossReport1));
        System.assert(ossReport1.equals(ossReport1));
        System.assert(ossReport3.equals(ossReport4));
        System.assert(ossReport4.equals(ossReport3));
        System.assert(ossReport3.equals(ossReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOssReport ossReport1 = OASOssReport.getExample();
        OASOssReport ossReport2 = OASOssReport.getExample();
        OASOssReport ossReport3 = new OASOssReport();
        OASOssReport ossReport4 = new OASOssReport();

        System.assert(ossReport1.equals(ossReport2));
        System.assert(ossReport2.equals(ossReport1));
        System.assert(ossReport3.equals(ossReport4));
        System.assert(ossReport4.equals(ossReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOssReport ossReport1 = OASOssReport.getExample();
        OASOssReport ossReport2 = new OASOssReport();

        System.assertEquals(false, ossReport1.equals('foo'));
        System.assertEquals(false, ossReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOssReport ossReport1 = OASOssReport.getExample();
        OASOssReport ossReport2 = new OASOssReport();
        OASOssReport ossReport3;

        System.assertEquals(false, ossReport1.equals(ossReport3));
        System.assertEquals(false, ossReport2.equals(ossReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOssReport ossReport1 = OASOssReport.getExample();
        OASOssReport ossReport2 = new OASOssReport();

        System.assertEquals(ossReport1.hashCode(), ossReport1.hashCode());
        System.assertEquals(ossReport2.hashCode(), ossReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOssReport ossReport1 = OASOssReport.getExample();
        OASOssReport ossReport2 = OASOssReport.getExample();
        OASOssReport ossReport3 = new OASOssReport();
        OASOssReport ossReport4 = new OASOssReport();

        System.assert(ossReport1.equals(ossReport2));
        System.assert(ossReport3.equals(ossReport4));
        System.assertEquals(ossReport1.hashCode(), ossReport2.hashCode());
        System.assertEquals(ossReport3.hashCode(), ossReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOssReport ossReport = new OASOssReport();
        Map<String, String> x-property-mappings = ossReport.getx-property-mappings();
        System.assertEquals('totalCount', x-property-mappings.get('total_count'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOssReport ossReport = new OASOssReport();
        System.assertEquals(new List<OASOssDependency>(), ossReport.dependencies);
        System.assertEquals(null, ossReport.totalCount);
    }
}
