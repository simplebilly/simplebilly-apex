@isTest
private class OASPosTableStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASPosTableStatus> expected = new Set<OASPosTableStatus>{
            OASPosTableStatus.FREE,
            OASPosTableStatus.OCCUPIED
        };
        Set<OASPosTableStatus> actual  = new Set<OASPosTableStatus>(OASPosTableStatus.values());
        System.assertEquals(expected, actual);
    }
}
