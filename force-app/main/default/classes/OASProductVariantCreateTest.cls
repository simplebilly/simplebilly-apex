@isTest
private class OASProductVariantCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductVariantCreate productVariantCreate1 = OASProductVariantCreate.getExample();
        OASProductVariantCreate productVariantCreate2 = productVariantCreate1;
        OASProductVariantCreate productVariantCreate3 = new OASProductVariantCreate();
        OASProductVariantCreate productVariantCreate4 = productVariantCreate3;

        System.assert(productVariantCreate1.equals(productVariantCreate2));
        System.assert(productVariantCreate2.equals(productVariantCreate1));
        System.assert(productVariantCreate1.equals(productVariantCreate1));
        System.assert(productVariantCreate3.equals(productVariantCreate4));
        System.assert(productVariantCreate4.equals(productVariantCreate3));
        System.assert(productVariantCreate3.equals(productVariantCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductVariantCreate productVariantCreate1 = OASProductVariantCreate.getExample();
        OASProductVariantCreate productVariantCreate2 = OASProductVariantCreate.getExample();
        OASProductVariantCreate productVariantCreate3 = new OASProductVariantCreate();
        OASProductVariantCreate productVariantCreate4 = new OASProductVariantCreate();

        System.assert(productVariantCreate1.equals(productVariantCreate2));
        System.assert(productVariantCreate2.equals(productVariantCreate1));
        System.assert(productVariantCreate3.equals(productVariantCreate4));
        System.assert(productVariantCreate4.equals(productVariantCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductVariantCreate productVariantCreate1 = OASProductVariantCreate.getExample();
        OASProductVariantCreate productVariantCreate2 = new OASProductVariantCreate();

        System.assertEquals(false, productVariantCreate1.equals('foo'));
        System.assertEquals(false, productVariantCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductVariantCreate productVariantCreate1 = OASProductVariantCreate.getExample();
        OASProductVariantCreate productVariantCreate2 = new OASProductVariantCreate();
        OASProductVariantCreate productVariantCreate3;

        System.assertEquals(false, productVariantCreate1.equals(productVariantCreate3));
        System.assertEquals(false, productVariantCreate2.equals(productVariantCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductVariantCreate productVariantCreate1 = OASProductVariantCreate.getExample();
        OASProductVariantCreate productVariantCreate2 = new OASProductVariantCreate();

        System.assertEquals(productVariantCreate1.hashCode(), productVariantCreate1.hashCode());
        System.assertEquals(productVariantCreate2.hashCode(), productVariantCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductVariantCreate productVariantCreate1 = OASProductVariantCreate.getExample();
        OASProductVariantCreate productVariantCreate2 = OASProductVariantCreate.getExample();
        OASProductVariantCreate productVariantCreate3 = new OASProductVariantCreate();
        OASProductVariantCreate productVariantCreate4 = new OASProductVariantCreate();

        System.assert(productVariantCreate1.equals(productVariantCreate2));
        System.assert(productVariantCreate3.equals(productVariantCreate4));
        System.assertEquals(productVariantCreate1.hashCode(), productVariantCreate2.hashCode());
        System.assertEquals(productVariantCreate3.hashCode(), productVariantCreate4.hashCode());
    }
}
