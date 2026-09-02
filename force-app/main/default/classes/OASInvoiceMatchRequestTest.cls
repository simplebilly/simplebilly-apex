@isTest
private class OASInvoiceMatchRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASInvoiceMatchRequest invoiceMatchRequest1 = OASInvoiceMatchRequest.getExample();
        OASInvoiceMatchRequest invoiceMatchRequest2 = invoiceMatchRequest1;
        OASInvoiceMatchRequest invoiceMatchRequest3 = new OASInvoiceMatchRequest();
        OASInvoiceMatchRequest invoiceMatchRequest4 = invoiceMatchRequest3;

        System.assert(invoiceMatchRequest1.equals(invoiceMatchRequest2));
        System.assert(invoiceMatchRequest2.equals(invoiceMatchRequest1));
        System.assert(invoiceMatchRequest1.equals(invoiceMatchRequest1));
        System.assert(invoiceMatchRequest3.equals(invoiceMatchRequest4));
        System.assert(invoiceMatchRequest4.equals(invoiceMatchRequest3));
        System.assert(invoiceMatchRequest3.equals(invoiceMatchRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInvoiceMatchRequest invoiceMatchRequest1 = OASInvoiceMatchRequest.getExample();
        OASInvoiceMatchRequest invoiceMatchRequest2 = OASInvoiceMatchRequest.getExample();
        OASInvoiceMatchRequest invoiceMatchRequest3 = new OASInvoiceMatchRequest();
        OASInvoiceMatchRequest invoiceMatchRequest4 = new OASInvoiceMatchRequest();

        System.assert(invoiceMatchRequest1.equals(invoiceMatchRequest2));
        System.assert(invoiceMatchRequest2.equals(invoiceMatchRequest1));
        System.assert(invoiceMatchRequest3.equals(invoiceMatchRequest4));
        System.assert(invoiceMatchRequest4.equals(invoiceMatchRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInvoiceMatchRequest invoiceMatchRequest1 = OASInvoiceMatchRequest.getExample();
        OASInvoiceMatchRequest invoiceMatchRequest2 = new OASInvoiceMatchRequest();

        System.assertEquals(false, invoiceMatchRequest1.equals('foo'));
        System.assertEquals(false, invoiceMatchRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInvoiceMatchRequest invoiceMatchRequest1 = OASInvoiceMatchRequest.getExample();
        OASInvoiceMatchRequest invoiceMatchRequest2 = new OASInvoiceMatchRequest();
        OASInvoiceMatchRequest invoiceMatchRequest3;

        System.assertEquals(false, invoiceMatchRequest1.equals(invoiceMatchRequest3));
        System.assertEquals(false, invoiceMatchRequest2.equals(invoiceMatchRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInvoiceMatchRequest invoiceMatchRequest1 = OASInvoiceMatchRequest.getExample();
        OASInvoiceMatchRequest invoiceMatchRequest2 = new OASInvoiceMatchRequest();

        System.assertEquals(invoiceMatchRequest1.hashCode(), invoiceMatchRequest1.hashCode());
        System.assertEquals(invoiceMatchRequest2.hashCode(), invoiceMatchRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInvoiceMatchRequest invoiceMatchRequest1 = OASInvoiceMatchRequest.getExample();
        OASInvoiceMatchRequest invoiceMatchRequest2 = OASInvoiceMatchRequest.getExample();
        OASInvoiceMatchRequest invoiceMatchRequest3 = new OASInvoiceMatchRequest();
        OASInvoiceMatchRequest invoiceMatchRequest4 = new OASInvoiceMatchRequest();

        System.assert(invoiceMatchRequest1.equals(invoiceMatchRequest2));
        System.assert(invoiceMatchRequest3.equals(invoiceMatchRequest4));
        System.assertEquals(invoiceMatchRequest1.hashCode(), invoiceMatchRequest2.hashCode());
        System.assertEquals(invoiceMatchRequest3.hashCode(), invoiceMatchRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASInvoiceMatchRequest invoiceMatchRequest = new OASInvoiceMatchRequest();
        Map<String, String> x-property-mappings = invoiceMatchRequest.getx-property-mappings();
        System.assertEquals('supplierInvoiceId', x-property-mappings.get('supplier_invoice_id'));
    }
}
