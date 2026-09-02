@isTest
private class OASPlausibilityReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASPlausibilityReport plausibilityReport1 = OASPlausibilityReport.getExample();
        OASPlausibilityReport plausibilityReport2 = plausibilityReport1;
        OASPlausibilityReport plausibilityReport3 = new OASPlausibilityReport();
        OASPlausibilityReport plausibilityReport4 = plausibilityReport3;

        System.assert(plausibilityReport1.equals(plausibilityReport2));
        System.assert(plausibilityReport2.equals(plausibilityReport1));
        System.assert(plausibilityReport1.equals(plausibilityReport1));
        System.assert(plausibilityReport3.equals(plausibilityReport4));
        System.assert(plausibilityReport4.equals(plausibilityReport3));
        System.assert(plausibilityReport3.equals(plausibilityReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPlausibilityReport plausibilityReport1 = OASPlausibilityReport.getExample();
        OASPlausibilityReport plausibilityReport2 = OASPlausibilityReport.getExample();
        OASPlausibilityReport plausibilityReport3 = new OASPlausibilityReport();
        OASPlausibilityReport plausibilityReport4 = new OASPlausibilityReport();

        System.assert(plausibilityReport1.equals(plausibilityReport2));
        System.assert(plausibilityReport2.equals(plausibilityReport1));
        System.assert(plausibilityReport3.equals(plausibilityReport4));
        System.assert(plausibilityReport4.equals(plausibilityReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPlausibilityReport plausibilityReport1 = OASPlausibilityReport.getExample();
        OASPlausibilityReport plausibilityReport2 = new OASPlausibilityReport();

        System.assertEquals(false, plausibilityReport1.equals('foo'));
        System.assertEquals(false, plausibilityReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPlausibilityReport plausibilityReport1 = OASPlausibilityReport.getExample();
        OASPlausibilityReport plausibilityReport2 = new OASPlausibilityReport();
        OASPlausibilityReport plausibilityReport3;

        System.assertEquals(false, plausibilityReport1.equals(plausibilityReport3));
        System.assertEquals(false, plausibilityReport2.equals(plausibilityReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPlausibilityReport plausibilityReport1 = OASPlausibilityReport.getExample();
        OASPlausibilityReport plausibilityReport2 = new OASPlausibilityReport();

        System.assertEquals(plausibilityReport1.hashCode(), plausibilityReport1.hashCode());
        System.assertEquals(plausibilityReport2.hashCode(), plausibilityReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPlausibilityReport plausibilityReport1 = OASPlausibilityReport.getExample();
        OASPlausibilityReport plausibilityReport2 = OASPlausibilityReport.getExample();
        OASPlausibilityReport plausibilityReport3 = new OASPlausibilityReport();
        OASPlausibilityReport plausibilityReport4 = new OASPlausibilityReport();

        System.assert(plausibilityReport1.equals(plausibilityReport2));
        System.assert(plausibilityReport3.equals(plausibilityReport4));
        System.assertEquals(plausibilityReport1.hashCode(), plausibilityReport2.hashCode());
        System.assertEquals(plausibilityReport3.hashCode(), plausibilityReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPlausibilityReport plausibilityReport = new OASPlausibilityReport();
        Map<String, String> x-property-mappings = plausibilityReport.getx-property-mappings();
        System.assertEquals('generatedAt', x-property-mappings.get('generated_at'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPlausibilityReport plausibilityReport = new OASPlausibilityReport();
        System.assertEquals(new List<OASPlausibilityCheck>(), plausibilityReport.checks);
        System.assertEquals(null, plausibilityReport.generatedAt);
        System.assertEquals(null, plausibilityReport.summary);
    }
}
