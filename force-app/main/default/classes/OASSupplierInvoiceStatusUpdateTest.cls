@isTest
private class OASSupplierInvoiceStatusUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASSupplierInvoiceStatusUpdate supplierInvoiceStatusUpdate1 = OASSupplierInvoiceStatusUpdate.getExample();
        OASSupplierInvoiceStatusUpdate supplierInvoiceStatusUpdate2 = supplierInvoiceStatusUpdate1;
        OASSupplierInvoiceStatusUpdate supplierInvoiceStatusUpdate3 = new OASSupplierInvoiceStatusUpdate();
        OASSupplierInvoiceStatusUpdate supplierInvoiceStatusUpdate4 = supplierInvoiceStatusUpdate3;

        System.assert(supplierInvoiceStatusUpdate1.equals(supplierInvoiceStatusUpdate2));
        System.assert(supplierInvoiceStatusUpdate2.equals(supplierInvoiceStatusUpdate1));
        System.assert(supplierInvoiceStatusUpdate1.equals(supplierInvoiceStatusUpdate1));
        System.assert(supplierInvoiceStatusUpdate3.equals(supplierInvoiceStatusUpdate4));
        System.assert(supplierInvoiceStatusUpdate4.equals(supplierInvoiceStatusUpdate3));
        System.assert(supplierInvoiceStatusUpdate3.equals(supplierInvoiceStatusUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSupplierInvoiceStatusUpdate supplierInvoiceStatusUpdate1 = OASSupplierInvoiceStatusUpdate.getExample();
        OASSupplierInvoiceStatusUpdate supplierInvoiceStatusUpdate2 = OASSupplierInvoiceStatusUpdate.getExample();
        OASSupplierInvoiceStatusUpdate supplierInvoiceStatusUpdate3 = new OASSupplierInvoiceStatusUpdate();
        OASSupplierInvoiceStatusUpdate supplierInvoiceStatusUpdate4 = new OASSupplierInvoiceStatusUpdate();

        System.assert(supplierInvoiceStatusUpdate1.equals(supplierInvoiceStatusUpdate2));
        System.assert(supplierInvoiceStatusUpdate2.equals(supplierInvoiceStatusUpdate1));
        System.assert(supplierInvoiceStatusUpdate3.equals(supplierInvoiceStatusUpdate4));
        System.assert(supplierInvoiceStatusUpdate4.equals(supplierInvoiceStatusUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSupplierInvoiceStatusUpdate supplierInvoiceStatusUpdate1 = OASSupplierInvoiceStatusUpdate.getExample();
        OASSupplierInvoiceStatusUpdate supplierInvoiceStatusUpdate2 = new OASSupplierInvoiceStatusUpdate();

        System.assertEquals(false, supplierInvoiceStatusUpdate1.equals('foo'));
        System.assertEquals(false, supplierInvoiceStatusUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSupplierInvoiceStatusUpdate supplierInvoiceStatusUpdate1 = OASSupplierInvoiceStatusUpdate.getExample();
        OASSupplierInvoiceStatusUpdate supplierInvoiceStatusUpdate2 = new OASSupplierInvoiceStatusUpdate();
        OASSupplierInvoiceStatusUpdate supplierInvoiceStatusUpdate3;

        System.assertEquals(false, supplierInvoiceStatusUpdate1.equals(supplierInvoiceStatusUpdate3));
        System.assertEquals(false, supplierInvoiceStatusUpdate2.equals(supplierInvoiceStatusUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSupplierInvoiceStatusUpdate supplierInvoiceStatusUpdate1 = OASSupplierInvoiceStatusUpdate.getExample();
        OASSupplierInvoiceStatusUpdate supplierInvoiceStatusUpdate2 = new OASSupplierInvoiceStatusUpdate();

        System.assertEquals(supplierInvoiceStatusUpdate1.hashCode(), supplierInvoiceStatusUpdate1.hashCode());
        System.assertEquals(supplierInvoiceStatusUpdate2.hashCode(), supplierInvoiceStatusUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSupplierInvoiceStatusUpdate supplierInvoiceStatusUpdate1 = OASSupplierInvoiceStatusUpdate.getExample();
        OASSupplierInvoiceStatusUpdate supplierInvoiceStatusUpdate2 = OASSupplierInvoiceStatusUpdate.getExample();
        OASSupplierInvoiceStatusUpdate supplierInvoiceStatusUpdate3 = new OASSupplierInvoiceStatusUpdate();
        OASSupplierInvoiceStatusUpdate supplierInvoiceStatusUpdate4 = new OASSupplierInvoiceStatusUpdate();

        System.assert(supplierInvoiceStatusUpdate1.equals(supplierInvoiceStatusUpdate2));
        System.assert(supplierInvoiceStatusUpdate3.equals(supplierInvoiceStatusUpdate4));
        System.assertEquals(supplierInvoiceStatusUpdate1.hashCode(), supplierInvoiceStatusUpdate2.hashCode());
        System.assertEquals(supplierInvoiceStatusUpdate3.hashCode(), supplierInvoiceStatusUpdate4.hashCode());
    }
}
