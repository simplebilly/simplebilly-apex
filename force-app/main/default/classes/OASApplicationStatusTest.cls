@isTest
private class OASApplicationStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASApplicationStatus> expected = new Set<OASApplicationStatus>{
            OASApplicationStatus.NEW,
            OASApplicationStatus.REVIEWING,
            OASApplicationStatus.INTERVIEW,
            OASApplicationStatus.HIRED,
            OASApplicationStatus.REJECTED
        };
        Set<OASApplicationStatus> actual  = new Set<OASApplicationStatus>(OASApplicationStatus.values());
        System.assertEquals(expected, actual);
    }
}
