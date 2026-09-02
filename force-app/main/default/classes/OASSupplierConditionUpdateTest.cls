@isTest
private class OASSupplierConditionUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASSupplierConditionUpdate supplierConditionUpdate1 = OASSupplierConditionUpdate.getExample();
        OASSupplierConditionUpdate supplierConditionUpdate2 = supplierConditionUpdate1;
        OASSupplierConditionUpdate supplierConditionUpdate3 = new OASSupplierConditionUpdate();
        OASSupplierConditionUpdate supplierConditionUpdate4 = supplierConditionUpdate3;

        System.assert(supplierConditionUpdate1.equals(supplierConditionUpdate2));
        System.assert(supplierConditionUpdate2.equals(supplierConditionUpdate1));
        System.assert(supplierConditionUpdate1.equals(supplierConditionUpdate1));
        System.assert(supplierConditionUpdate3.equals(supplierConditionUpdate4));
        System.assert(supplierConditionUpdate4.equals(supplierConditionUpdate3));
        System.assert(supplierConditionUpdate3.equals(supplierConditionUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSupplierConditionUpdate supplierConditionUpdate1 = OASSupplierConditionUpdate.getExample();
        OASSupplierConditionUpdate supplierConditionUpdate2 = OASSupplierConditionUpdate.getExample();
        OASSupplierConditionUpdate supplierConditionUpdate3 = new OASSupplierConditionUpdate();
        OASSupplierConditionUpdate supplierConditionUpdate4 = new OASSupplierConditionUpdate();

        System.assert(supplierConditionUpdate1.equals(supplierConditionUpdate2));
        System.assert(supplierConditionUpdate2.equals(supplierConditionUpdate1));
        System.assert(supplierConditionUpdate3.equals(supplierConditionUpdate4));
        System.assert(supplierConditionUpdate4.equals(supplierConditionUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSupplierConditionUpdate supplierConditionUpdate1 = OASSupplierConditionUpdate.getExample();
        OASSupplierConditionUpdate supplierConditionUpdate2 = new OASSupplierConditionUpdate();

        System.assertEquals(false, supplierConditionUpdate1.equals('foo'));
        System.assertEquals(false, supplierConditionUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSupplierConditionUpdate supplierConditionUpdate1 = OASSupplierConditionUpdate.getExample();
        OASSupplierConditionUpdate supplierConditionUpdate2 = new OASSupplierConditionUpdate();
        OASSupplierConditionUpdate supplierConditionUpdate3;

        System.assertEquals(false, supplierConditionUpdate1.equals(supplierConditionUpdate3));
        System.assertEquals(false, supplierConditionUpdate2.equals(supplierConditionUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSupplierConditionUpdate supplierConditionUpdate1 = OASSupplierConditionUpdate.getExample();
        OASSupplierConditionUpdate supplierConditionUpdate2 = new OASSupplierConditionUpdate();

        System.assertEquals(supplierConditionUpdate1.hashCode(), supplierConditionUpdate1.hashCode());
        System.assertEquals(supplierConditionUpdate2.hashCode(), supplierConditionUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSupplierConditionUpdate supplierConditionUpdate1 = OASSupplierConditionUpdate.getExample();
        OASSupplierConditionUpdate supplierConditionUpdate2 = OASSupplierConditionUpdate.getExample();
        OASSupplierConditionUpdate supplierConditionUpdate3 = new OASSupplierConditionUpdate();
        OASSupplierConditionUpdate supplierConditionUpdate4 = new OASSupplierConditionUpdate();

        System.assert(supplierConditionUpdate1.equals(supplierConditionUpdate2));
        System.assert(supplierConditionUpdate3.equals(supplierConditionUpdate4));
        System.assertEquals(supplierConditionUpdate1.hashCode(), supplierConditionUpdate2.hashCode());
        System.assertEquals(supplierConditionUpdate3.hashCode(), supplierConditionUpdate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSupplierConditionUpdate supplierConditionUpdate = new OASSupplierConditionUpdate();
        Map<String, String> x-property-mappings = supplierConditionUpdate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
