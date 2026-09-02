@isTest
private class OASProductCategoryCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductCategoryCreate productCategoryCreate1 = OASProductCategoryCreate.getExample();
        OASProductCategoryCreate productCategoryCreate2 = productCategoryCreate1;
        OASProductCategoryCreate productCategoryCreate3 = new OASProductCategoryCreate();
        OASProductCategoryCreate productCategoryCreate4 = productCategoryCreate3;

        System.assert(productCategoryCreate1.equals(productCategoryCreate2));
        System.assert(productCategoryCreate2.equals(productCategoryCreate1));
        System.assert(productCategoryCreate1.equals(productCategoryCreate1));
        System.assert(productCategoryCreate3.equals(productCategoryCreate4));
        System.assert(productCategoryCreate4.equals(productCategoryCreate3));
        System.assert(productCategoryCreate3.equals(productCategoryCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductCategoryCreate productCategoryCreate1 = OASProductCategoryCreate.getExample();
        OASProductCategoryCreate productCategoryCreate2 = OASProductCategoryCreate.getExample();
        OASProductCategoryCreate productCategoryCreate3 = new OASProductCategoryCreate();
        OASProductCategoryCreate productCategoryCreate4 = new OASProductCategoryCreate();

        System.assert(productCategoryCreate1.equals(productCategoryCreate2));
        System.assert(productCategoryCreate2.equals(productCategoryCreate1));
        System.assert(productCategoryCreate3.equals(productCategoryCreate4));
        System.assert(productCategoryCreate4.equals(productCategoryCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductCategoryCreate productCategoryCreate1 = OASProductCategoryCreate.getExample();
        OASProductCategoryCreate productCategoryCreate2 = new OASProductCategoryCreate();

        System.assertEquals(false, productCategoryCreate1.equals('foo'));
        System.assertEquals(false, productCategoryCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductCategoryCreate productCategoryCreate1 = OASProductCategoryCreate.getExample();
        OASProductCategoryCreate productCategoryCreate2 = new OASProductCategoryCreate();
        OASProductCategoryCreate productCategoryCreate3;

        System.assertEquals(false, productCategoryCreate1.equals(productCategoryCreate3));
        System.assertEquals(false, productCategoryCreate2.equals(productCategoryCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductCategoryCreate productCategoryCreate1 = OASProductCategoryCreate.getExample();
        OASProductCategoryCreate productCategoryCreate2 = new OASProductCategoryCreate();

        System.assertEquals(productCategoryCreate1.hashCode(), productCategoryCreate1.hashCode());
        System.assertEquals(productCategoryCreate2.hashCode(), productCategoryCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductCategoryCreate productCategoryCreate1 = OASProductCategoryCreate.getExample();
        OASProductCategoryCreate productCategoryCreate2 = OASProductCategoryCreate.getExample();
        OASProductCategoryCreate productCategoryCreate3 = new OASProductCategoryCreate();
        OASProductCategoryCreate productCategoryCreate4 = new OASProductCategoryCreate();

        System.assert(productCategoryCreate1.equals(productCategoryCreate2));
        System.assert(productCategoryCreate3.equals(productCategoryCreate4));
        System.assertEquals(productCategoryCreate1.hashCode(), productCategoryCreate2.hashCode());
        System.assertEquals(productCategoryCreate3.hashCode(), productCategoryCreate4.hashCode());
    }
}
