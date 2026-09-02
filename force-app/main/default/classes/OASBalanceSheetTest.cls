@isTest
private class OASBalanceSheetTest {
    @isTest
    private static void equalsSameInstance() {
        OASBalanceSheet balanceSheet1 = OASBalanceSheet.getExample();
        OASBalanceSheet balanceSheet2 = balanceSheet1;
        OASBalanceSheet balanceSheet3 = new OASBalanceSheet();
        OASBalanceSheet balanceSheet4 = balanceSheet3;

        System.assert(balanceSheet1.equals(balanceSheet2));
        System.assert(balanceSheet2.equals(balanceSheet1));
        System.assert(balanceSheet1.equals(balanceSheet1));
        System.assert(balanceSheet3.equals(balanceSheet4));
        System.assert(balanceSheet4.equals(balanceSheet3));
        System.assert(balanceSheet3.equals(balanceSheet3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBalanceSheet balanceSheet1 = OASBalanceSheet.getExample();
        OASBalanceSheet balanceSheet2 = OASBalanceSheet.getExample();
        OASBalanceSheet balanceSheet3 = new OASBalanceSheet();
        OASBalanceSheet balanceSheet4 = new OASBalanceSheet();

        System.assert(balanceSheet1.equals(balanceSheet2));
        System.assert(balanceSheet2.equals(balanceSheet1));
        System.assert(balanceSheet3.equals(balanceSheet4));
        System.assert(balanceSheet4.equals(balanceSheet3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBalanceSheet balanceSheet1 = OASBalanceSheet.getExample();
        OASBalanceSheet balanceSheet2 = new OASBalanceSheet();

        System.assertEquals(false, balanceSheet1.equals('foo'));
        System.assertEquals(false, balanceSheet2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBalanceSheet balanceSheet1 = OASBalanceSheet.getExample();
        OASBalanceSheet balanceSheet2 = new OASBalanceSheet();
        OASBalanceSheet balanceSheet3;

        System.assertEquals(false, balanceSheet1.equals(balanceSheet3));
        System.assertEquals(false, balanceSheet2.equals(balanceSheet3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBalanceSheet balanceSheet1 = OASBalanceSheet.getExample();
        OASBalanceSheet balanceSheet2 = new OASBalanceSheet();

        System.assertEquals(balanceSheet1.hashCode(), balanceSheet1.hashCode());
        System.assertEquals(balanceSheet2.hashCode(), balanceSheet2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBalanceSheet balanceSheet1 = OASBalanceSheet.getExample();
        OASBalanceSheet balanceSheet2 = OASBalanceSheet.getExample();
        OASBalanceSheet balanceSheet3 = new OASBalanceSheet();
        OASBalanceSheet balanceSheet4 = new OASBalanceSheet();

        System.assert(balanceSheet1.equals(balanceSheet2));
        System.assert(balanceSheet3.equals(balanceSheet4));
        System.assertEquals(balanceSheet1.hashCode(), balanceSheet2.hashCode());
        System.assertEquals(balanceSheet3.hashCode(), balanceSheet4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBalanceSheet balanceSheet = new OASBalanceSheet();
        Map<String, String> x-property-mappings = balanceSheet.getx-property-mappings();
        System.assertEquals('equityLiabilities', x-property-mappings.get('equity_liabilities'));
        System.assertEquals('totalAssets', x-property-mappings.get('total_assets'));
        System.assertEquals('totalEquityLiabilities', x-property-mappings.get('total_equity_liabilities'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBalanceSheet balanceSheet = new OASBalanceSheet();
        System.assertEquals(new List<OASBalanceItem>(), balanceSheet.assets);
        System.assertEquals(new List<OASBalanceItem>(), balanceSheet.equityLiabilities);
        System.assertEquals(null, balanceSheet.balanced);
        System.assertEquals(null, balanceSheet.totalAssets);
        System.assertEquals(null, balanceSheet.totalEquityLiabilities);
    }
}
