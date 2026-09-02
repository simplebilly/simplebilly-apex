@isTest
private class OASPlanFeaturesTest {
    @isTest
    private static void equalsSameInstance() {
        OASPlanFeatures planFeatures1 = OASPlanFeatures.getExample();
        OASPlanFeatures planFeatures2 = planFeatures1;
        OASPlanFeatures planFeatures3 = new OASPlanFeatures();
        OASPlanFeatures planFeatures4 = planFeatures3;

        System.assert(planFeatures1.equals(planFeatures2));
        System.assert(planFeatures2.equals(planFeatures1));
        System.assert(planFeatures1.equals(planFeatures1));
        System.assert(planFeatures3.equals(planFeatures4));
        System.assert(planFeatures4.equals(planFeatures3));
        System.assert(planFeatures3.equals(planFeatures3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPlanFeatures planFeatures1 = OASPlanFeatures.getExample();
        OASPlanFeatures planFeatures2 = OASPlanFeatures.getExample();
        OASPlanFeatures planFeatures3 = new OASPlanFeatures();
        OASPlanFeatures planFeatures4 = new OASPlanFeatures();

        System.assert(planFeatures1.equals(planFeatures2));
        System.assert(planFeatures2.equals(planFeatures1));
        System.assert(planFeatures3.equals(planFeatures4));
        System.assert(planFeatures4.equals(planFeatures3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPlanFeatures planFeatures1 = OASPlanFeatures.getExample();
        OASPlanFeatures planFeatures2 = new OASPlanFeatures();

        System.assertEquals(false, planFeatures1.equals('foo'));
        System.assertEquals(false, planFeatures2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPlanFeatures planFeatures1 = OASPlanFeatures.getExample();
        OASPlanFeatures planFeatures2 = new OASPlanFeatures();
        OASPlanFeatures planFeatures3;

        System.assertEquals(false, planFeatures1.equals(planFeatures3));
        System.assertEquals(false, planFeatures2.equals(planFeatures3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPlanFeatures planFeatures1 = OASPlanFeatures.getExample();
        OASPlanFeatures planFeatures2 = new OASPlanFeatures();

        System.assertEquals(planFeatures1.hashCode(), planFeatures1.hashCode());
        System.assertEquals(planFeatures2.hashCode(), planFeatures2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPlanFeatures planFeatures1 = OASPlanFeatures.getExample();
        OASPlanFeatures planFeatures2 = OASPlanFeatures.getExample();
        OASPlanFeatures planFeatures3 = new OASPlanFeatures();
        OASPlanFeatures planFeatures4 = new OASPlanFeatures();

        System.assert(planFeatures1.equals(planFeatures2));
        System.assert(planFeatures3.equals(planFeatures4));
        System.assertEquals(planFeatures1.hashCode(), planFeatures2.hashCode());
        System.assertEquals(planFeatures3.hashCode(), planFeatures4.hashCode());
    }
}
