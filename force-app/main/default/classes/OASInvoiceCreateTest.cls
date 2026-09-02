@isTest
private class OASInvoiceCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASInvoiceCreate invoiceCreate1 = OASInvoiceCreate.getExample();
        OASInvoiceCreate invoiceCreate2 = invoiceCreate1;
        OASInvoiceCreate invoiceCreate3 = new OASInvoiceCreate();
        OASInvoiceCreate invoiceCreate4 = invoiceCreate3;

        System.assert(invoiceCreate1.equals(invoiceCreate2));
        System.assert(invoiceCreate2.equals(invoiceCreate1));
        System.assert(invoiceCreate1.equals(invoiceCreate1));
        System.assert(invoiceCreate3.equals(invoiceCreate4));
        System.assert(invoiceCreate4.equals(invoiceCreate3));
        System.assert(invoiceCreate3.equals(invoiceCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInvoiceCreate invoiceCreate1 = OASInvoiceCreate.getExample();
        OASInvoiceCreate invoiceCreate2 = OASInvoiceCreate.getExample();
        OASInvoiceCreate invoiceCreate3 = new OASInvoiceCreate();
        OASInvoiceCreate invoiceCreate4 = new OASInvoiceCreate();

        System.assert(invoiceCreate1.equals(invoiceCreate2));
        System.assert(invoiceCreate2.equals(invoiceCreate1));
        System.assert(invoiceCreate3.equals(invoiceCreate4));
        System.assert(invoiceCreate4.equals(invoiceCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInvoiceCreate invoiceCreate1 = OASInvoiceCreate.getExample();
        OASInvoiceCreate invoiceCreate2 = new OASInvoiceCreate();

        System.assertEquals(false, invoiceCreate1.equals('foo'));
        System.assertEquals(false, invoiceCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInvoiceCreate invoiceCreate1 = OASInvoiceCreate.getExample();
        OASInvoiceCreate invoiceCreate2 = new OASInvoiceCreate();
        OASInvoiceCreate invoiceCreate3;

        System.assertEquals(false, invoiceCreate1.equals(invoiceCreate3));
        System.assertEquals(false, invoiceCreate2.equals(invoiceCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInvoiceCreate invoiceCreate1 = OASInvoiceCreate.getExample();
        OASInvoiceCreate invoiceCreate2 = new OASInvoiceCreate();

        System.assertEquals(invoiceCreate1.hashCode(), invoiceCreate1.hashCode());
        System.assertEquals(invoiceCreate2.hashCode(), invoiceCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInvoiceCreate invoiceCreate1 = OASInvoiceCreate.getExample();
        OASInvoiceCreate invoiceCreate2 = OASInvoiceCreate.getExample();
        OASInvoiceCreate invoiceCreate3 = new OASInvoiceCreate();
        OASInvoiceCreate invoiceCreate4 = new OASInvoiceCreate();

        System.assert(invoiceCreate1.equals(invoiceCreate2));
        System.assert(invoiceCreate3.equals(invoiceCreate4));
        System.assertEquals(invoiceCreate1.hashCode(), invoiceCreate2.hashCode());
        System.assertEquals(invoiceCreate3.hashCode(), invoiceCreate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASInvoiceCreate invoiceCreate = new OASInvoiceCreate();
        Map<String, String> x-property-mappings = invoiceCreate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
