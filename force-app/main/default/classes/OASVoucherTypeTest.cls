@isTest
private class OASVoucherTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASVoucherType> expected = new Set<OASVoucherType>{
            OASVoucherType.INVOICE
        };
        Set<OASVoucherType> actual  = new Set<OASVoucherType>(OASVoucherType.values());
        System.assertEquals(expected, actual);
    }
}
