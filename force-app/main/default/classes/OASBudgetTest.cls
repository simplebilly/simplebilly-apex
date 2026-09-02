@isTest
private class OASBudgetTest {
    @isTest
    private static void equalsSameInstance() {
        OASBudget budget1 = OASBudget.getExample();
        OASBudget budget2 = budget1;
        OASBudget budget3 = new OASBudget();
        OASBudget budget4 = budget3;

        System.assert(budget1.equals(budget2));
        System.assert(budget2.equals(budget1));
        System.assert(budget1.equals(budget1));
        System.assert(budget3.equals(budget4));
        System.assert(budget4.equals(budget3));
        System.assert(budget3.equals(budget3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBudget budget1 = OASBudget.getExample();
        OASBudget budget2 = OASBudget.getExample();
        OASBudget budget3 = new OASBudget();
        OASBudget budget4 = new OASBudget();

        System.assert(budget1.equals(budget2));
        System.assert(budget2.equals(budget1));
        System.assert(budget3.equals(budget4));
        System.assert(budget4.equals(budget3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBudget budget1 = OASBudget.getExample();
        OASBudget budget2 = new OASBudget();

        System.assertEquals(false, budget1.equals('foo'));
        System.assertEquals(false, budget2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBudget budget1 = OASBudget.getExample();
        OASBudget budget2 = new OASBudget();
        OASBudget budget3;

        System.assertEquals(false, budget1.equals(budget3));
        System.assertEquals(false, budget2.equals(budget3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBudget budget1 = OASBudget.getExample();
        OASBudget budget2 = new OASBudget();

        System.assertEquals(budget1.hashCode(), budget1.hashCode());
        System.assertEquals(budget2.hashCode(), budget2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBudget budget1 = OASBudget.getExample();
        OASBudget budget2 = OASBudget.getExample();
        OASBudget budget3 = new OASBudget();
        OASBudget budget4 = new OASBudget();

        System.assert(budget1.equals(budget2));
        System.assert(budget3.equals(budget4));
        System.assertEquals(budget1.hashCode(), budget2.hashCode());
        System.assertEquals(budget3.hashCode(), budget4.hashCode());
    }
}
