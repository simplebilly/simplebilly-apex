@isTest
private class OASCashflowReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASCashflowReport cashflowReport1 = OASCashflowReport.getExample();
        OASCashflowReport cashflowReport2 = cashflowReport1;
        OASCashflowReport cashflowReport3 = new OASCashflowReport();
        OASCashflowReport cashflowReport4 = cashflowReport3;

        System.assert(cashflowReport1.equals(cashflowReport2));
        System.assert(cashflowReport2.equals(cashflowReport1));
        System.assert(cashflowReport1.equals(cashflowReport1));
        System.assert(cashflowReport3.equals(cashflowReport4));
        System.assert(cashflowReport4.equals(cashflowReport3));
        System.assert(cashflowReport3.equals(cashflowReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCashflowReport cashflowReport1 = OASCashflowReport.getExample();
        OASCashflowReport cashflowReport2 = OASCashflowReport.getExample();
        OASCashflowReport cashflowReport3 = new OASCashflowReport();
        OASCashflowReport cashflowReport4 = new OASCashflowReport();

        System.assert(cashflowReport1.equals(cashflowReport2));
        System.assert(cashflowReport2.equals(cashflowReport1));
        System.assert(cashflowReport3.equals(cashflowReport4));
        System.assert(cashflowReport4.equals(cashflowReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCashflowReport cashflowReport1 = OASCashflowReport.getExample();
        OASCashflowReport cashflowReport2 = new OASCashflowReport();

        System.assertEquals(false, cashflowReport1.equals('foo'));
        System.assertEquals(false, cashflowReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCashflowReport cashflowReport1 = OASCashflowReport.getExample();
        OASCashflowReport cashflowReport2 = new OASCashflowReport();
        OASCashflowReport cashflowReport3;

        System.assertEquals(false, cashflowReport1.equals(cashflowReport3));
        System.assertEquals(false, cashflowReport2.equals(cashflowReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCashflowReport cashflowReport1 = OASCashflowReport.getExample();
        OASCashflowReport cashflowReport2 = new OASCashflowReport();

        System.assertEquals(cashflowReport1.hashCode(), cashflowReport1.hashCode());
        System.assertEquals(cashflowReport2.hashCode(), cashflowReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCashflowReport cashflowReport1 = OASCashflowReport.getExample();
        OASCashflowReport cashflowReport2 = OASCashflowReport.getExample();
        OASCashflowReport cashflowReport3 = new OASCashflowReport();
        OASCashflowReport cashflowReport4 = new OASCashflowReport();

        System.assert(cashflowReport1.equals(cashflowReport2));
        System.assert(cashflowReport3.equals(cashflowReport4));
        System.assertEquals(cashflowReport1.hashCode(), cashflowReport2.hashCode());
        System.assertEquals(cashflowReport3.hashCode(), cashflowReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCashflowReport cashflowReport = new OASCashflowReport();
        Map<String, String> x-property-mappings = cashflowReport.getx-property-mappings();
        System.assertEquals('closingBalance', x-property-mappings.get('closing_balance'));
        System.assertEquals('financingCashflow', x-property-mappings.get('financing_cashflow'));
        System.assertEquals('investingCashflow', x-property-mappings.get('investing_cashflow'));
        System.assertEquals('netCashflow', x-property-mappings.get('net_cashflow'));
        System.assertEquals('openingBalance', x-property-mappings.get('opening_balance'));
        System.assertEquals('operatingCashflow', x-property-mappings.get('operating_cashflow'));
    }
}
