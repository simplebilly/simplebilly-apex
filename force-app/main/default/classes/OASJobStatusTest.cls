@isTest
private class OASJobStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASJobStatus> expected = new Set<OASJobStatus>{
            OASJobStatus.PENDING,
            OASJobStatus.RUNNING,
            OASJobStatus.DONE,
            OASJobStatus.FAILED
        };
        Set<OASJobStatus> actual  = new Set<OASJobStatus>(OASJobStatus.values());
        System.assertEquals(expected, actual);
    }
}
