@isTest
private class OASSyncStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASSyncStatus> expected = new Set<OASSyncStatus>{
            OASSyncStatus.PENDING,
            OASSyncStatus.CONNECTED,
            OASSyncStatus.SUCCESS,
            OASSyncStatus.ERROR
        };
        Set<OASSyncStatus> actual  = new Set<OASSyncStatus>(OASSyncStatus.values());
        System.assertEquals(expected, actual);
    }
}
