@isTest
private class OASShippingThresholdUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASShippingThresholdUpdate shippingThresholdUpdate1 = OASShippingThresholdUpdate.getExample();
        OASShippingThresholdUpdate shippingThresholdUpdate2 = shippingThresholdUpdate1;
        OASShippingThresholdUpdate shippingThresholdUpdate3 = new OASShippingThresholdUpdate();
        OASShippingThresholdUpdate shippingThresholdUpdate4 = shippingThresholdUpdate3;

        System.assert(shippingThresholdUpdate1.equals(shippingThresholdUpdate2));
        System.assert(shippingThresholdUpdate2.equals(shippingThresholdUpdate1));
        System.assert(shippingThresholdUpdate1.equals(shippingThresholdUpdate1));
        System.assert(shippingThresholdUpdate3.equals(shippingThresholdUpdate4));
        System.assert(shippingThresholdUpdate4.equals(shippingThresholdUpdate3));
        System.assert(shippingThresholdUpdate3.equals(shippingThresholdUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASShippingThresholdUpdate shippingThresholdUpdate1 = OASShippingThresholdUpdate.getExample();
        OASShippingThresholdUpdate shippingThresholdUpdate2 = OASShippingThresholdUpdate.getExample();
        OASShippingThresholdUpdate shippingThresholdUpdate3 = new OASShippingThresholdUpdate();
        OASShippingThresholdUpdate shippingThresholdUpdate4 = new OASShippingThresholdUpdate();

        System.assert(shippingThresholdUpdate1.equals(shippingThresholdUpdate2));
        System.assert(shippingThresholdUpdate2.equals(shippingThresholdUpdate1));
        System.assert(shippingThresholdUpdate3.equals(shippingThresholdUpdate4));
        System.assert(shippingThresholdUpdate4.equals(shippingThresholdUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASShippingThresholdUpdate shippingThresholdUpdate1 = OASShippingThresholdUpdate.getExample();
        OASShippingThresholdUpdate shippingThresholdUpdate2 = new OASShippingThresholdUpdate();

        System.assertEquals(false, shippingThresholdUpdate1.equals('foo'));
        System.assertEquals(false, shippingThresholdUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASShippingThresholdUpdate shippingThresholdUpdate1 = OASShippingThresholdUpdate.getExample();
        OASShippingThresholdUpdate shippingThresholdUpdate2 = new OASShippingThresholdUpdate();
        OASShippingThresholdUpdate shippingThresholdUpdate3;

        System.assertEquals(false, shippingThresholdUpdate1.equals(shippingThresholdUpdate3));
        System.assertEquals(false, shippingThresholdUpdate2.equals(shippingThresholdUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASShippingThresholdUpdate shippingThresholdUpdate1 = OASShippingThresholdUpdate.getExample();
        OASShippingThresholdUpdate shippingThresholdUpdate2 = new OASShippingThresholdUpdate();

        System.assertEquals(shippingThresholdUpdate1.hashCode(), shippingThresholdUpdate1.hashCode());
        System.assertEquals(shippingThresholdUpdate2.hashCode(), shippingThresholdUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASShippingThresholdUpdate shippingThresholdUpdate1 = OASShippingThresholdUpdate.getExample();
        OASShippingThresholdUpdate shippingThresholdUpdate2 = OASShippingThresholdUpdate.getExample();
        OASShippingThresholdUpdate shippingThresholdUpdate3 = new OASShippingThresholdUpdate();
        OASShippingThresholdUpdate shippingThresholdUpdate4 = new OASShippingThresholdUpdate();

        System.assert(shippingThresholdUpdate1.equals(shippingThresholdUpdate2));
        System.assert(shippingThresholdUpdate3.equals(shippingThresholdUpdate4));
        System.assertEquals(shippingThresholdUpdate1.hashCode(), shippingThresholdUpdate2.hashCode());
        System.assertEquals(shippingThresholdUpdate3.hashCode(), shippingThresholdUpdate4.hashCode());
    }
}
