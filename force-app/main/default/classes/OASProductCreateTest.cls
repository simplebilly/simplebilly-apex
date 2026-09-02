@isTest
private class OASProductCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductCreate productCreate1 = OASProductCreate.getExample();
        OASProductCreate productCreate2 = productCreate1;
        OASProductCreate productCreate3 = new OASProductCreate();
        OASProductCreate productCreate4 = productCreate3;

        System.assert(productCreate1.equals(productCreate2));
        System.assert(productCreate2.equals(productCreate1));
        System.assert(productCreate1.equals(productCreate1));
        System.assert(productCreate3.equals(productCreate4));
        System.assert(productCreate4.equals(productCreate3));
        System.assert(productCreate3.equals(productCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductCreate productCreate1 = OASProductCreate.getExample();
        OASProductCreate productCreate2 = OASProductCreate.getExample();
        OASProductCreate productCreate3 = new OASProductCreate();
        OASProductCreate productCreate4 = new OASProductCreate();

        System.assert(productCreate1.equals(productCreate2));
        System.assert(productCreate2.equals(productCreate1));
        System.assert(productCreate3.equals(productCreate4));
        System.assert(productCreate4.equals(productCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductCreate productCreate1 = OASProductCreate.getExample();
        OASProductCreate productCreate2 = new OASProductCreate();

        System.assertEquals(false, productCreate1.equals('foo'));
        System.assertEquals(false, productCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductCreate productCreate1 = OASProductCreate.getExample();
        OASProductCreate productCreate2 = new OASProductCreate();
        OASProductCreate productCreate3;

        System.assertEquals(false, productCreate1.equals(productCreate3));
        System.assertEquals(false, productCreate2.equals(productCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductCreate productCreate1 = OASProductCreate.getExample();
        OASProductCreate productCreate2 = new OASProductCreate();

        System.assertEquals(productCreate1.hashCode(), productCreate1.hashCode());
        System.assertEquals(productCreate2.hashCode(), productCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductCreate productCreate1 = OASProductCreate.getExample();
        OASProductCreate productCreate2 = OASProductCreate.getExample();
        OASProductCreate productCreate3 = new OASProductCreate();
        OASProductCreate productCreate4 = new OASProductCreate();

        System.assert(productCreate1.equals(productCreate2));
        System.assert(productCreate3.equals(productCreate4));
        System.assertEquals(productCreate1.hashCode(), productCreate2.hashCode());
        System.assertEquals(productCreate3.hashCode(), productCreate4.hashCode());
    }
}
