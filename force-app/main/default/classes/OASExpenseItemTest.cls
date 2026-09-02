@isTest
private class OASExpenseItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASExpenseItem expenseItem1 = OASExpenseItem.getExample();
        OASExpenseItem expenseItem2 = expenseItem1;
        OASExpenseItem expenseItem3 = new OASExpenseItem();
        OASExpenseItem expenseItem4 = expenseItem3;

        System.assert(expenseItem1.equals(expenseItem2));
        System.assert(expenseItem2.equals(expenseItem1));
        System.assert(expenseItem1.equals(expenseItem1));
        System.assert(expenseItem3.equals(expenseItem4));
        System.assert(expenseItem4.equals(expenseItem3));
        System.assert(expenseItem3.equals(expenseItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExpenseItem expenseItem1 = OASExpenseItem.getExample();
        OASExpenseItem expenseItem2 = OASExpenseItem.getExample();
        OASExpenseItem expenseItem3 = new OASExpenseItem();
        OASExpenseItem expenseItem4 = new OASExpenseItem();

        System.assert(expenseItem1.equals(expenseItem2));
        System.assert(expenseItem2.equals(expenseItem1));
        System.assert(expenseItem3.equals(expenseItem4));
        System.assert(expenseItem4.equals(expenseItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExpenseItem expenseItem1 = OASExpenseItem.getExample();
        OASExpenseItem expenseItem2 = new OASExpenseItem();

        System.assertEquals(false, expenseItem1.equals('foo'));
        System.assertEquals(false, expenseItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExpenseItem expenseItem1 = OASExpenseItem.getExample();
        OASExpenseItem expenseItem2 = new OASExpenseItem();
        OASExpenseItem expenseItem3;

        System.assertEquals(false, expenseItem1.equals(expenseItem3));
        System.assertEquals(false, expenseItem2.equals(expenseItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExpenseItem expenseItem1 = OASExpenseItem.getExample();
        OASExpenseItem expenseItem2 = new OASExpenseItem();

        System.assertEquals(expenseItem1.hashCode(), expenseItem1.hashCode());
        System.assertEquals(expenseItem2.hashCode(), expenseItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExpenseItem expenseItem1 = OASExpenseItem.getExample();
        OASExpenseItem expenseItem2 = OASExpenseItem.getExample();
        OASExpenseItem expenseItem3 = new OASExpenseItem();
        OASExpenseItem expenseItem4 = new OASExpenseItem();

        System.assert(expenseItem1.equals(expenseItem2));
        System.assert(expenseItem3.equals(expenseItem4));
        System.assertEquals(expenseItem1.hashCode(), expenseItem2.hashCode());
        System.assertEquals(expenseItem3.hashCode(), expenseItem4.hashCode());
    }
}
