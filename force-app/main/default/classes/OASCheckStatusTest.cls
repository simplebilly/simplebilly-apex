@isTest
private class OASCheckStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASCheckStatus> expected = new Set<OASCheckStatus>{
            OASCheckStatus.OK,
            OASCheckStatus.WARNING,
            OASCheckStatus.ERROR
        };
        Set<OASCheckStatus> actual  = new Set<OASCheckStatus>(OASCheckStatus.values());
        System.assertEquals(expected, actual);
    }
}
