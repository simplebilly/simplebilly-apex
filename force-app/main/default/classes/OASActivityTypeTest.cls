@isTest
private class OASActivityTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASActivityType> expected = new Set<OASActivityType>{
            OASActivityType.CALL,
            OASActivityType.EMAIL,
            OASActivityType.MEETING,
            OASActivityType.TASK,
            OASActivityType.NOTE
        };
        Set<OASActivityType> actual  = new Set<OASActivityType>(OASActivityType.values());
        System.assertEquals(expected, actual);
    }
}
