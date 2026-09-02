@isTest
private class OASGuVReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASGuVReport guVReport1 = OASGuVReport.getExample();
        OASGuVReport guVReport2 = guVReport1;
        OASGuVReport guVReport3 = new OASGuVReport();
        OASGuVReport guVReport4 = guVReport3;

        System.assert(guVReport1.equals(guVReport2));
        System.assert(guVReport2.equals(guVReport1));
        System.assert(guVReport1.equals(guVReport1));
        System.assert(guVReport3.equals(guVReport4));
        System.assert(guVReport4.equals(guVReport3));
        System.assert(guVReport3.equals(guVReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGuVReport guVReport1 = OASGuVReport.getExample();
        OASGuVReport guVReport2 = OASGuVReport.getExample();
        OASGuVReport guVReport3 = new OASGuVReport();
        OASGuVReport guVReport4 = new OASGuVReport();

        System.assert(guVReport1.equals(guVReport2));
        System.assert(guVReport2.equals(guVReport1));
        System.assert(guVReport3.equals(guVReport4));
        System.assert(guVReport4.equals(guVReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGuVReport guVReport1 = OASGuVReport.getExample();
        OASGuVReport guVReport2 = new OASGuVReport();

        System.assertEquals(false, guVReport1.equals('foo'));
        System.assertEquals(false, guVReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGuVReport guVReport1 = OASGuVReport.getExample();
        OASGuVReport guVReport2 = new OASGuVReport();
        OASGuVReport guVReport3;

        System.assertEquals(false, guVReport1.equals(guVReport3));
        System.assertEquals(false, guVReport2.equals(guVReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGuVReport guVReport1 = OASGuVReport.getExample();
        OASGuVReport guVReport2 = new OASGuVReport();

        System.assertEquals(guVReport1.hashCode(), guVReport1.hashCode());
        System.assertEquals(guVReport2.hashCode(), guVReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGuVReport guVReport1 = OASGuVReport.getExample();
        OASGuVReport guVReport2 = OASGuVReport.getExample();
        OASGuVReport guVReport3 = new OASGuVReport();
        OASGuVReport guVReport4 = new OASGuVReport();

        System.assert(guVReport1.equals(guVReport2));
        System.assert(guVReport3.equals(guVReport4));
        System.assertEquals(guVReport1.hashCode(), guVReport2.hashCode());
        System.assertEquals(guVReport3.hashCode(), guVReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGuVReport guVReport = new OASGuVReport();
        Map<String, String> x-property-mappings = guVReport.getx-property-mappings();
        System.assertEquals('generatedAt', x-property-mappings.get('generated_at'));
        System.assertEquals('netIncome', x-property-mappings.get('net_income'));
        System.assertEquals('totalExpenses', x-property-mappings.get('total_expenses'));
        System.assertEquals('totalRevenue', x-property-mappings.get('total_revenue'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGuVReport guVReport = new OASGuVReport();
        System.assertEquals(new List<OASGuVItem>(), guVReport.expenses);
        System.assertEquals(new List<OASGuVItem>(), guVReport.revenue);
        System.assertEquals(null, guVReport.generatedAt);
        System.assertEquals(null, guVReport.netIncome);
        System.assertEquals(null, guVReport.period);
        System.assertEquals(null, guVReport.totalExpenses);
        System.assertEquals(null, guVReport.totalRevenue);
    }
}
