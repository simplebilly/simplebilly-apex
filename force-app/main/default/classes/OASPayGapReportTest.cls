@isTest
private class OASPayGapReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASPayGapReport payGapReport1 = OASPayGapReport.getExample();
        OASPayGapReport payGapReport2 = payGapReport1;
        OASPayGapReport payGapReport3 = new OASPayGapReport();
        OASPayGapReport payGapReport4 = payGapReport3;

        System.assert(payGapReport1.equals(payGapReport2));
        System.assert(payGapReport2.equals(payGapReport1));
        System.assert(payGapReport1.equals(payGapReport1));
        System.assert(payGapReport3.equals(payGapReport4));
        System.assert(payGapReport4.equals(payGapReport3));
        System.assert(payGapReport3.equals(payGapReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPayGapReport payGapReport1 = OASPayGapReport.getExample();
        OASPayGapReport payGapReport2 = OASPayGapReport.getExample();
        OASPayGapReport payGapReport3 = new OASPayGapReport();
        OASPayGapReport payGapReport4 = new OASPayGapReport();

        System.assert(payGapReport1.equals(payGapReport2));
        System.assert(payGapReport2.equals(payGapReport1));
        System.assert(payGapReport3.equals(payGapReport4));
        System.assert(payGapReport4.equals(payGapReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPayGapReport payGapReport1 = OASPayGapReport.getExample();
        OASPayGapReport payGapReport2 = new OASPayGapReport();

        System.assertEquals(false, payGapReport1.equals('foo'));
        System.assertEquals(false, payGapReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPayGapReport payGapReport1 = OASPayGapReport.getExample();
        OASPayGapReport payGapReport2 = new OASPayGapReport();
        OASPayGapReport payGapReport3;

        System.assertEquals(false, payGapReport1.equals(payGapReport3));
        System.assertEquals(false, payGapReport2.equals(payGapReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPayGapReport payGapReport1 = OASPayGapReport.getExample();
        OASPayGapReport payGapReport2 = new OASPayGapReport();

        System.assertEquals(payGapReport1.hashCode(), payGapReport1.hashCode());
        System.assertEquals(payGapReport2.hashCode(), payGapReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPayGapReport payGapReport1 = OASPayGapReport.getExample();
        OASPayGapReport payGapReport2 = OASPayGapReport.getExample();
        OASPayGapReport payGapReport3 = new OASPayGapReport();
        OASPayGapReport payGapReport4 = new OASPayGapReport();

        System.assert(payGapReport1.equals(payGapReport2));
        System.assert(payGapReport3.equals(payGapReport4));
        System.assertEquals(payGapReport1.hashCode(), payGapReport2.hashCode());
        System.assertEquals(payGapReport3.hashCode(), payGapReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPayGapReport payGapReport = new OASPayGapReport();
        Map<String, String> x-property-mappings = payGapReport.getx-property-mappings();
        System.assertEquals('byJobTitle', x-property-mappings.get('by_job_title'));
        System.assertEquals('diverseCount', x-property-mappings.get('diverse_count'));
        System.assertEquals('employeeCount', x-property-mappings.get('employee_count'));
        System.assertEquals('femaleCount', x-property-mappings.get('female_count'));
        System.assertEquals('maleCount', x-property-mappings.get('male_count'));
        System.assertEquals('meanGapPct', x-property-mappings.get('mean_gap_pct'));
        System.assertEquals('medianGapPct', x-property-mappings.get('median_gap_pct'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPayGapReport payGapReport = new OASPayGapReport();
        System.assertEquals(new List<OASJobTitleGap>(), payGapReport.byJobTitle);
        System.assertEquals(new List<OASQuartileBand>(), payGapReport.quartiles);
        System.assertEquals(null, payGapReport.diverseCount);
        System.assertEquals(null, payGapReport.employeeCount);
        System.assertEquals(null, payGapReport.femaleCount);
        System.assertEquals(null, payGapReport.maleCount);
        System.assertEquals(null, payGapReport.meanGapPct);
        System.assertEquals(null, payGapReport.medianGapPct);
    }
}
