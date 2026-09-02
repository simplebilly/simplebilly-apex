@isTest
private class OASSupplierConditionTest {
    @isTest
    private static void equalsSameInstance() {
        OASSupplierCondition supplierCondition1 = OASSupplierCondition.getExample();
        OASSupplierCondition supplierCondition2 = supplierCondition1;
        OASSupplierCondition supplierCondition3 = new OASSupplierCondition();
        OASSupplierCondition supplierCondition4 = supplierCondition3;

        System.assert(supplierCondition1.equals(supplierCondition2));
        System.assert(supplierCondition2.equals(supplierCondition1));
        System.assert(supplierCondition1.equals(supplierCondition1));
        System.assert(supplierCondition3.equals(supplierCondition4));
        System.assert(supplierCondition4.equals(supplierCondition3));
        System.assert(supplierCondition3.equals(supplierCondition3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSupplierCondition supplierCondition1 = OASSupplierCondition.getExample();
        OASSupplierCondition supplierCondition2 = OASSupplierCondition.getExample();
        OASSupplierCondition supplierCondition3 = new OASSupplierCondition();
        OASSupplierCondition supplierCondition4 = new OASSupplierCondition();

        System.assert(supplierCondition1.equals(supplierCondition2));
        System.assert(supplierCondition2.equals(supplierCondition1));
        System.assert(supplierCondition3.equals(supplierCondition4));
        System.assert(supplierCondition4.equals(supplierCondition3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSupplierCondition supplierCondition1 = OASSupplierCondition.getExample();
        OASSupplierCondition supplierCondition2 = new OASSupplierCondition();

        System.assertEquals(false, supplierCondition1.equals('foo'));
        System.assertEquals(false, supplierCondition2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSupplierCondition supplierCondition1 = OASSupplierCondition.getExample();
        OASSupplierCondition supplierCondition2 = new OASSupplierCondition();
        OASSupplierCondition supplierCondition3;

        System.assertEquals(false, supplierCondition1.equals(supplierCondition3));
        System.assertEquals(false, supplierCondition2.equals(supplierCondition3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSupplierCondition supplierCondition1 = OASSupplierCondition.getExample();
        OASSupplierCondition supplierCondition2 = new OASSupplierCondition();

        System.assertEquals(supplierCondition1.hashCode(), supplierCondition1.hashCode());
        System.assertEquals(supplierCondition2.hashCode(), supplierCondition2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSupplierCondition supplierCondition1 = OASSupplierCondition.getExample();
        OASSupplierCondition supplierCondition2 = OASSupplierCondition.getExample();
        OASSupplierCondition supplierCondition3 = new OASSupplierCondition();
        OASSupplierCondition supplierCondition4 = new OASSupplierCondition();

        System.assert(supplierCondition1.equals(supplierCondition2));
        System.assert(supplierCondition3.equals(supplierCondition4));
        System.assertEquals(supplierCondition1.hashCode(), supplierCondition2.hashCode());
        System.assertEquals(supplierCondition3.hashCode(), supplierCondition4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSupplierCondition supplierCondition = new OASSupplierCondition();
        Map<String, String> x-property-mappings = supplierCondition.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
