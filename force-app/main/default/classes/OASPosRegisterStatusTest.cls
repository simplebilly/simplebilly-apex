@isTest
private class OASPosRegisterStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASPosRegisterStatus> expected = new Set<OASPosRegisterStatus>{
            OASPosRegisterStatus.ACTIVE,
            OASPosRegisterStatus.DISABLED
        };
        Set<OASPosRegisterStatus> actual  = new Set<OASPosRegisterStatus>(OASPosRegisterStatus.values());
        System.assertEquals(expected, actual);
    }
}
