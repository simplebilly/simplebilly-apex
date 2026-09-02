@isTest
private class OASProductCategoryTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductCategory productCategory1 = OASProductCategory.getExample();
        OASProductCategory productCategory2 = productCategory1;
        OASProductCategory productCategory3 = new OASProductCategory();
        OASProductCategory productCategory4 = productCategory3;

        System.assert(productCategory1.equals(productCategory2));
        System.assert(productCategory2.equals(productCategory1));
        System.assert(productCategory1.equals(productCategory1));
        System.assert(productCategory3.equals(productCategory4));
        System.assert(productCategory4.equals(productCategory3));
        System.assert(productCategory3.equals(productCategory3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductCategory productCategory1 = OASProductCategory.getExample();
        OASProductCategory productCategory2 = OASProductCategory.getExample();
        OASProductCategory productCategory3 = new OASProductCategory();
        OASProductCategory productCategory4 = new OASProductCategory();

        System.assert(productCategory1.equals(productCategory2));
        System.assert(productCategory2.equals(productCategory1));
        System.assert(productCategory3.equals(productCategory4));
        System.assert(productCategory4.equals(productCategory3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductCategory productCategory1 = OASProductCategory.getExample();
        OASProductCategory productCategory2 = new OASProductCategory();

        System.assertEquals(false, productCategory1.equals('foo'));
        System.assertEquals(false, productCategory2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductCategory productCategory1 = OASProductCategory.getExample();
        OASProductCategory productCategory2 = new OASProductCategory();
        OASProductCategory productCategory3;

        System.assertEquals(false, productCategory1.equals(productCategory3));
        System.assertEquals(false, productCategory2.equals(productCategory3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductCategory productCategory1 = OASProductCategory.getExample();
        OASProductCategory productCategory2 = new OASProductCategory();

        System.assertEquals(productCategory1.hashCode(), productCategory1.hashCode());
        System.assertEquals(productCategory2.hashCode(), productCategory2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductCategory productCategory1 = OASProductCategory.getExample();
        OASProductCategory productCategory2 = OASProductCategory.getExample();
        OASProductCategory productCategory3 = new OASProductCategory();
        OASProductCategory productCategory4 = new OASProductCategory();

        System.assert(productCategory1.equals(productCategory2));
        System.assert(productCategory3.equals(productCategory4));
        System.assertEquals(productCategory1.hashCode(), productCategory2.hashCode());
        System.assertEquals(productCategory3.hashCode(), productCategory4.hashCode());
    }
}
