@isTest
private class OASMessageTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASMessageType> expected = new Set<OASMessageType>{
            OASMessageType.TEXT,
            OASMessageType.HTML
        };
        Set<OASMessageType> actual  = new Set<OASMessageType>(OASMessageType.values());
        System.assertEquals(expected, actual);
    }
}
