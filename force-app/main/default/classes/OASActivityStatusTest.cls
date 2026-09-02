@isTest
private class OASActivityStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASActivityStatus> expected = new Set<OASActivityStatus>{
            OASActivityStatus.OPEN,
            OASActivityStatus.DONE,
            OASActivityStatus.CANCELLED
        };
        Set<OASActivityStatus> actual  = new Set<OASActivityStatus>(OASActivityStatus.values());
        System.assertEquals(expected, actual);
    }
}
