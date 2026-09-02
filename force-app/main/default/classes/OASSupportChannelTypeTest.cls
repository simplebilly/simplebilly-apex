@isTest
private class OASSupportChannelTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASSupportChannelType> expected = new Set<OASSupportChannelType>{
            OASSupportChannelType.EMAIL,
            OASSupportChannelType.CHAT
        };
        Set<OASSupportChannelType> actual  = new Set<OASSupportChannelType>(OASSupportChannelType.values());
        System.assertEquals(expected, actual);
    }
}
