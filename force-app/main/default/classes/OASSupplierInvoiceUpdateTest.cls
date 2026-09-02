@isTest
private class OASSupplierInvoiceUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASSupplierInvoiceUpdate supplierInvoiceUpdate1 = OASSupplierInvoiceUpdate.getExample();
        OASSupplierInvoiceUpdate supplierInvoiceUpdate2 = supplierInvoiceUpdate1;
        OASSupplierInvoiceUpdate supplierInvoiceUpdate3 = new OASSupplierInvoiceUpdate();
        OASSupplierInvoiceUpdate supplierInvoiceUpdate4 = supplierInvoiceUpdate3;

        System.assert(supplierInvoiceUpdate1.equals(supplierInvoiceUpdate2));
        System.assert(supplierInvoiceUpdate2.equals(supplierInvoiceUpdate1));
        System.assert(supplierInvoiceUpdate1.equals(supplierInvoiceUpdate1));
        System.assert(supplierInvoiceUpdate3.equals(supplierInvoiceUpdate4));
        System.assert(supplierInvoiceUpdate4.equals(supplierInvoiceUpdate3));
        System.assert(supplierInvoiceUpdate3.equals(supplierInvoiceUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSupplierInvoiceUpdate supplierInvoiceUpdate1 = OASSupplierInvoiceUpdate.getExample();
        OASSupplierInvoiceUpdate supplierInvoiceUpdate2 = OASSupplierInvoiceUpdate.getExample();
        OASSupplierInvoiceUpdate supplierInvoiceUpdate3 = new OASSupplierInvoiceUpdate();
        OASSupplierInvoiceUpdate supplierInvoiceUpdate4 = new OASSupplierInvoiceUpdate();

        System.assert(supplierInvoiceUpdate1.equals(supplierInvoiceUpdate2));
        System.assert(supplierInvoiceUpdate2.equals(supplierInvoiceUpdate1));
        System.assert(supplierInvoiceUpdate3.equals(supplierInvoiceUpdate4));
        System.assert(supplierInvoiceUpdate4.equals(supplierInvoiceUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSupplierInvoiceUpdate supplierInvoiceUpdate1 = OASSupplierInvoiceUpdate.getExample();
        OASSupplierInvoiceUpdate supplierInvoiceUpdate2 = new OASSupplierInvoiceUpdate();

        System.assertEquals(false, supplierInvoiceUpdate1.equals('foo'));
        System.assertEquals(false, supplierInvoiceUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSupplierInvoiceUpdate supplierInvoiceUpdate1 = OASSupplierInvoiceUpdate.getExample();
        OASSupplierInvoiceUpdate supplierInvoiceUpdate2 = new OASSupplierInvoiceUpdate();
        OASSupplierInvoiceUpdate supplierInvoiceUpdate3;

        System.assertEquals(false, supplierInvoiceUpdate1.equals(supplierInvoiceUpdate3));
        System.assertEquals(false, supplierInvoiceUpdate2.equals(supplierInvoiceUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSupplierInvoiceUpdate supplierInvoiceUpdate1 = OASSupplierInvoiceUpdate.getExample();
        OASSupplierInvoiceUpdate supplierInvoiceUpdate2 = new OASSupplierInvoiceUpdate();

        System.assertEquals(supplierInvoiceUpdate1.hashCode(), supplierInvoiceUpdate1.hashCode());
        System.assertEquals(supplierInvoiceUpdate2.hashCode(), supplierInvoiceUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSupplierInvoiceUpdate supplierInvoiceUpdate1 = OASSupplierInvoiceUpdate.getExample();
        OASSupplierInvoiceUpdate supplierInvoiceUpdate2 = OASSupplierInvoiceUpdate.getExample();
        OASSupplierInvoiceUpdate supplierInvoiceUpdate3 = new OASSupplierInvoiceUpdate();
        OASSupplierInvoiceUpdate supplierInvoiceUpdate4 = new OASSupplierInvoiceUpdate();

        System.assert(supplierInvoiceUpdate1.equals(supplierInvoiceUpdate2));
        System.assert(supplierInvoiceUpdate3.equals(supplierInvoiceUpdate4));
        System.assertEquals(supplierInvoiceUpdate1.hashCode(), supplierInvoiceUpdate2.hashCode());
        System.assertEquals(supplierInvoiceUpdate3.hashCode(), supplierInvoiceUpdate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSupplierInvoiceUpdate supplierInvoiceUpdate = new OASSupplierInvoiceUpdate();
        Map<String, String> x-property-mappings = supplierInvoiceUpdate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
