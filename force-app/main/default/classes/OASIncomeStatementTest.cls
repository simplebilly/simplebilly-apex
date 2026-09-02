@isTest
private class OASIncomeStatementTest {
    @isTest
    private static void equalsSameInstance() {
        OASIncomeStatement incomeStatement1 = OASIncomeStatement.getExample();
        OASIncomeStatement incomeStatement2 = incomeStatement1;
        OASIncomeStatement incomeStatement3 = new OASIncomeStatement();
        OASIncomeStatement incomeStatement4 = incomeStatement3;

        System.assert(incomeStatement1.equals(incomeStatement2));
        System.assert(incomeStatement2.equals(incomeStatement1));
        System.assert(incomeStatement1.equals(incomeStatement1));
        System.assert(incomeStatement3.equals(incomeStatement4));
        System.assert(incomeStatement4.equals(incomeStatement3));
        System.assert(incomeStatement3.equals(incomeStatement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASIncomeStatement incomeStatement1 = OASIncomeStatement.getExample();
        OASIncomeStatement incomeStatement2 = OASIncomeStatement.getExample();
        OASIncomeStatement incomeStatement3 = new OASIncomeStatement();
        OASIncomeStatement incomeStatement4 = new OASIncomeStatement();

        System.assert(incomeStatement1.equals(incomeStatement2));
        System.assert(incomeStatement2.equals(incomeStatement1));
        System.assert(incomeStatement3.equals(incomeStatement4));
        System.assert(incomeStatement4.equals(incomeStatement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASIncomeStatement incomeStatement1 = OASIncomeStatement.getExample();
        OASIncomeStatement incomeStatement2 = new OASIncomeStatement();

        System.assertEquals(false, incomeStatement1.equals('foo'));
        System.assertEquals(false, incomeStatement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASIncomeStatement incomeStatement1 = OASIncomeStatement.getExample();
        OASIncomeStatement incomeStatement2 = new OASIncomeStatement();
        OASIncomeStatement incomeStatement3;

        System.assertEquals(false, incomeStatement1.equals(incomeStatement3));
        System.assertEquals(false, incomeStatement2.equals(incomeStatement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASIncomeStatement incomeStatement1 = OASIncomeStatement.getExample();
        OASIncomeStatement incomeStatement2 = new OASIncomeStatement();

        System.assertEquals(incomeStatement1.hashCode(), incomeStatement1.hashCode());
        System.assertEquals(incomeStatement2.hashCode(), incomeStatement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASIncomeStatement incomeStatement1 = OASIncomeStatement.getExample();
        OASIncomeStatement incomeStatement2 = OASIncomeStatement.getExample();
        OASIncomeStatement incomeStatement3 = new OASIncomeStatement();
        OASIncomeStatement incomeStatement4 = new OASIncomeStatement();

        System.assert(incomeStatement1.equals(incomeStatement2));
        System.assert(incomeStatement3.equals(incomeStatement4));
        System.assertEquals(incomeStatement1.hashCode(), incomeStatement2.hashCode());
        System.assertEquals(incomeStatement3.hashCode(), incomeStatement4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASIncomeStatement incomeStatement = new OASIncomeStatement();
        Map<String, String> x-property-mappings = incomeStatement.getx-property-mappings();
        System.assertEquals('expenseItems', x-property-mappings.get('expense_items'));
        System.assertEquals('netIncome', x-property-mappings.get('net_income'));
        System.assertEquals('revenueItems', x-property-mappings.get('revenue_items'));
        System.assertEquals('totalExpenses', x-property-mappings.get('total_expenses'));
        System.assertEquals('totalRevenue', x-property-mappings.get('total_revenue'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASIncomeStatement incomeStatement = new OASIncomeStatement();
        System.assertEquals(new List<OASPnLItem>(), incomeStatement.expenseItems);
        System.assertEquals(new List<OASPnLItem>(), incomeStatement.revenueItems);
        System.assertEquals(null, incomeStatement.netIncome);
        System.assertEquals(null, incomeStatement.totalExpenses);
        System.assertEquals(null, incomeStatement.totalRevenue);
    }
}
