@isTest
private class OASSupplierInvoiceStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASSupplierInvoiceStatus> expected = new Set<OASSupplierInvoiceStatus>{
            OASSupplierInvoiceStatus.DRAFT,
            OASSupplierInvoiceStatus.MATCHED,
            OASSupplierInvoiceStatus.HAS_VARIANCES,
            OASSupplierInvoiceStatus.POSTED,
            OASSupplierInvoiceStatus.CANCELLED
        };
        Set<OASSupplierInvoiceStatus> actual  = new Set<OASSupplierInvoiceStatus>(OASSupplierInvoiceStatus.values());
        System.assertEquals(expected, actual);
    }
}
