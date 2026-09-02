@isTest
private class OASPlanLimitsTest {
    @isTest
    private static void equalsSameInstance() {
        OASPlanLimits planLimits1 = OASPlanLimits.getExample();
        OASPlanLimits planLimits2 = planLimits1;
        OASPlanLimits planLimits3 = new OASPlanLimits();
        OASPlanLimits planLimits4 = planLimits3;

        System.assert(planLimits1.equals(planLimits2));
        System.assert(planLimits2.equals(planLimits1));
        System.assert(planLimits1.equals(planLimits1));
        System.assert(planLimits3.equals(planLimits4));
        System.assert(planLimits4.equals(planLimits3));
        System.assert(planLimits3.equals(planLimits3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPlanLimits planLimits1 = OASPlanLimits.getExample();
        OASPlanLimits planLimits2 = OASPlanLimits.getExample();
        OASPlanLimits planLimits3 = new OASPlanLimits();
        OASPlanLimits planLimits4 = new OASPlanLimits();

        System.assert(planLimits1.equals(planLimits2));
        System.assert(planLimits2.equals(planLimits1));
        System.assert(planLimits3.equals(planLimits4));
        System.assert(planLimits4.equals(planLimits3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPlanLimits planLimits1 = OASPlanLimits.getExample();
        OASPlanLimits planLimits2 = new OASPlanLimits();

        System.assertEquals(false, planLimits1.equals('foo'));
        System.assertEquals(false, planLimits2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPlanLimits planLimits1 = OASPlanLimits.getExample();
        OASPlanLimits planLimits2 = new OASPlanLimits();
        OASPlanLimits planLimits3;

        System.assertEquals(false, planLimits1.equals(planLimits3));
        System.assertEquals(false, planLimits2.equals(planLimits3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPlanLimits planLimits1 = OASPlanLimits.getExample();
        OASPlanLimits planLimits2 = new OASPlanLimits();

        System.assertEquals(planLimits1.hashCode(), planLimits1.hashCode());
        System.assertEquals(planLimits2.hashCode(), planLimits2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPlanLimits planLimits1 = OASPlanLimits.getExample();
        OASPlanLimits planLimits2 = OASPlanLimits.getExample();
        OASPlanLimits planLimits3 = new OASPlanLimits();
        OASPlanLimits planLimits4 = new OASPlanLimits();

        System.assert(planLimits1.equals(planLimits2));
        System.assert(planLimits3.equals(planLimits4));
        System.assertEquals(planLimits1.hashCode(), planLimits2.hashCode());
        System.assertEquals(planLimits3.hashCode(), planLimits4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPlanLimits planLimits = new OASPlanLimits();
        System.assertEquals(new Map<String, Long>(), planLimits.metered);
        System.assertEquals(new List<String>(), planLimits.paidConnectors);
        System.assertEquals(null, planLimits.maxConnectors);
        System.assertEquals(null, planLimits.maxInvoicesPerMonth);
        System.assertEquals(null, planLimits.maxUsers);
    }
}
