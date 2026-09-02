@isTest
private class OASApiResponseVecPlanDataInnerTest {
    @isTest
    private static void equalsSameInstance() {
        OASApiResponseVecPlanDataInner apiResponseVecPlanDataInner1 = OASApiResponseVecPlanDataInner.getExample();
        OASApiResponseVecPlanDataInner apiResponseVecPlanDataInner2 = apiResponseVecPlanDataInner1;
        OASApiResponseVecPlanDataInner apiResponseVecPlanDataInner3 = new OASApiResponseVecPlanDataInner();
        OASApiResponseVecPlanDataInner apiResponseVecPlanDataInner4 = apiResponseVecPlanDataInner3;

        System.assert(apiResponseVecPlanDataInner1.equals(apiResponseVecPlanDataInner2));
        System.assert(apiResponseVecPlanDataInner2.equals(apiResponseVecPlanDataInner1));
        System.assert(apiResponseVecPlanDataInner1.equals(apiResponseVecPlanDataInner1));
        System.assert(apiResponseVecPlanDataInner3.equals(apiResponseVecPlanDataInner4));
        System.assert(apiResponseVecPlanDataInner4.equals(apiResponseVecPlanDataInner3));
        System.assert(apiResponseVecPlanDataInner3.equals(apiResponseVecPlanDataInner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASApiResponseVecPlanDataInner apiResponseVecPlanDataInner1 = OASApiResponseVecPlanDataInner.getExample();
        OASApiResponseVecPlanDataInner apiResponseVecPlanDataInner2 = OASApiResponseVecPlanDataInner.getExample();
        OASApiResponseVecPlanDataInner apiResponseVecPlanDataInner3 = new OASApiResponseVecPlanDataInner();
        OASApiResponseVecPlanDataInner apiResponseVecPlanDataInner4 = new OASApiResponseVecPlanDataInner();

        System.assert(apiResponseVecPlanDataInner1.equals(apiResponseVecPlanDataInner2));
        System.assert(apiResponseVecPlanDataInner2.equals(apiResponseVecPlanDataInner1));
        System.assert(apiResponseVecPlanDataInner3.equals(apiResponseVecPlanDataInner4));
        System.assert(apiResponseVecPlanDataInner4.equals(apiResponseVecPlanDataInner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASApiResponseVecPlanDataInner apiResponseVecPlanDataInner1 = OASApiResponseVecPlanDataInner.getExample();
        OASApiResponseVecPlanDataInner apiResponseVecPlanDataInner2 = new OASApiResponseVecPlanDataInner();

        System.assertEquals(false, apiResponseVecPlanDataInner1.equals('foo'));
        System.assertEquals(false, apiResponseVecPlanDataInner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASApiResponseVecPlanDataInner apiResponseVecPlanDataInner1 = OASApiResponseVecPlanDataInner.getExample();
        OASApiResponseVecPlanDataInner apiResponseVecPlanDataInner2 = new OASApiResponseVecPlanDataInner();
        OASApiResponseVecPlanDataInner apiResponseVecPlanDataInner3;

        System.assertEquals(false, apiResponseVecPlanDataInner1.equals(apiResponseVecPlanDataInner3));
        System.assertEquals(false, apiResponseVecPlanDataInner2.equals(apiResponseVecPlanDataInner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASApiResponseVecPlanDataInner apiResponseVecPlanDataInner1 = OASApiResponseVecPlanDataInner.getExample();
        OASApiResponseVecPlanDataInner apiResponseVecPlanDataInner2 = new OASApiResponseVecPlanDataInner();

        System.assertEquals(apiResponseVecPlanDataInner1.hashCode(), apiResponseVecPlanDataInner1.hashCode());
        System.assertEquals(apiResponseVecPlanDataInner2.hashCode(), apiResponseVecPlanDataInner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASApiResponseVecPlanDataInner apiResponseVecPlanDataInner1 = OASApiResponseVecPlanDataInner.getExample();
        OASApiResponseVecPlanDataInner apiResponseVecPlanDataInner2 = OASApiResponseVecPlanDataInner.getExample();
        OASApiResponseVecPlanDataInner apiResponseVecPlanDataInner3 = new OASApiResponseVecPlanDataInner();
        OASApiResponseVecPlanDataInner apiResponseVecPlanDataInner4 = new OASApiResponseVecPlanDataInner();

        System.assert(apiResponseVecPlanDataInner1.equals(apiResponseVecPlanDataInner2));
        System.assert(apiResponseVecPlanDataInner3.equals(apiResponseVecPlanDataInner4));
        System.assertEquals(apiResponseVecPlanDataInner1.hashCode(), apiResponseVecPlanDataInner2.hashCode());
        System.assertEquals(apiResponseVecPlanDataInner3.hashCode(), apiResponseVecPlanDataInner4.hashCode());
    }
}
