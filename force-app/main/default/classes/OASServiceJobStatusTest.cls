@isTest
private class OASServiceJobStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASServiceJobStatus> expected = new Set<OASServiceJobStatus>{
            OASServiceJobStatus.PENDING,
            OASServiceJobStatus.ASSIGNED,
            OASServiceJobStatus.EN_ROUTE,
            OASServiceJobStatus.IN_PROGRESS,
            OASServiceJobStatus.COMPLETED,
            OASServiceJobStatus.CANCELLED
        };
        Set<OASServiceJobStatus> actual  = new Set<OASServiceJobStatus>(OASServiceJobStatus.values());
        System.assertEquals(expected, actual);
    }
}
