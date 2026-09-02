@isTest
private class OASPayrollRunStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASPayrollRunStatus> expected = new Set<OASPayrollRunStatus>{
            OASPayrollRunStatus.DRAFT,
            OASPayrollRunStatus.CALCULATED,
            OASPayrollRunStatus.APPROVED,
            OASPayrollRunStatus.PAID
        };
        Set<OASPayrollRunStatus> actual  = new Set<OASPayrollRunStatus>(OASPayrollRunStatus.values());
        System.assertEquals(expected, actual);
    }
}
