@isTest
private class OASPlanTest {
    @isTest
    private static void equalsSameInstance() {
        OASPlan plan1 = OASPlan.getExample();
        OASPlan plan2 = plan1;
        OASPlan plan3 = new OASPlan();
        OASPlan plan4 = plan3;

        System.assert(plan1.equals(plan2));
        System.assert(plan2.equals(plan1));
        System.assert(plan1.equals(plan1));
        System.assert(plan3.equals(plan4));
        System.assert(plan4.equals(plan3));
        System.assert(plan3.equals(plan3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPlan plan1 = OASPlan.getExample();
        OASPlan plan2 = OASPlan.getExample();
        OASPlan plan3 = new OASPlan();
        OASPlan plan4 = new OASPlan();

        System.assert(plan1.equals(plan2));
        System.assert(plan2.equals(plan1));
        System.assert(plan3.equals(plan4));
        System.assert(plan4.equals(plan3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPlan plan1 = OASPlan.getExample();
        OASPlan plan2 = new OASPlan();

        System.assertEquals(false, plan1.equals('foo'));
        System.assertEquals(false, plan2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPlan plan1 = OASPlan.getExample();
        OASPlan plan2 = new OASPlan();
        OASPlan plan3;

        System.assertEquals(false, plan1.equals(plan3));
        System.assertEquals(false, plan2.equals(plan3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPlan plan1 = OASPlan.getExample();
        OASPlan plan2 = new OASPlan();

        System.assertEquals(plan1.hashCode(), plan1.hashCode());
        System.assertEquals(plan2.hashCode(), plan2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPlan plan1 = OASPlan.getExample();
        OASPlan plan2 = OASPlan.getExample();
        OASPlan plan3 = new OASPlan();
        OASPlan plan4 = new OASPlan();

        System.assert(plan1.equals(plan2));
        System.assert(plan3.equals(plan4));
        System.assertEquals(plan1.hashCode(), plan2.hashCode());
        System.assertEquals(plan3.hashCode(), plan4.hashCode());
    }
}
