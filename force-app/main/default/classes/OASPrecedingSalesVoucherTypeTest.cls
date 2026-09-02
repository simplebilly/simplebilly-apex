@isTest
private class OASPrecedingSalesVoucherTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASPrecedingSalesVoucherType> expected = new Set<OASPrecedingSalesVoucherType>{
            OASPrecedingSalesVoucherType.ORDER_CONFIRMATION,
            OASPrecedingSalesVoucherType.QUOTATION,
            OASPrecedingSalesVoucherType.PROFORMA_INVOICE
        };
        Set<OASPrecedingSalesVoucherType> actual  = new Set<OASPrecedingSalesVoucherType>(OASPrecedingSalesVoucherType.values());
        System.assertEquals(expected, actual);
    }
}
