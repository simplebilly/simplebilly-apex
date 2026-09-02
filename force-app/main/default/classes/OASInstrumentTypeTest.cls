@isTest
private class OASInstrumentTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASInstrumentType> expected = new Set<OASInstrumentType>{
            OASInstrumentType.TYPISCH,
            OASInstrumentType.ATYPISCH
        };
        Set<OASInstrumentType> actual  = new Set<OASInstrumentType>(OASInstrumentType.values());
        System.assertEquals(expected, actual);
    }
}
