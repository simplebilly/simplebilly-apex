@isTest
private class OASAbsenceTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASAbsenceType> expected = new Set<OASAbsenceType>{
            OASAbsenceType.VACATION,
            OASAbsenceType.SICK,
            OASAbsenceType.SABBATICAL,
            OASAbsenceType.PARENTAL,
            OASAbsenceType.OTHER
        };
        Set<OASAbsenceType> actual  = new Set<OASAbsenceType>(OASAbsenceType.values());
        System.assertEquals(expected, actual);
    }
}
