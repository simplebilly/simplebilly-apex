@isTest
private class OASEBilanzReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASEBilanzReport ebilanzReport1 = OASEBilanzReport.getExample();
        OASEBilanzReport ebilanzReport2 = ebilanzReport1;
        OASEBilanzReport ebilanzReport3 = new OASEBilanzReport();
        OASEBilanzReport ebilanzReport4 = ebilanzReport3;

        System.assert(ebilanzReport1.equals(ebilanzReport2));
        System.assert(ebilanzReport2.equals(ebilanzReport1));
        System.assert(ebilanzReport1.equals(ebilanzReport1));
        System.assert(ebilanzReport3.equals(ebilanzReport4));
        System.assert(ebilanzReport4.equals(ebilanzReport3));
        System.assert(ebilanzReport3.equals(ebilanzReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEBilanzReport ebilanzReport1 = OASEBilanzReport.getExample();
        OASEBilanzReport ebilanzReport2 = OASEBilanzReport.getExample();
        OASEBilanzReport ebilanzReport3 = new OASEBilanzReport();
        OASEBilanzReport ebilanzReport4 = new OASEBilanzReport();

        System.assert(ebilanzReport1.equals(ebilanzReport2));
        System.assert(ebilanzReport2.equals(ebilanzReport1));
        System.assert(ebilanzReport3.equals(ebilanzReport4));
        System.assert(ebilanzReport4.equals(ebilanzReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEBilanzReport ebilanzReport1 = OASEBilanzReport.getExample();
        OASEBilanzReport ebilanzReport2 = new OASEBilanzReport();

        System.assertEquals(false, ebilanzReport1.equals('foo'));
        System.assertEquals(false, ebilanzReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEBilanzReport ebilanzReport1 = OASEBilanzReport.getExample();
        OASEBilanzReport ebilanzReport2 = new OASEBilanzReport();
        OASEBilanzReport ebilanzReport3;

        System.assertEquals(false, ebilanzReport1.equals(ebilanzReport3));
        System.assertEquals(false, ebilanzReport2.equals(ebilanzReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEBilanzReport ebilanzReport1 = OASEBilanzReport.getExample();
        OASEBilanzReport ebilanzReport2 = new OASEBilanzReport();

        System.assertEquals(ebilanzReport1.hashCode(), ebilanzReport1.hashCode());
        System.assertEquals(ebilanzReport2.hashCode(), ebilanzReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEBilanzReport ebilanzReport1 = OASEBilanzReport.getExample();
        OASEBilanzReport ebilanzReport2 = OASEBilanzReport.getExample();
        OASEBilanzReport ebilanzReport3 = new OASEBilanzReport();
        OASEBilanzReport ebilanzReport4 = new OASEBilanzReport();

        System.assert(ebilanzReport1.equals(ebilanzReport2));
        System.assert(ebilanzReport3.equals(ebilanzReport4));
        System.assertEquals(ebilanzReport1.hashCode(), ebilanzReport2.hashCode());
        System.assertEquals(ebilanzReport3.hashCode(), ebilanzReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEBilanzReport ebilanzReport = new OASEBilanzReport();
        Map<String, String> x-property-mappings = ebilanzReport.getx-property-mappings();
        System.assertEquals('accountOverview', x-property-mappings.get('account_overview'));
        System.assertEquals('balanceSheet', x-property-mappings.get('balance_sheet'));
        System.assertEquals('generatedAt', x-property-mappings.get('generated_at'));
        System.assertEquals('incomeStatement', x-property-mappings.get('income_statement'));
        System.assertEquals('vatSummary', x-property-mappings.get('vat_summary'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASEBilanzReport ebilanzReport = new OASEBilanzReport();
        System.assertEquals(new List<OASAccountOverview>(), ebilanzReport.accountOverview);
        System.assertEquals(null, ebilanzReport.balanceSheet);
        System.assertEquals(null, ebilanzReport.generatedAt);
        System.assertEquals(null, ebilanzReport.incomeStatement);
        System.assertEquals(null, ebilanzReport.period);
        System.assertEquals(null, ebilanzReport.vatSummary);
    }
}
