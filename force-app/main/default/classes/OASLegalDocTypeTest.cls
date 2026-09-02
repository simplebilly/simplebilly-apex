@isTest
private class OASLegalDocTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASLegalDocType> expected = new Set<OASLegalDocType>{
            OASLegalDocType.IMPRINT,
            OASLegalDocType.PRIVACY,
            OASLegalDocType.TERMS,
            OASLegalDocType.WITHDRAWAL,
            OASLegalDocType.REFUND,
            OASLegalDocType.SHIPPING,
            OASLegalDocType.GPSR,
            OASLegalDocType.COOKIE_NOTICE
        };
        Set<OASLegalDocType> actual  = new Set<OASLegalDocType>(OASLegalDocType.values());
        System.assertEquals(expected, actual);
    }
}
