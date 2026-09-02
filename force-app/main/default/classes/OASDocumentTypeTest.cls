@isTest
private class OASDocumentTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASDocumentType> expected = new Set<OASDocumentType>{
            OASDocumentType.INVOICE,
            OASDocumentType.CREDITNOTE,
            OASDocumentType.ADVANCEPAYMENT,
            OASDocumentType.DOWNPAYMENTINVOICE,
            OASDocumentType.DELIVERYNOTE,
            OASDocumentType.ORDERCONFIRMATION,
            OASDocumentType.QUOTATION,
            OASDocumentType.PROFORMAINVOICE
        };
        Set<OASDocumentType> actual  = new Set<OASDocumentType>(OASDocumentType.values());
        System.assertEquals(expected, actual);
    }
}
