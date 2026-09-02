@isTest
private class OASBWAReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASBWAReport bwAReport1 = OASBWAReport.getExample();
        OASBWAReport bwAReport2 = bwAReport1;
        OASBWAReport bwAReport3 = new OASBWAReport();
        OASBWAReport bwAReport4 = bwAReport3;

        System.assert(bwAReport1.equals(bwAReport2));
        System.assert(bwAReport2.equals(bwAReport1));
        System.assert(bwAReport1.equals(bwAReport1));
        System.assert(bwAReport3.equals(bwAReport4));
        System.assert(bwAReport4.equals(bwAReport3));
        System.assert(bwAReport3.equals(bwAReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBWAReport bwAReport1 = OASBWAReport.getExample();
        OASBWAReport bwAReport2 = OASBWAReport.getExample();
        OASBWAReport bwAReport3 = new OASBWAReport();
        OASBWAReport bwAReport4 = new OASBWAReport();

        System.assert(bwAReport1.equals(bwAReport2));
        System.assert(bwAReport2.equals(bwAReport1));
        System.assert(bwAReport3.equals(bwAReport4));
        System.assert(bwAReport4.equals(bwAReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBWAReport bwAReport1 = OASBWAReport.getExample();
        OASBWAReport bwAReport2 = new OASBWAReport();

        System.assertEquals(false, bwAReport1.equals('foo'));
        System.assertEquals(false, bwAReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBWAReport bwAReport1 = OASBWAReport.getExample();
        OASBWAReport bwAReport2 = new OASBWAReport();
        OASBWAReport bwAReport3;

        System.assertEquals(false, bwAReport1.equals(bwAReport3));
        System.assertEquals(false, bwAReport2.equals(bwAReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBWAReport bwAReport1 = OASBWAReport.getExample();
        OASBWAReport bwAReport2 = new OASBWAReport();

        System.assertEquals(bwAReport1.hashCode(), bwAReport1.hashCode());
        System.assertEquals(bwAReport2.hashCode(), bwAReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBWAReport bwAReport1 = OASBWAReport.getExample();
        OASBWAReport bwAReport2 = OASBWAReport.getExample();
        OASBWAReport bwAReport3 = new OASBWAReport();
        OASBWAReport bwAReport4 = new OASBWAReport();

        System.assert(bwAReport1.equals(bwAReport2));
        System.assert(bwAReport3.equals(bwAReport4));
        System.assertEquals(bwAReport1.hashCode(), bwAReport2.hashCode());
        System.assertEquals(bwAReport3.hashCode(), bwAReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBWAReport bwAReport = new OASBWAReport();
        Map<String, String> x-property-mappings = bwAReport.getx-property-mappings();
        System.assertEquals('generatedAt', x-property-mappings.get('generated_at'));
    }
}
