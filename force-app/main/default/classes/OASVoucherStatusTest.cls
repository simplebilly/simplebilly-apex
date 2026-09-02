@isTest
private class OASVoucherStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASVoucherStatus> expected = new Set<OASVoucherStatus>{
            OASVoucherStatus.OPEN,
            OASVoucherStatus.PAID,
            OASVoucherStatus.INVOICED
        };
        Set<OASVoucherStatus> actual  = new Set<OASVoucherStatus>(OASVoucherStatus.values());
        System.assertEquals(expected, actual);
    }
}
