@isTest
private class OASProformaInvoiceUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASProformaInvoiceUpdate proformaInvoiceUpdate1 = OASProformaInvoiceUpdate.getExample();
        OASProformaInvoiceUpdate proformaInvoiceUpdate2 = proformaInvoiceUpdate1;
        OASProformaInvoiceUpdate proformaInvoiceUpdate3 = new OASProformaInvoiceUpdate();
        OASProformaInvoiceUpdate proformaInvoiceUpdate4 = proformaInvoiceUpdate3;

        System.assert(proformaInvoiceUpdate1.equals(proformaInvoiceUpdate2));
        System.assert(proformaInvoiceUpdate2.equals(proformaInvoiceUpdate1));
        System.assert(proformaInvoiceUpdate1.equals(proformaInvoiceUpdate1));
        System.assert(proformaInvoiceUpdate3.equals(proformaInvoiceUpdate4));
        System.assert(proformaInvoiceUpdate4.equals(proformaInvoiceUpdate3));
        System.assert(proformaInvoiceUpdate3.equals(proformaInvoiceUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProformaInvoiceUpdate proformaInvoiceUpdate1 = OASProformaInvoiceUpdate.getExample();
        OASProformaInvoiceUpdate proformaInvoiceUpdate2 = OASProformaInvoiceUpdate.getExample();
        OASProformaInvoiceUpdate proformaInvoiceUpdate3 = new OASProformaInvoiceUpdate();
        OASProformaInvoiceUpdate proformaInvoiceUpdate4 = new OASProformaInvoiceUpdate();

        System.assert(proformaInvoiceUpdate1.equals(proformaInvoiceUpdate2));
        System.assert(proformaInvoiceUpdate2.equals(proformaInvoiceUpdate1));
        System.assert(proformaInvoiceUpdate3.equals(proformaInvoiceUpdate4));
        System.assert(proformaInvoiceUpdate4.equals(proformaInvoiceUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProformaInvoiceUpdate proformaInvoiceUpdate1 = OASProformaInvoiceUpdate.getExample();
        OASProformaInvoiceUpdate proformaInvoiceUpdate2 = new OASProformaInvoiceUpdate();

        System.assertEquals(false, proformaInvoiceUpdate1.equals('foo'));
        System.assertEquals(false, proformaInvoiceUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProformaInvoiceUpdate proformaInvoiceUpdate1 = OASProformaInvoiceUpdate.getExample();
        OASProformaInvoiceUpdate proformaInvoiceUpdate2 = new OASProformaInvoiceUpdate();
        OASProformaInvoiceUpdate proformaInvoiceUpdate3;

        System.assertEquals(false, proformaInvoiceUpdate1.equals(proformaInvoiceUpdate3));
        System.assertEquals(false, proformaInvoiceUpdate2.equals(proformaInvoiceUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProformaInvoiceUpdate proformaInvoiceUpdate1 = OASProformaInvoiceUpdate.getExample();
        OASProformaInvoiceUpdate proformaInvoiceUpdate2 = new OASProformaInvoiceUpdate();

        System.assertEquals(proformaInvoiceUpdate1.hashCode(), proformaInvoiceUpdate1.hashCode());
        System.assertEquals(proformaInvoiceUpdate2.hashCode(), proformaInvoiceUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProformaInvoiceUpdate proformaInvoiceUpdate1 = OASProformaInvoiceUpdate.getExample();
        OASProformaInvoiceUpdate proformaInvoiceUpdate2 = OASProformaInvoiceUpdate.getExample();
        OASProformaInvoiceUpdate proformaInvoiceUpdate3 = new OASProformaInvoiceUpdate();
        OASProformaInvoiceUpdate proformaInvoiceUpdate4 = new OASProformaInvoiceUpdate();

        System.assert(proformaInvoiceUpdate1.equals(proformaInvoiceUpdate2));
        System.assert(proformaInvoiceUpdate3.equals(proformaInvoiceUpdate4));
        System.assertEquals(proformaInvoiceUpdate1.hashCode(), proformaInvoiceUpdate2.hashCode());
        System.assertEquals(proformaInvoiceUpdate3.hashCode(), proformaInvoiceUpdate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASProformaInvoiceUpdate proformaInvoiceUpdate = new OASProformaInvoiceUpdate();
        Map<String, String> x-property-mappings = proformaInvoiceUpdate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
