@isTest
private class OASBudgetErgebnisTest {
    @isTest
    private static void equalsSameInstance() {
        OASBudgetErgebnis budgetErgebnis1 = OASBudgetErgebnis.getExample();
        OASBudgetErgebnis budgetErgebnis2 = budgetErgebnis1;
        OASBudgetErgebnis budgetErgebnis3 = new OASBudgetErgebnis();
        OASBudgetErgebnis budgetErgebnis4 = budgetErgebnis3;

        System.assert(budgetErgebnis1.equals(budgetErgebnis2));
        System.assert(budgetErgebnis2.equals(budgetErgebnis1));
        System.assert(budgetErgebnis1.equals(budgetErgebnis1));
        System.assert(budgetErgebnis3.equals(budgetErgebnis4));
        System.assert(budgetErgebnis4.equals(budgetErgebnis3));
        System.assert(budgetErgebnis3.equals(budgetErgebnis3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBudgetErgebnis budgetErgebnis1 = OASBudgetErgebnis.getExample();
        OASBudgetErgebnis budgetErgebnis2 = OASBudgetErgebnis.getExample();
        OASBudgetErgebnis budgetErgebnis3 = new OASBudgetErgebnis();
        OASBudgetErgebnis budgetErgebnis4 = new OASBudgetErgebnis();

        System.assert(budgetErgebnis1.equals(budgetErgebnis2));
        System.assert(budgetErgebnis2.equals(budgetErgebnis1));
        System.assert(budgetErgebnis3.equals(budgetErgebnis4));
        System.assert(budgetErgebnis4.equals(budgetErgebnis3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBudgetErgebnis budgetErgebnis1 = OASBudgetErgebnis.getExample();
        OASBudgetErgebnis budgetErgebnis2 = new OASBudgetErgebnis();

        System.assertEquals(false, budgetErgebnis1.equals('foo'));
        System.assertEquals(false, budgetErgebnis2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBudgetErgebnis budgetErgebnis1 = OASBudgetErgebnis.getExample();
        OASBudgetErgebnis budgetErgebnis2 = new OASBudgetErgebnis();
        OASBudgetErgebnis budgetErgebnis3;

        System.assertEquals(false, budgetErgebnis1.equals(budgetErgebnis3));
        System.assertEquals(false, budgetErgebnis2.equals(budgetErgebnis3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBudgetErgebnis budgetErgebnis1 = OASBudgetErgebnis.getExample();
        OASBudgetErgebnis budgetErgebnis2 = new OASBudgetErgebnis();

        System.assertEquals(budgetErgebnis1.hashCode(), budgetErgebnis1.hashCode());
        System.assertEquals(budgetErgebnis2.hashCode(), budgetErgebnis2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBudgetErgebnis budgetErgebnis1 = OASBudgetErgebnis.getExample();
        OASBudgetErgebnis budgetErgebnis2 = OASBudgetErgebnis.getExample();
        OASBudgetErgebnis budgetErgebnis3 = new OASBudgetErgebnis();
        OASBudgetErgebnis budgetErgebnis4 = new OASBudgetErgebnis();

        System.assert(budgetErgebnis1.equals(budgetErgebnis2));
        System.assert(budgetErgebnis3.equals(budgetErgebnis4));
        System.assertEquals(budgetErgebnis1.hashCode(), budgetErgebnis2.hashCode());
        System.assertEquals(budgetErgebnis3.hashCode(), budgetErgebnis4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBudgetErgebnis budgetErgebnis = new OASBudgetErgebnis();
        Map<String, String> x-property-mappings = budgetErgebnis.getx-property-mappings();
        System.assertEquals('monatsBudget', x-property-mappings.get('monats_budget'));
        System.assertEquals('prognoseRestjahr', x-property-mappings.get('prognose_restjahr'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBudgetErgebnis budgetErgebnis = new OASBudgetErgebnis();
        System.assertEquals(new List<OASBudgetKategorie>(), budgetErgebnis.monatsBudget);
        System.assertEquals(new List<OASBudgetKategorie>(), budgetErgebnis.prognoseRestjahr);
        System.assertEquals(null, budgetErgebnis.jahr);
        System.assertEquals(null, budgetErgebnis.monat);
    }
}
