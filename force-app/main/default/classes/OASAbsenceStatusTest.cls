@isTest
private class OASAbsenceStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASAbsenceStatus> expected = new Set<OASAbsenceStatus>{
            OASAbsenceStatus.PENDING,
            OASAbsenceStatus.APPROVED,
            OASAbsenceStatus.REJECTED,
            OASAbsenceStatus.CANCELLED
        };
        Set<OASAbsenceStatus> actual  = new Set<OASAbsenceStatus>(OASAbsenceStatus.values());
        System.assertEquals(expected, actual);
    }
}
