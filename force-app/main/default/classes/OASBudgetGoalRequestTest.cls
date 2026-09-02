@isTest
private class OASBudgetGoalRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASBudgetGoalRequest budgetGoalRequest1 = OASBudgetGoalRequest.getExample();
        OASBudgetGoalRequest budgetGoalRequest2 = budgetGoalRequest1;
        OASBudgetGoalRequest budgetGoalRequest3 = new OASBudgetGoalRequest();
        OASBudgetGoalRequest budgetGoalRequest4 = budgetGoalRequest3;

        System.assert(budgetGoalRequest1.equals(budgetGoalRequest2));
        System.assert(budgetGoalRequest2.equals(budgetGoalRequest1));
        System.assert(budgetGoalRequest1.equals(budgetGoalRequest1));
        System.assert(budgetGoalRequest3.equals(budgetGoalRequest4));
        System.assert(budgetGoalRequest4.equals(budgetGoalRequest3));
        System.assert(budgetGoalRequest3.equals(budgetGoalRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBudgetGoalRequest budgetGoalRequest1 = OASBudgetGoalRequest.getExample();
        OASBudgetGoalRequest budgetGoalRequest2 = OASBudgetGoalRequest.getExample();
        OASBudgetGoalRequest budgetGoalRequest3 = new OASBudgetGoalRequest();
        OASBudgetGoalRequest budgetGoalRequest4 = new OASBudgetGoalRequest();

        System.assert(budgetGoalRequest1.equals(budgetGoalRequest2));
        System.assert(budgetGoalRequest2.equals(budgetGoalRequest1));
        System.assert(budgetGoalRequest3.equals(budgetGoalRequest4));
        System.assert(budgetGoalRequest4.equals(budgetGoalRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBudgetGoalRequest budgetGoalRequest1 = OASBudgetGoalRequest.getExample();
        OASBudgetGoalRequest budgetGoalRequest2 = new OASBudgetGoalRequest();

        System.assertEquals(false, budgetGoalRequest1.equals('foo'));
        System.assertEquals(false, budgetGoalRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBudgetGoalRequest budgetGoalRequest1 = OASBudgetGoalRequest.getExample();
        OASBudgetGoalRequest budgetGoalRequest2 = new OASBudgetGoalRequest();
        OASBudgetGoalRequest budgetGoalRequest3;

        System.assertEquals(false, budgetGoalRequest1.equals(budgetGoalRequest3));
        System.assertEquals(false, budgetGoalRequest2.equals(budgetGoalRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBudgetGoalRequest budgetGoalRequest1 = OASBudgetGoalRequest.getExample();
        OASBudgetGoalRequest budgetGoalRequest2 = new OASBudgetGoalRequest();

        System.assertEquals(budgetGoalRequest1.hashCode(), budgetGoalRequest1.hashCode());
        System.assertEquals(budgetGoalRequest2.hashCode(), budgetGoalRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBudgetGoalRequest budgetGoalRequest1 = OASBudgetGoalRequest.getExample();
        OASBudgetGoalRequest budgetGoalRequest2 = OASBudgetGoalRequest.getExample();
        OASBudgetGoalRequest budgetGoalRequest3 = new OASBudgetGoalRequest();
        OASBudgetGoalRequest budgetGoalRequest4 = new OASBudgetGoalRequest();

        System.assert(budgetGoalRequest1.equals(budgetGoalRequest2));
        System.assert(budgetGoalRequest3.equals(budgetGoalRequest4));
        System.assertEquals(budgetGoalRequest1.hashCode(), budgetGoalRequest2.hashCode());
        System.assertEquals(budgetGoalRequest3.hashCode(), budgetGoalRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBudgetGoalRequest budgetGoalRequest = new OASBudgetGoalRequest();
        Map<String, String> x-property-mappings = budgetGoalRequest.getx-property-mappings();
        System.assertEquals('monthlyGoal', x-property-mappings.get('monthly_goal'));
    }
}
