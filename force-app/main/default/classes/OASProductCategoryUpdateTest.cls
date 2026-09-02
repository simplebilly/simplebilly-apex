@isTest
private class OASProductCategoryUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductCategoryUpdate productCategoryUpdate1 = OASProductCategoryUpdate.getExample();
        OASProductCategoryUpdate productCategoryUpdate2 = productCategoryUpdate1;
        OASProductCategoryUpdate productCategoryUpdate3 = new OASProductCategoryUpdate();
        OASProductCategoryUpdate productCategoryUpdate4 = productCategoryUpdate3;

        System.assert(productCategoryUpdate1.equals(productCategoryUpdate2));
        System.assert(productCategoryUpdate2.equals(productCategoryUpdate1));
        System.assert(productCategoryUpdate1.equals(productCategoryUpdate1));
        System.assert(productCategoryUpdate3.equals(productCategoryUpdate4));
        System.assert(productCategoryUpdate4.equals(productCategoryUpdate3));
        System.assert(productCategoryUpdate3.equals(productCategoryUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductCategoryUpdate productCategoryUpdate1 = OASProductCategoryUpdate.getExample();
        OASProductCategoryUpdate productCategoryUpdate2 = OASProductCategoryUpdate.getExample();
        OASProductCategoryUpdate productCategoryUpdate3 = new OASProductCategoryUpdate();
        OASProductCategoryUpdate productCategoryUpdate4 = new OASProductCategoryUpdate();

        System.assert(productCategoryUpdate1.equals(productCategoryUpdate2));
        System.assert(productCategoryUpdate2.equals(productCategoryUpdate1));
        System.assert(productCategoryUpdate3.equals(productCategoryUpdate4));
        System.assert(productCategoryUpdate4.equals(productCategoryUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductCategoryUpdate productCategoryUpdate1 = OASProductCategoryUpdate.getExample();
        OASProductCategoryUpdate productCategoryUpdate2 = new OASProductCategoryUpdate();

        System.assertEquals(false, productCategoryUpdate1.equals('foo'));
        System.assertEquals(false, productCategoryUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductCategoryUpdate productCategoryUpdate1 = OASProductCategoryUpdate.getExample();
        OASProductCategoryUpdate productCategoryUpdate2 = new OASProductCategoryUpdate();
        OASProductCategoryUpdate productCategoryUpdate3;

        System.assertEquals(false, productCategoryUpdate1.equals(productCategoryUpdate3));
        System.assertEquals(false, productCategoryUpdate2.equals(productCategoryUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductCategoryUpdate productCategoryUpdate1 = OASProductCategoryUpdate.getExample();
        OASProductCategoryUpdate productCategoryUpdate2 = new OASProductCategoryUpdate();

        System.assertEquals(productCategoryUpdate1.hashCode(), productCategoryUpdate1.hashCode());
        System.assertEquals(productCategoryUpdate2.hashCode(), productCategoryUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductCategoryUpdate productCategoryUpdate1 = OASProductCategoryUpdate.getExample();
        OASProductCategoryUpdate productCategoryUpdate2 = OASProductCategoryUpdate.getExample();
        OASProductCategoryUpdate productCategoryUpdate3 = new OASProductCategoryUpdate();
        OASProductCategoryUpdate productCategoryUpdate4 = new OASProductCategoryUpdate();

        System.assert(productCategoryUpdate1.equals(productCategoryUpdate2));
        System.assert(productCategoryUpdate3.equals(productCategoryUpdate4));
        System.assertEquals(productCategoryUpdate1.hashCode(), productCategoryUpdate2.hashCode());
        System.assertEquals(productCategoryUpdate3.hashCode(), productCategoryUpdate4.hashCode());
    }
}
