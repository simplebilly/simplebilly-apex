@isTest
private class OASExecutionStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASExecutionStatus> expected = new Set<OASExecutionStatus>{
            OASExecutionStatus.ACTIVE,
            OASExecutionStatus.PAUSED,
            OASExecutionStatus.COMPLETED
        };
        Set<OASExecutionStatus> actual  = new Set<OASExecutionStatus>(OASExecutionStatus.values());
        System.assertEquals(expected, actual);
    }
}
