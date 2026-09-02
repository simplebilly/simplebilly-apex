@isTest
private class OASAssignmentStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASAssignmentStatus> expected = new Set<OASAssignmentStatus>{
            OASAssignmentStatus.REQUIRED,
            OASAssignmentStatus.COMPLETED,
            OASAssignmentStatus.OVERDUE,
            OASAssignmentStatus.WAIVED
        };
        Set<OASAssignmentStatus> actual  = new Set<OASAssignmentStatus>(OASAssignmentStatus.values());
        System.assertEquals(expected, actual);
    }
}
