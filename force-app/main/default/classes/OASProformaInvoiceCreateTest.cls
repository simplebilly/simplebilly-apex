@isTest
private class OASProformaInvoiceCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASProformaInvoiceCreate proformaInvoiceCreate1 = OASProformaInvoiceCreate.getExample();
        OASProformaInvoiceCreate proformaInvoiceCreate2 = proformaInvoiceCreate1;
        OASProformaInvoiceCreate proformaInvoiceCreate3 = new OASProformaInvoiceCreate();
        OASProformaInvoiceCreate proformaInvoiceCreate4 = proformaInvoiceCreate3;

        System.assert(proformaInvoiceCreate1.equals(proformaInvoiceCreate2));
        System.assert(proformaInvoiceCreate2.equals(proformaInvoiceCreate1));
        System.assert(proformaInvoiceCreate1.equals(proformaInvoiceCreate1));
        System.assert(proformaInvoiceCreate3.equals(proformaInvoiceCreate4));
        System.assert(proformaInvoiceCreate4.equals(proformaInvoiceCreate3));
        System.assert(proformaInvoiceCreate3.equals(proformaInvoiceCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProformaInvoiceCreate proformaInvoiceCreate1 = OASProformaInvoiceCreate.getExample();
        OASProformaInvoiceCreate proformaInvoiceCreate2 = OASProformaInvoiceCreate.getExample();
        OASProformaInvoiceCreate proformaInvoiceCreate3 = new OASProformaInvoiceCreate();
        OASProformaInvoiceCreate proformaInvoiceCreate4 = new OASProformaInvoiceCreate();

        System.assert(proformaInvoiceCreate1.equals(proformaInvoiceCreate2));
        System.assert(proformaInvoiceCreate2.equals(proformaInvoiceCreate1));
        System.assert(proformaInvoiceCreate3.equals(proformaInvoiceCreate4));
        System.assert(proformaInvoiceCreate4.equals(proformaInvoiceCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProformaInvoiceCreate proformaInvoiceCreate1 = OASProformaInvoiceCreate.getExample();
        OASProformaInvoiceCreate proformaInvoiceCreate2 = new OASProformaInvoiceCreate();

        System.assertEquals(false, proformaInvoiceCreate1.equals('foo'));
        System.assertEquals(false, proformaInvoiceCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProformaInvoiceCreate proformaInvoiceCreate1 = OASProformaInvoiceCreate.getExample();
        OASProformaInvoiceCreate proformaInvoiceCreate2 = new OASProformaInvoiceCreate();
        OASProformaInvoiceCreate proformaInvoiceCreate3;

        System.assertEquals(false, proformaInvoiceCreate1.equals(proformaInvoiceCreate3));
        System.assertEquals(false, proformaInvoiceCreate2.equals(proformaInvoiceCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProformaInvoiceCreate proformaInvoiceCreate1 = OASProformaInvoiceCreate.getExample();
        OASProformaInvoiceCreate proformaInvoiceCreate2 = new OASProformaInvoiceCreate();

        System.assertEquals(proformaInvoiceCreate1.hashCode(), proformaInvoiceCreate1.hashCode());
        System.assertEquals(proformaInvoiceCreate2.hashCode(), proformaInvoiceCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProformaInvoiceCreate proformaInvoiceCreate1 = OASProformaInvoiceCreate.getExample();
        OASProformaInvoiceCreate proformaInvoiceCreate2 = OASProformaInvoiceCreate.getExample();
        OASProformaInvoiceCreate proformaInvoiceCreate3 = new OASProformaInvoiceCreate();
        OASProformaInvoiceCreate proformaInvoiceCreate4 = new OASProformaInvoiceCreate();

        System.assert(proformaInvoiceCreate1.equals(proformaInvoiceCreate2));
        System.assert(proformaInvoiceCreate3.equals(proformaInvoiceCreate4));
        System.assertEquals(proformaInvoiceCreate1.hashCode(), proformaInvoiceCreate2.hashCode());
        System.assertEquals(proformaInvoiceCreate3.hashCode(), proformaInvoiceCreate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASProformaInvoiceCreate proformaInvoiceCreate = new OASProformaInvoiceCreate();
        Map<String, String> x-property-mappings = proformaInvoiceCreate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
