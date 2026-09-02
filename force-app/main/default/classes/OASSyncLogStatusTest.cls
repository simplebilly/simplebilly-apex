@isTest
private class OASSyncLogStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASSyncLogStatus> expected = new Set<OASSyncLogStatus>{
            OASSyncLogStatus.RUNNING,
            OASSyncLogStatus.SUCCESS,
            OASSyncLogStatus.ERROR
        };
        Set<OASSyncLogStatus> actual  = new Set<OASSyncLogStatus>(OASSyncLogStatus.values());
        System.assertEquals(expected, actual);
    }
}
