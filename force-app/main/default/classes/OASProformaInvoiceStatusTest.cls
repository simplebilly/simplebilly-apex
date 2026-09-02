@isTest
private class OASProformaInvoiceStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASProformaInvoiceStatus> expected = new Set<OASProformaInvoiceStatus>{
            OASProformaInvoiceStatus.DRAFT,
            OASProformaInvoiceStatus.SENT,
            OASProformaInvoiceStatus.CONVERTED
        };
        Set<OASProformaInvoiceStatus> actual  = new Set<OASProformaInvoiceStatus>(OASProformaInvoiceStatus.values());
        System.assertEquals(expected, actual);
    }
}
