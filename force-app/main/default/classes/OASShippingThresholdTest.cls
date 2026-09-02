@isTest
private class OASShippingThresholdTest {
    @isTest
    private static void equalsSameInstance() {
        OASShippingThreshold shippingThreshold1 = OASShippingThreshold.getExample();
        OASShippingThreshold shippingThreshold2 = shippingThreshold1;
        OASShippingThreshold shippingThreshold3 = new OASShippingThreshold();
        OASShippingThreshold shippingThreshold4 = shippingThreshold3;

        System.assert(shippingThreshold1.equals(shippingThreshold2));
        System.assert(shippingThreshold2.equals(shippingThreshold1));
        System.assert(shippingThreshold1.equals(shippingThreshold1));
        System.assert(shippingThreshold3.equals(shippingThreshold4));
        System.assert(shippingThreshold4.equals(shippingThreshold3));
        System.assert(shippingThreshold3.equals(shippingThreshold3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASShippingThreshold shippingThreshold1 = OASShippingThreshold.getExample();
        OASShippingThreshold shippingThreshold2 = OASShippingThreshold.getExample();
        OASShippingThreshold shippingThreshold3 = new OASShippingThreshold();
        OASShippingThreshold shippingThreshold4 = new OASShippingThreshold();

        System.assert(shippingThreshold1.equals(shippingThreshold2));
        System.assert(shippingThreshold2.equals(shippingThreshold1));
        System.assert(shippingThreshold3.equals(shippingThreshold4));
        System.assert(shippingThreshold4.equals(shippingThreshold3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASShippingThreshold shippingThreshold1 = OASShippingThreshold.getExample();
        OASShippingThreshold shippingThreshold2 = new OASShippingThreshold();

        System.assertEquals(false, shippingThreshold1.equals('foo'));
        System.assertEquals(false, shippingThreshold2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASShippingThreshold shippingThreshold1 = OASShippingThreshold.getExample();
        OASShippingThreshold shippingThreshold2 = new OASShippingThreshold();
        OASShippingThreshold shippingThreshold3;

        System.assertEquals(false, shippingThreshold1.equals(shippingThreshold3));
        System.assertEquals(false, shippingThreshold2.equals(shippingThreshold3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASShippingThreshold shippingThreshold1 = OASShippingThreshold.getExample();
        OASShippingThreshold shippingThreshold2 = new OASShippingThreshold();

        System.assertEquals(shippingThreshold1.hashCode(), shippingThreshold1.hashCode());
        System.assertEquals(shippingThreshold2.hashCode(), shippingThreshold2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASShippingThreshold shippingThreshold1 = OASShippingThreshold.getExample();
        OASShippingThreshold shippingThreshold2 = OASShippingThreshold.getExample();
        OASShippingThreshold shippingThreshold3 = new OASShippingThreshold();
        OASShippingThreshold shippingThreshold4 = new OASShippingThreshold();

        System.assert(shippingThreshold1.equals(shippingThreshold2));
        System.assert(shippingThreshold3.equals(shippingThreshold4));
        System.assertEquals(shippingThreshold1.hashCode(), shippingThreshold2.hashCode());
        System.assertEquals(shippingThreshold3.hashCode(), shippingThreshold4.hashCode());
    }
}
