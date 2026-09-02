@isTest
private class OASBWAExpensesTest {
    @isTest
    private static void equalsSameInstance() {
        OASBWAExpenses bwAExpenses1 = OASBWAExpenses.getExample();
        OASBWAExpenses bwAExpenses2 = bwAExpenses1;
        OASBWAExpenses bwAExpenses3 = new OASBWAExpenses();
        OASBWAExpenses bwAExpenses4 = bwAExpenses3;

        System.assert(bwAExpenses1.equals(bwAExpenses2));
        System.assert(bwAExpenses2.equals(bwAExpenses1));
        System.assert(bwAExpenses1.equals(bwAExpenses1));
        System.assert(bwAExpenses3.equals(bwAExpenses4));
        System.assert(bwAExpenses4.equals(bwAExpenses3));
        System.assert(bwAExpenses3.equals(bwAExpenses3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBWAExpenses bwAExpenses1 = OASBWAExpenses.getExample();
        OASBWAExpenses bwAExpenses2 = OASBWAExpenses.getExample();
        OASBWAExpenses bwAExpenses3 = new OASBWAExpenses();
        OASBWAExpenses bwAExpenses4 = new OASBWAExpenses();

        System.assert(bwAExpenses1.equals(bwAExpenses2));
        System.assert(bwAExpenses2.equals(bwAExpenses1));
        System.assert(bwAExpenses3.equals(bwAExpenses4));
        System.assert(bwAExpenses4.equals(bwAExpenses3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBWAExpenses bwAExpenses1 = OASBWAExpenses.getExample();
        OASBWAExpenses bwAExpenses2 = new OASBWAExpenses();

        System.assertEquals(false, bwAExpenses1.equals('foo'));
        System.assertEquals(false, bwAExpenses2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBWAExpenses bwAExpenses1 = OASBWAExpenses.getExample();
        OASBWAExpenses bwAExpenses2 = new OASBWAExpenses();
        OASBWAExpenses bwAExpenses3;

        System.assertEquals(false, bwAExpenses1.equals(bwAExpenses3));
        System.assertEquals(false, bwAExpenses2.equals(bwAExpenses3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBWAExpenses bwAExpenses1 = OASBWAExpenses.getExample();
        OASBWAExpenses bwAExpenses2 = new OASBWAExpenses();

        System.assertEquals(bwAExpenses1.hashCode(), bwAExpenses1.hashCode());
        System.assertEquals(bwAExpenses2.hashCode(), bwAExpenses2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBWAExpenses bwAExpenses1 = OASBWAExpenses.getExample();
        OASBWAExpenses bwAExpenses2 = OASBWAExpenses.getExample();
        OASBWAExpenses bwAExpenses3 = new OASBWAExpenses();
        OASBWAExpenses bwAExpenses4 = new OASBWAExpenses();

        System.assert(bwAExpenses1.equals(bwAExpenses2));
        System.assert(bwAExpenses3.equals(bwAExpenses4));
        System.assertEquals(bwAExpenses1.hashCode(), bwAExpenses2.hashCode());
        System.assertEquals(bwAExpenses3.hashCode(), bwAExpenses4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBWAExpenses bwAExpenses = new OASBWAExpenses();
        Map<String, String> x-property-mappings = bwAExpenses.getx-property-mappings();
        System.assertEquals('expenseBreakdown', x-property-mappings.get('expense_breakdown'));
        System.assertEquals('totalExpenses', x-property-mappings.get('total_expenses'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBWAExpenses bwAExpenses = new OASBWAExpenses();
        System.assertEquals(new List<OASExpenseItem>(), bwAExpenses.expenseBreakdown);
        System.assertEquals(null, bwAExpenses.totalExpenses);
    }
}
