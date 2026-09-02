@isTest
private class OASShippingThresholdCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASShippingThresholdCreate shippingThresholdCreate1 = OASShippingThresholdCreate.getExample();
        OASShippingThresholdCreate shippingThresholdCreate2 = shippingThresholdCreate1;
        OASShippingThresholdCreate shippingThresholdCreate3 = new OASShippingThresholdCreate();
        OASShippingThresholdCreate shippingThresholdCreate4 = shippingThresholdCreate3;

        System.assert(shippingThresholdCreate1.equals(shippingThresholdCreate2));
        System.assert(shippingThresholdCreate2.equals(shippingThresholdCreate1));
        System.assert(shippingThresholdCreate1.equals(shippingThresholdCreate1));
        System.assert(shippingThresholdCreate3.equals(shippingThresholdCreate4));
        System.assert(shippingThresholdCreate4.equals(shippingThresholdCreate3));
        System.assert(shippingThresholdCreate3.equals(shippingThresholdCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASShippingThresholdCreate shippingThresholdCreate1 = OASShippingThresholdCreate.getExample();
        OASShippingThresholdCreate shippingThresholdCreate2 = OASShippingThresholdCreate.getExample();
        OASShippingThresholdCreate shippingThresholdCreate3 = new OASShippingThresholdCreate();
        OASShippingThresholdCreate shippingThresholdCreate4 = new OASShippingThresholdCreate();

        System.assert(shippingThresholdCreate1.equals(shippingThresholdCreate2));
        System.assert(shippingThresholdCreate2.equals(shippingThresholdCreate1));
        System.assert(shippingThresholdCreate3.equals(shippingThresholdCreate4));
        System.assert(shippingThresholdCreate4.equals(shippingThresholdCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASShippingThresholdCreate shippingThresholdCreate1 = OASShippingThresholdCreate.getExample();
        OASShippingThresholdCreate shippingThresholdCreate2 = new OASShippingThresholdCreate();

        System.assertEquals(false, shippingThresholdCreate1.equals('foo'));
        System.assertEquals(false, shippingThresholdCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASShippingThresholdCreate shippingThresholdCreate1 = OASShippingThresholdCreate.getExample();
        OASShippingThresholdCreate shippingThresholdCreate2 = new OASShippingThresholdCreate();
        OASShippingThresholdCreate shippingThresholdCreate3;

        System.assertEquals(false, shippingThresholdCreate1.equals(shippingThresholdCreate3));
        System.assertEquals(false, shippingThresholdCreate2.equals(shippingThresholdCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASShippingThresholdCreate shippingThresholdCreate1 = OASShippingThresholdCreate.getExample();
        OASShippingThresholdCreate shippingThresholdCreate2 = new OASShippingThresholdCreate();

        System.assertEquals(shippingThresholdCreate1.hashCode(), shippingThresholdCreate1.hashCode());
        System.assertEquals(shippingThresholdCreate2.hashCode(), shippingThresholdCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASShippingThresholdCreate shippingThresholdCreate1 = OASShippingThresholdCreate.getExample();
        OASShippingThresholdCreate shippingThresholdCreate2 = OASShippingThresholdCreate.getExample();
        OASShippingThresholdCreate shippingThresholdCreate3 = new OASShippingThresholdCreate();
        OASShippingThresholdCreate shippingThresholdCreate4 = new OASShippingThresholdCreate();

        System.assert(shippingThresholdCreate1.equals(shippingThresholdCreate2));
        System.assert(shippingThresholdCreate3.equals(shippingThresholdCreate4));
        System.assertEquals(shippingThresholdCreate1.hashCode(), shippingThresholdCreate2.hashCode());
        System.assertEquals(shippingThresholdCreate3.hashCode(), shippingThresholdCreate4.hashCode());
    }
}
