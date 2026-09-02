@isTest
private class OASSupplierConditionCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASSupplierConditionCreate supplierConditionCreate1 = OASSupplierConditionCreate.getExample();
        OASSupplierConditionCreate supplierConditionCreate2 = supplierConditionCreate1;
        OASSupplierConditionCreate supplierConditionCreate3 = new OASSupplierConditionCreate();
        OASSupplierConditionCreate supplierConditionCreate4 = supplierConditionCreate3;

        System.assert(supplierConditionCreate1.equals(supplierConditionCreate2));
        System.assert(supplierConditionCreate2.equals(supplierConditionCreate1));
        System.assert(supplierConditionCreate1.equals(supplierConditionCreate1));
        System.assert(supplierConditionCreate3.equals(supplierConditionCreate4));
        System.assert(supplierConditionCreate4.equals(supplierConditionCreate3));
        System.assert(supplierConditionCreate3.equals(supplierConditionCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSupplierConditionCreate supplierConditionCreate1 = OASSupplierConditionCreate.getExample();
        OASSupplierConditionCreate supplierConditionCreate2 = OASSupplierConditionCreate.getExample();
        OASSupplierConditionCreate supplierConditionCreate3 = new OASSupplierConditionCreate();
        OASSupplierConditionCreate supplierConditionCreate4 = new OASSupplierConditionCreate();

        System.assert(supplierConditionCreate1.equals(supplierConditionCreate2));
        System.assert(supplierConditionCreate2.equals(supplierConditionCreate1));
        System.assert(supplierConditionCreate3.equals(supplierConditionCreate4));
        System.assert(supplierConditionCreate4.equals(supplierConditionCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSupplierConditionCreate supplierConditionCreate1 = OASSupplierConditionCreate.getExample();
        OASSupplierConditionCreate supplierConditionCreate2 = new OASSupplierConditionCreate();

        System.assertEquals(false, supplierConditionCreate1.equals('foo'));
        System.assertEquals(false, supplierConditionCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSupplierConditionCreate supplierConditionCreate1 = OASSupplierConditionCreate.getExample();
        OASSupplierConditionCreate supplierConditionCreate2 = new OASSupplierConditionCreate();
        OASSupplierConditionCreate supplierConditionCreate3;

        System.assertEquals(false, supplierConditionCreate1.equals(supplierConditionCreate3));
        System.assertEquals(false, supplierConditionCreate2.equals(supplierConditionCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSupplierConditionCreate supplierConditionCreate1 = OASSupplierConditionCreate.getExample();
        OASSupplierConditionCreate supplierConditionCreate2 = new OASSupplierConditionCreate();

        System.assertEquals(supplierConditionCreate1.hashCode(), supplierConditionCreate1.hashCode());
        System.assertEquals(supplierConditionCreate2.hashCode(), supplierConditionCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSupplierConditionCreate supplierConditionCreate1 = OASSupplierConditionCreate.getExample();
        OASSupplierConditionCreate supplierConditionCreate2 = OASSupplierConditionCreate.getExample();
        OASSupplierConditionCreate supplierConditionCreate3 = new OASSupplierConditionCreate();
        OASSupplierConditionCreate supplierConditionCreate4 = new OASSupplierConditionCreate();

        System.assert(supplierConditionCreate1.equals(supplierConditionCreate2));
        System.assert(supplierConditionCreate3.equals(supplierConditionCreate4));
        System.assertEquals(supplierConditionCreate1.hashCode(), supplierConditionCreate2.hashCode());
        System.assertEquals(supplierConditionCreate3.hashCode(), supplierConditionCreate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSupplierConditionCreate supplierConditionCreate = new OASSupplierConditionCreate();
        Map<String, String> x-property-mappings = supplierConditionCreate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
