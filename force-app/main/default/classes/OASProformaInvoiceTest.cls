@isTest
private class OASProformaInvoiceTest {
    @isTest
    private static void equalsSameInstance() {
        OASProformaInvoice proformaInvoice1 = OASProformaInvoice.getExample();
        OASProformaInvoice proformaInvoice2 = proformaInvoice1;
        OASProformaInvoice proformaInvoice3 = new OASProformaInvoice();
        OASProformaInvoice proformaInvoice4 = proformaInvoice3;

        System.assert(proformaInvoice1.equals(proformaInvoice2));
        System.assert(proformaInvoice2.equals(proformaInvoice1));
        System.assert(proformaInvoice1.equals(proformaInvoice1));
        System.assert(proformaInvoice3.equals(proformaInvoice4));
        System.assert(proformaInvoice4.equals(proformaInvoice3));
        System.assert(proformaInvoice3.equals(proformaInvoice3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProformaInvoice proformaInvoice1 = OASProformaInvoice.getExample();
        OASProformaInvoice proformaInvoice2 = OASProformaInvoice.getExample();
        OASProformaInvoice proformaInvoice3 = new OASProformaInvoice();
        OASProformaInvoice proformaInvoice4 = new OASProformaInvoice();

        System.assert(proformaInvoice1.equals(proformaInvoice2));
        System.assert(proformaInvoice2.equals(proformaInvoice1));
        System.assert(proformaInvoice3.equals(proformaInvoice4));
        System.assert(proformaInvoice4.equals(proformaInvoice3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProformaInvoice proformaInvoice1 = OASProformaInvoice.getExample();
        OASProformaInvoice proformaInvoice2 = new OASProformaInvoice();

        System.assertEquals(false, proformaInvoice1.equals('foo'));
        System.assertEquals(false, proformaInvoice2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProformaInvoice proformaInvoice1 = OASProformaInvoice.getExample();
        OASProformaInvoice proformaInvoice2 = new OASProformaInvoice();
        OASProformaInvoice proformaInvoice3;

        System.assertEquals(false, proformaInvoice1.equals(proformaInvoice3));
        System.assertEquals(false, proformaInvoice2.equals(proformaInvoice3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProformaInvoice proformaInvoice1 = OASProformaInvoice.getExample();
        OASProformaInvoice proformaInvoice2 = new OASProformaInvoice();

        System.assertEquals(proformaInvoice1.hashCode(), proformaInvoice1.hashCode());
        System.assertEquals(proformaInvoice2.hashCode(), proformaInvoice2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProformaInvoice proformaInvoice1 = OASProformaInvoice.getExample();
        OASProformaInvoice proformaInvoice2 = OASProformaInvoice.getExample();
        OASProformaInvoice proformaInvoice3 = new OASProformaInvoice();
        OASProformaInvoice proformaInvoice4 = new OASProformaInvoice();

        System.assert(proformaInvoice1.equals(proformaInvoice2));
        System.assert(proformaInvoice3.equals(proformaInvoice4));
        System.assertEquals(proformaInvoice1.hashCode(), proformaInvoice2.hashCode());
        System.assertEquals(proformaInvoice3.hashCode(), proformaInvoice4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASProformaInvoice proformaInvoice = new OASProformaInvoice();
        Map<String, String> x-property-mappings = proformaInvoice.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
