@isTest
private class OASBudgetKategorieTest {
    @isTest
    private static void equalsSameInstance() {
        OASBudgetKategorie budgetKategorie1 = OASBudgetKategorie.getExample();
        OASBudgetKategorie budgetKategorie2 = budgetKategorie1;
        OASBudgetKategorie budgetKategorie3 = new OASBudgetKategorie();
        OASBudgetKategorie budgetKategorie4 = budgetKategorie3;

        System.assert(budgetKategorie1.equals(budgetKategorie2));
        System.assert(budgetKategorie2.equals(budgetKategorie1));
        System.assert(budgetKategorie1.equals(budgetKategorie1));
        System.assert(budgetKategorie3.equals(budgetKategorie4));
        System.assert(budgetKategorie4.equals(budgetKategorie3));
        System.assert(budgetKategorie3.equals(budgetKategorie3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBudgetKategorie budgetKategorie1 = OASBudgetKategorie.getExample();
        OASBudgetKategorie budgetKategorie2 = OASBudgetKategorie.getExample();
        OASBudgetKategorie budgetKategorie3 = new OASBudgetKategorie();
        OASBudgetKategorie budgetKategorie4 = new OASBudgetKategorie();

        System.assert(budgetKategorie1.equals(budgetKategorie2));
        System.assert(budgetKategorie2.equals(budgetKategorie1));
        System.assert(budgetKategorie3.equals(budgetKategorie4));
        System.assert(budgetKategorie4.equals(budgetKategorie3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBudgetKategorie budgetKategorie1 = OASBudgetKategorie.getExample();
        OASBudgetKategorie budgetKategorie2 = new OASBudgetKategorie();

        System.assertEquals(false, budgetKategorie1.equals('foo'));
        System.assertEquals(false, budgetKategorie2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBudgetKategorie budgetKategorie1 = OASBudgetKategorie.getExample();
        OASBudgetKategorie budgetKategorie2 = new OASBudgetKategorie();
        OASBudgetKategorie budgetKategorie3;

        System.assertEquals(false, budgetKategorie1.equals(budgetKategorie3));
        System.assertEquals(false, budgetKategorie2.equals(budgetKategorie3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBudgetKategorie budgetKategorie1 = OASBudgetKategorie.getExample();
        OASBudgetKategorie budgetKategorie2 = new OASBudgetKategorie();

        System.assertEquals(budgetKategorie1.hashCode(), budgetKategorie1.hashCode());
        System.assertEquals(budgetKategorie2.hashCode(), budgetKategorie2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBudgetKategorie budgetKategorie1 = OASBudgetKategorie.getExample();
        OASBudgetKategorie budgetKategorie2 = OASBudgetKategorie.getExample();
        OASBudgetKategorie budgetKategorie3 = new OASBudgetKategorie();
        OASBudgetKategorie budgetKategorie4 = new OASBudgetKategorie();

        System.assert(budgetKategorie1.equals(budgetKategorie2));
        System.assert(budgetKategorie3.equals(budgetKategorie4));
        System.assertEquals(budgetKategorie1.hashCode(), budgetKategorie2.hashCode());
        System.assertEquals(budgetKategorie3.hashCode(), budgetKategorie4.hashCode());
    }
}
