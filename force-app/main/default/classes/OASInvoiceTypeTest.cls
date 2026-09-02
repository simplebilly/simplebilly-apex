@isTest
private class OASInvoiceTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASInvoiceType> expected = new Set<OASInvoiceType>{
            OASInvoiceType.INVOICE,
            OASInvoiceType.CREDITNOTE,
            OASInvoiceType.ADVANCEPAYMENT,
            OASInvoiceType.FINALSETTLEMENT,
            OASInvoiceType.SPECIALBILLING,
            OASInvoiceType.DOWNPAYMENTINVOICE,
            OASInvoiceType.PROFORMA,
            OASInvoiceType.RECURRING,
            OASInvoiceType.CANCELLATIONINVOICE
        };
        Set<OASInvoiceType> actual  = new Set<OASInvoiceType>(OASInvoiceType.values());
        System.assertEquals(expected, actual);
    }
}
