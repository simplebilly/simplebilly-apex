@isTest
private class OASSupplierInvoiceTest {
    @isTest
    private static void equalsSameInstance() {
        OASSupplierInvoice supplierInvoice1 = OASSupplierInvoice.getExample();
        OASSupplierInvoice supplierInvoice2 = supplierInvoice1;
        OASSupplierInvoice supplierInvoice3 = new OASSupplierInvoice();
        OASSupplierInvoice supplierInvoice4 = supplierInvoice3;

        System.assert(supplierInvoice1.equals(supplierInvoice2));
        System.assert(supplierInvoice2.equals(supplierInvoice1));
        System.assert(supplierInvoice1.equals(supplierInvoice1));
        System.assert(supplierInvoice3.equals(supplierInvoice4));
        System.assert(supplierInvoice4.equals(supplierInvoice3));
        System.assert(supplierInvoice3.equals(supplierInvoice3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSupplierInvoice supplierInvoice1 = OASSupplierInvoice.getExample();
        OASSupplierInvoice supplierInvoice2 = OASSupplierInvoice.getExample();
        OASSupplierInvoice supplierInvoice3 = new OASSupplierInvoice();
        OASSupplierInvoice supplierInvoice4 = new OASSupplierInvoice();

        System.assert(supplierInvoice1.equals(supplierInvoice2));
        System.assert(supplierInvoice2.equals(supplierInvoice1));
        System.assert(supplierInvoice3.equals(supplierInvoice4));
        System.assert(supplierInvoice4.equals(supplierInvoice3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSupplierInvoice supplierInvoice1 = OASSupplierInvoice.getExample();
        OASSupplierInvoice supplierInvoice2 = new OASSupplierInvoice();

        System.assertEquals(false, supplierInvoice1.equals('foo'));
        System.assertEquals(false, supplierInvoice2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSupplierInvoice supplierInvoice1 = OASSupplierInvoice.getExample();
        OASSupplierInvoice supplierInvoice2 = new OASSupplierInvoice();
        OASSupplierInvoice supplierInvoice3;

        System.assertEquals(false, supplierInvoice1.equals(supplierInvoice3));
        System.assertEquals(false, supplierInvoice2.equals(supplierInvoice3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSupplierInvoice supplierInvoice1 = OASSupplierInvoice.getExample();
        OASSupplierInvoice supplierInvoice2 = new OASSupplierInvoice();

        System.assertEquals(supplierInvoice1.hashCode(), supplierInvoice1.hashCode());
        System.assertEquals(supplierInvoice2.hashCode(), supplierInvoice2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSupplierInvoice supplierInvoice1 = OASSupplierInvoice.getExample();
        OASSupplierInvoice supplierInvoice2 = OASSupplierInvoice.getExample();
        OASSupplierInvoice supplierInvoice3 = new OASSupplierInvoice();
        OASSupplierInvoice supplierInvoice4 = new OASSupplierInvoice();

        System.assert(supplierInvoice1.equals(supplierInvoice2));
        System.assert(supplierInvoice3.equals(supplierInvoice4));
        System.assertEquals(supplierInvoice1.hashCode(), supplierInvoice2.hashCode());
        System.assertEquals(supplierInvoice3.hashCode(), supplierInvoice4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSupplierInvoice supplierInvoice = new OASSupplierInvoice();
        Map<String, String> x-property-mappings = supplierInvoice.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
