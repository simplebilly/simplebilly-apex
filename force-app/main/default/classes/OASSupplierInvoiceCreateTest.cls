@isTest
private class OASSupplierInvoiceCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASSupplierInvoiceCreate supplierInvoiceCreate1 = OASSupplierInvoiceCreate.getExample();
        OASSupplierInvoiceCreate supplierInvoiceCreate2 = supplierInvoiceCreate1;
        OASSupplierInvoiceCreate supplierInvoiceCreate3 = new OASSupplierInvoiceCreate();
        OASSupplierInvoiceCreate supplierInvoiceCreate4 = supplierInvoiceCreate3;

        System.assert(supplierInvoiceCreate1.equals(supplierInvoiceCreate2));
        System.assert(supplierInvoiceCreate2.equals(supplierInvoiceCreate1));
        System.assert(supplierInvoiceCreate1.equals(supplierInvoiceCreate1));
        System.assert(supplierInvoiceCreate3.equals(supplierInvoiceCreate4));
        System.assert(supplierInvoiceCreate4.equals(supplierInvoiceCreate3));
        System.assert(supplierInvoiceCreate3.equals(supplierInvoiceCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSupplierInvoiceCreate supplierInvoiceCreate1 = OASSupplierInvoiceCreate.getExample();
        OASSupplierInvoiceCreate supplierInvoiceCreate2 = OASSupplierInvoiceCreate.getExample();
        OASSupplierInvoiceCreate supplierInvoiceCreate3 = new OASSupplierInvoiceCreate();
        OASSupplierInvoiceCreate supplierInvoiceCreate4 = new OASSupplierInvoiceCreate();

        System.assert(supplierInvoiceCreate1.equals(supplierInvoiceCreate2));
        System.assert(supplierInvoiceCreate2.equals(supplierInvoiceCreate1));
        System.assert(supplierInvoiceCreate3.equals(supplierInvoiceCreate4));
        System.assert(supplierInvoiceCreate4.equals(supplierInvoiceCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSupplierInvoiceCreate supplierInvoiceCreate1 = OASSupplierInvoiceCreate.getExample();
        OASSupplierInvoiceCreate supplierInvoiceCreate2 = new OASSupplierInvoiceCreate();

        System.assertEquals(false, supplierInvoiceCreate1.equals('foo'));
        System.assertEquals(false, supplierInvoiceCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSupplierInvoiceCreate supplierInvoiceCreate1 = OASSupplierInvoiceCreate.getExample();
        OASSupplierInvoiceCreate supplierInvoiceCreate2 = new OASSupplierInvoiceCreate();
        OASSupplierInvoiceCreate supplierInvoiceCreate3;

        System.assertEquals(false, supplierInvoiceCreate1.equals(supplierInvoiceCreate3));
        System.assertEquals(false, supplierInvoiceCreate2.equals(supplierInvoiceCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSupplierInvoiceCreate supplierInvoiceCreate1 = OASSupplierInvoiceCreate.getExample();
        OASSupplierInvoiceCreate supplierInvoiceCreate2 = new OASSupplierInvoiceCreate();

        System.assertEquals(supplierInvoiceCreate1.hashCode(), supplierInvoiceCreate1.hashCode());
        System.assertEquals(supplierInvoiceCreate2.hashCode(), supplierInvoiceCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSupplierInvoiceCreate supplierInvoiceCreate1 = OASSupplierInvoiceCreate.getExample();
        OASSupplierInvoiceCreate supplierInvoiceCreate2 = OASSupplierInvoiceCreate.getExample();
        OASSupplierInvoiceCreate supplierInvoiceCreate3 = new OASSupplierInvoiceCreate();
        OASSupplierInvoiceCreate supplierInvoiceCreate4 = new OASSupplierInvoiceCreate();

        System.assert(supplierInvoiceCreate1.equals(supplierInvoiceCreate2));
        System.assert(supplierInvoiceCreate3.equals(supplierInvoiceCreate4));
        System.assertEquals(supplierInvoiceCreate1.hashCode(), supplierInvoiceCreate2.hashCode());
        System.assertEquals(supplierInvoiceCreate3.hashCode(), supplierInvoiceCreate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSupplierInvoiceCreate supplierInvoiceCreate = new OASSupplierInvoiceCreate();
        Map<String, String> x-property-mappings = supplierInvoiceCreate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
