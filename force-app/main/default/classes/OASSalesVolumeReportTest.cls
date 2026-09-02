@isTest
private class OASSalesVolumeReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASSalesVolumeReport salesVolumeReport1 = OASSalesVolumeReport.getExample();
        OASSalesVolumeReport salesVolumeReport2 = salesVolumeReport1;
        OASSalesVolumeReport salesVolumeReport3 = new OASSalesVolumeReport();
        OASSalesVolumeReport salesVolumeReport4 = salesVolumeReport3;

        System.assert(salesVolumeReport1.equals(salesVolumeReport2));
        System.assert(salesVolumeReport2.equals(salesVolumeReport1));
        System.assert(salesVolumeReport1.equals(salesVolumeReport1));
        System.assert(salesVolumeReport3.equals(salesVolumeReport4));
        System.assert(salesVolumeReport4.equals(salesVolumeReport3));
        System.assert(salesVolumeReport3.equals(salesVolumeReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSalesVolumeReport salesVolumeReport1 = OASSalesVolumeReport.getExample();
        OASSalesVolumeReport salesVolumeReport2 = OASSalesVolumeReport.getExample();
        OASSalesVolumeReport salesVolumeReport3 = new OASSalesVolumeReport();
        OASSalesVolumeReport salesVolumeReport4 = new OASSalesVolumeReport();

        System.assert(salesVolumeReport1.equals(salesVolumeReport2));
        System.assert(salesVolumeReport2.equals(salesVolumeReport1));
        System.assert(salesVolumeReport3.equals(salesVolumeReport4));
        System.assert(salesVolumeReport4.equals(salesVolumeReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSalesVolumeReport salesVolumeReport1 = OASSalesVolumeReport.getExample();
        OASSalesVolumeReport salesVolumeReport2 = new OASSalesVolumeReport();

        System.assertEquals(false, salesVolumeReport1.equals('foo'));
        System.assertEquals(false, salesVolumeReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSalesVolumeReport salesVolumeReport1 = OASSalesVolumeReport.getExample();
        OASSalesVolumeReport salesVolumeReport2 = new OASSalesVolumeReport();
        OASSalesVolumeReport salesVolumeReport3;

        System.assertEquals(false, salesVolumeReport1.equals(salesVolumeReport3));
        System.assertEquals(false, salesVolumeReport2.equals(salesVolumeReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSalesVolumeReport salesVolumeReport1 = OASSalesVolumeReport.getExample();
        OASSalesVolumeReport salesVolumeReport2 = new OASSalesVolumeReport();

        System.assertEquals(salesVolumeReport1.hashCode(), salesVolumeReport1.hashCode());
        System.assertEquals(salesVolumeReport2.hashCode(), salesVolumeReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSalesVolumeReport salesVolumeReport1 = OASSalesVolumeReport.getExample();
        OASSalesVolumeReport salesVolumeReport2 = OASSalesVolumeReport.getExample();
        OASSalesVolumeReport salesVolumeReport3 = new OASSalesVolumeReport();
        OASSalesVolumeReport salesVolumeReport4 = new OASSalesVolumeReport();

        System.assert(salesVolumeReport1.equals(salesVolumeReport2));
        System.assert(salesVolumeReport3.equals(salesVolumeReport4));
        System.assertEquals(salesVolumeReport1.hashCode(), salesVolumeReport2.hashCode());
        System.assertEquals(salesVolumeReport3.hashCode(), salesVolumeReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSalesVolumeReport salesVolumeReport = new OASSalesVolumeReport();
        Map<String, String> x-property-mappings = salesVolumeReport.getx-property-mappings();
        System.assertEquals('grandTotal', x-property-mappings.get('grand_total'));
        System.assertEquals('totalCount', x-property-mappings.get('total_count'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSalesVolumeReport salesVolumeReport = new OASSalesVolumeReport();
        System.assertEquals(new List<OASSalesVolumeItem>(), salesVolumeReport.items);
        System.assertEquals(null, salesVolumeReport.grandTotal);
        System.assertEquals(null, salesVolumeReport.totalCount);
    }
}
