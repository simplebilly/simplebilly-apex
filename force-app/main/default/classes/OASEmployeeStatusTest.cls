@isTest
private class OASEmployeeStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASEmployeeStatus> expected = new Set<OASEmployeeStatus>{
            OASEmployeeStatus.ACTIVE,
            OASEmployeeStatus.INACTIVE,
            OASEmployeeStatus.TERMINATED
        };
        Set<OASEmployeeStatus> actual  = new Set<OASEmployeeStatus>(OASEmployeeStatus.values());
        System.assertEquals(expected, actual);
    }
}
