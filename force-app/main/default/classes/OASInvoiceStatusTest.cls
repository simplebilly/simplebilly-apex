@isTest
private class OASInvoiceStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASInvoiceStatus> expected = new Set<OASInvoiceStatus>{
            OASInvoiceStatus.DRAFT,
            OASInvoiceStatus.SENT,
            OASInvoiceStatus.PARTIALLYPAID,
            OASInvoiceStatus.PAID,
            OASInvoiceStatus.OVERDUE,
            OASInvoiceStatus.CANCELLED,
            OASInvoiceStatus.CREDITED,
            OASInvoiceStatus.EXPIRED,
            OASInvoiceStatus.DUNNING,
            OASInvoiceStatus.COLLECTDEBT
        };
        Set<OASInvoiceStatus> actual  = new Set<OASInvoiceStatus>(OASInvoiceStatus.values());
        System.assertEquals(expected, actual);
    }
}
