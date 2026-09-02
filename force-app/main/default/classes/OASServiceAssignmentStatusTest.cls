@isTest
private class OASServiceAssignmentStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASServiceAssignmentStatus> expected = new Set<OASServiceAssignmentStatus>{
            OASServiceAssignmentStatus.PLANNED,
            OASServiceAssignmentStatus.CONFIRMED,
            OASServiceAssignmentStatus.EN_ROUTE,
            OASServiceAssignmentStatus.IN_PROGRESS,
            OASServiceAssignmentStatus.COMPLETED,
            OASServiceAssignmentStatus.CANCELLED
        };
        Set<OASServiceAssignmentStatus> actual  = new Set<OASServiceAssignmentStatus>(OASServiceAssignmentStatus.values());
        System.assertEquals(expected, actual);
    }
}
