@isTest
private class OASEmploymentTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASEmploymentType> expected = new Set<OASEmploymentType>{
            OASEmploymentType.FULLTIME,
            OASEmploymentType.PARTTIME,
            OASEmploymentType.CONTRACT,
            OASEmploymentType.INTERNSHIP,
            OASEmploymentType.TEMPORARY
        };
        Set<OASEmploymentType> actual  = new Set<OASEmploymentType>(OASEmploymentType.values());
        System.assertEquals(expected, actual);
    }
}
