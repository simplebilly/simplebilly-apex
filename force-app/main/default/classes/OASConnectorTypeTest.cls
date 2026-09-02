@isTest
private class OASConnectorTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASConnectorType> expected = new Set<OASConnectorType>{
            OASConnectorType.APIKEY,
            OASConnectorType.OAUTH
        };
        Set<OASConnectorType> actual  = new Set<OASConnectorType>(OASConnectorType.values());
        System.assertEquals(expected, actual);
    }
}
