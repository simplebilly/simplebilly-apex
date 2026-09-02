@isTest
private class OASApiResponseVecPlanTest {
    @isTest
    private static void equalsSameInstance() {
        OASApiResponseVecPlan apiResponseVecPlan1 = OASApiResponseVecPlan.getExample();
        OASApiResponseVecPlan apiResponseVecPlan2 = apiResponseVecPlan1;
        OASApiResponseVecPlan apiResponseVecPlan3 = new OASApiResponseVecPlan();
        OASApiResponseVecPlan apiResponseVecPlan4 = apiResponseVecPlan3;

        System.assert(apiResponseVecPlan1.equals(apiResponseVecPlan2));
        System.assert(apiResponseVecPlan2.equals(apiResponseVecPlan1));
        System.assert(apiResponseVecPlan1.equals(apiResponseVecPlan1));
        System.assert(apiResponseVecPlan3.equals(apiResponseVecPlan4));
        System.assert(apiResponseVecPlan4.equals(apiResponseVecPlan3));
        System.assert(apiResponseVecPlan3.equals(apiResponseVecPlan3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASApiResponseVecPlan apiResponseVecPlan1 = OASApiResponseVecPlan.getExample();
        OASApiResponseVecPlan apiResponseVecPlan2 = OASApiResponseVecPlan.getExample();
        OASApiResponseVecPlan apiResponseVecPlan3 = new OASApiResponseVecPlan();
        OASApiResponseVecPlan apiResponseVecPlan4 = new OASApiResponseVecPlan();

        System.assert(apiResponseVecPlan1.equals(apiResponseVecPlan2));
        System.assert(apiResponseVecPlan2.equals(apiResponseVecPlan1));
        System.assert(apiResponseVecPlan3.equals(apiResponseVecPlan4));
        System.assert(apiResponseVecPlan4.equals(apiResponseVecPlan3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASApiResponseVecPlan apiResponseVecPlan1 = OASApiResponseVecPlan.getExample();
        OASApiResponseVecPlan apiResponseVecPlan2 = new OASApiResponseVecPlan();

        System.assertEquals(false, apiResponseVecPlan1.equals('foo'));
        System.assertEquals(false, apiResponseVecPlan2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASApiResponseVecPlan apiResponseVecPlan1 = OASApiResponseVecPlan.getExample();
        OASApiResponseVecPlan apiResponseVecPlan2 = new OASApiResponseVecPlan();
        OASApiResponseVecPlan apiResponseVecPlan3;

        System.assertEquals(false, apiResponseVecPlan1.equals(apiResponseVecPlan3));
        System.assertEquals(false, apiResponseVecPlan2.equals(apiResponseVecPlan3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASApiResponseVecPlan apiResponseVecPlan1 = OASApiResponseVecPlan.getExample();
        OASApiResponseVecPlan apiResponseVecPlan2 = new OASApiResponseVecPlan();

        System.assertEquals(apiResponseVecPlan1.hashCode(), apiResponseVecPlan1.hashCode());
        System.assertEquals(apiResponseVecPlan2.hashCode(), apiResponseVecPlan2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASApiResponseVecPlan apiResponseVecPlan1 = OASApiResponseVecPlan.getExample();
        OASApiResponseVecPlan apiResponseVecPlan2 = OASApiResponseVecPlan.getExample();
        OASApiResponseVecPlan apiResponseVecPlan3 = new OASApiResponseVecPlan();
        OASApiResponseVecPlan apiResponseVecPlan4 = new OASApiResponseVecPlan();

        System.assert(apiResponseVecPlan1.equals(apiResponseVecPlan2));
        System.assert(apiResponseVecPlan3.equals(apiResponseVecPlan4));
        System.assertEquals(apiResponseVecPlan1.hashCode(), apiResponseVecPlan2.hashCode());
        System.assertEquals(apiResponseVecPlan3.hashCode(), apiResponseVecPlan4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASApiResponseVecPlan apiResponseVecPlan = new OASApiResponseVecPlan();
        System.assertEquals(new List<OASApiResponseVecPlanDataInner>(), apiResponseVecPlan.data);
        System.assertEquals(null, apiResponseVecPlan.error);
        System.assertEquals(null, apiResponseVecPlan.message);
        System.assertEquals(null, apiResponseVecPlan.success);
    }
}
