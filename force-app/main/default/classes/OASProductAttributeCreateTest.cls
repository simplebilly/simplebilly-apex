@isTest
private class OASProductAttributeCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductAttributeCreate productAttributeCreate1 = OASProductAttributeCreate.getExample();
        OASProductAttributeCreate productAttributeCreate2 = productAttributeCreate1;
        OASProductAttributeCreate productAttributeCreate3 = new OASProductAttributeCreate();
        OASProductAttributeCreate productAttributeCreate4 = productAttributeCreate3;

        System.assert(productAttributeCreate1.equals(productAttributeCreate2));
        System.assert(productAttributeCreate2.equals(productAttributeCreate1));
        System.assert(productAttributeCreate1.equals(productAttributeCreate1));
        System.assert(productAttributeCreate3.equals(productAttributeCreate4));
        System.assert(productAttributeCreate4.equals(productAttributeCreate3));
        System.assert(productAttributeCreate3.equals(productAttributeCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductAttributeCreate productAttributeCreate1 = OASProductAttributeCreate.getExample();
        OASProductAttributeCreate productAttributeCreate2 = OASProductAttributeCreate.getExample();
        OASProductAttributeCreate productAttributeCreate3 = new OASProductAttributeCreate();
        OASProductAttributeCreate productAttributeCreate4 = new OASProductAttributeCreate();

        System.assert(productAttributeCreate1.equals(productAttributeCreate2));
        System.assert(productAttributeCreate2.equals(productAttributeCreate1));
        System.assert(productAttributeCreate3.equals(productAttributeCreate4));
        System.assert(productAttributeCreate4.equals(productAttributeCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductAttributeCreate productAttributeCreate1 = OASProductAttributeCreate.getExample();
        OASProductAttributeCreate productAttributeCreate2 = new OASProductAttributeCreate();

        System.assertEquals(false, productAttributeCreate1.equals('foo'));
        System.assertEquals(false, productAttributeCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductAttributeCreate productAttributeCreate1 = OASProductAttributeCreate.getExample();
        OASProductAttributeCreate productAttributeCreate2 = new OASProductAttributeCreate();
        OASProductAttributeCreate productAttributeCreate3;

        System.assertEquals(false, productAttributeCreate1.equals(productAttributeCreate3));
        System.assertEquals(false, productAttributeCreate2.equals(productAttributeCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductAttributeCreate productAttributeCreate1 = OASProductAttributeCreate.getExample();
        OASProductAttributeCreate productAttributeCreate2 = new OASProductAttributeCreate();

        System.assertEquals(productAttributeCreate1.hashCode(), productAttributeCreate1.hashCode());
        System.assertEquals(productAttributeCreate2.hashCode(), productAttributeCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductAttributeCreate productAttributeCreate1 = OASProductAttributeCreate.getExample();
        OASProductAttributeCreate productAttributeCreate2 = OASProductAttributeCreate.getExample();
        OASProductAttributeCreate productAttributeCreate3 = new OASProductAttributeCreate();
        OASProductAttributeCreate productAttributeCreate4 = new OASProductAttributeCreate();

        System.assert(productAttributeCreate1.equals(productAttributeCreate2));
        System.assert(productAttributeCreate3.equals(productAttributeCreate4));
        System.assertEquals(productAttributeCreate1.hashCode(), productAttributeCreate2.hashCode());
        System.assertEquals(productAttributeCreate3.hashCode(), productAttributeCreate4.hashCode());
    }
}
