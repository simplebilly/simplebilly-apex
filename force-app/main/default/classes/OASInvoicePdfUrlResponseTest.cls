@isTest
private class OASInvoicePdfUrlResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASInvoicePdfUrlResponse invoicePdfUrlResponse1 = OASInvoicePdfUrlResponse.getExample();
        OASInvoicePdfUrlResponse invoicePdfUrlResponse2 = invoicePdfUrlResponse1;
        OASInvoicePdfUrlResponse invoicePdfUrlResponse3 = new OASInvoicePdfUrlResponse();
        OASInvoicePdfUrlResponse invoicePdfUrlResponse4 = invoicePdfUrlResponse3;

        System.assert(invoicePdfUrlResponse1.equals(invoicePdfUrlResponse2));
        System.assert(invoicePdfUrlResponse2.equals(invoicePdfUrlResponse1));
        System.assert(invoicePdfUrlResponse1.equals(invoicePdfUrlResponse1));
        System.assert(invoicePdfUrlResponse3.equals(invoicePdfUrlResponse4));
        System.assert(invoicePdfUrlResponse4.equals(invoicePdfUrlResponse3));
        System.assert(invoicePdfUrlResponse3.equals(invoicePdfUrlResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInvoicePdfUrlResponse invoicePdfUrlResponse1 = OASInvoicePdfUrlResponse.getExample();
        OASInvoicePdfUrlResponse invoicePdfUrlResponse2 = OASInvoicePdfUrlResponse.getExample();
        OASInvoicePdfUrlResponse invoicePdfUrlResponse3 = new OASInvoicePdfUrlResponse();
        OASInvoicePdfUrlResponse invoicePdfUrlResponse4 = new OASInvoicePdfUrlResponse();

        System.assert(invoicePdfUrlResponse1.equals(invoicePdfUrlResponse2));
        System.assert(invoicePdfUrlResponse2.equals(invoicePdfUrlResponse1));
        System.assert(invoicePdfUrlResponse3.equals(invoicePdfUrlResponse4));
        System.assert(invoicePdfUrlResponse4.equals(invoicePdfUrlResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInvoicePdfUrlResponse invoicePdfUrlResponse1 = OASInvoicePdfUrlResponse.getExample();
        OASInvoicePdfUrlResponse invoicePdfUrlResponse2 = new OASInvoicePdfUrlResponse();

        System.assertEquals(false, invoicePdfUrlResponse1.equals('foo'));
        System.assertEquals(false, invoicePdfUrlResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInvoicePdfUrlResponse invoicePdfUrlResponse1 = OASInvoicePdfUrlResponse.getExample();
        OASInvoicePdfUrlResponse invoicePdfUrlResponse2 = new OASInvoicePdfUrlResponse();
        OASInvoicePdfUrlResponse invoicePdfUrlResponse3;

        System.assertEquals(false, invoicePdfUrlResponse1.equals(invoicePdfUrlResponse3));
        System.assertEquals(false, invoicePdfUrlResponse2.equals(invoicePdfUrlResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInvoicePdfUrlResponse invoicePdfUrlResponse1 = OASInvoicePdfUrlResponse.getExample();
        OASInvoicePdfUrlResponse invoicePdfUrlResponse2 = new OASInvoicePdfUrlResponse();

        System.assertEquals(invoicePdfUrlResponse1.hashCode(), invoicePdfUrlResponse1.hashCode());
        System.assertEquals(invoicePdfUrlResponse2.hashCode(), invoicePdfUrlResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInvoicePdfUrlResponse invoicePdfUrlResponse1 = OASInvoicePdfUrlResponse.getExample();
        OASInvoicePdfUrlResponse invoicePdfUrlResponse2 = OASInvoicePdfUrlResponse.getExample();
        OASInvoicePdfUrlResponse invoicePdfUrlResponse3 = new OASInvoicePdfUrlResponse();
        OASInvoicePdfUrlResponse invoicePdfUrlResponse4 = new OASInvoicePdfUrlResponse();

        System.assert(invoicePdfUrlResponse1.equals(invoicePdfUrlResponse2));
        System.assert(invoicePdfUrlResponse3.equals(invoicePdfUrlResponse4));
        System.assertEquals(invoicePdfUrlResponse1.hashCode(), invoicePdfUrlResponse2.hashCode());
        System.assertEquals(invoicePdfUrlResponse3.hashCode(), invoicePdfUrlResponse4.hashCode());
    }
}
