@isTest
private class OASCouponUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASCouponUpdate couponUpdate1 = OASCouponUpdate.getExample();
        OASCouponUpdate couponUpdate2 = couponUpdate1;
        OASCouponUpdate couponUpdate3 = new OASCouponUpdate();
        OASCouponUpdate couponUpdate4 = couponUpdate3;

        System.assert(couponUpdate1.equals(couponUpdate2));
        System.assert(couponUpdate2.equals(couponUpdate1));
        System.assert(couponUpdate1.equals(couponUpdate1));
        System.assert(couponUpdate3.equals(couponUpdate4));
        System.assert(couponUpdate4.equals(couponUpdate3));
        System.assert(couponUpdate3.equals(couponUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCouponUpdate couponUpdate1 = OASCouponUpdate.getExample();
        OASCouponUpdate couponUpdate2 = OASCouponUpdate.getExample();
        OASCouponUpdate couponUpdate3 = new OASCouponUpdate();
        OASCouponUpdate couponUpdate4 = new OASCouponUpdate();

        System.assert(couponUpdate1.equals(couponUpdate2));
        System.assert(couponUpdate2.equals(couponUpdate1));
        System.assert(couponUpdate3.equals(couponUpdate4));
        System.assert(couponUpdate4.equals(couponUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCouponUpdate couponUpdate1 = OASCouponUpdate.getExample();
        OASCouponUpdate couponUpdate2 = new OASCouponUpdate();

        System.assertEquals(false, couponUpdate1.equals('foo'));
        System.assertEquals(false, couponUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCouponUpdate couponUpdate1 = OASCouponUpdate.getExample();
        OASCouponUpdate couponUpdate2 = new OASCouponUpdate();
        OASCouponUpdate couponUpdate3;

        System.assertEquals(false, couponUpdate1.equals(couponUpdate3));
        System.assertEquals(false, couponUpdate2.equals(couponUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCouponUpdate couponUpdate1 = OASCouponUpdate.getExample();
        OASCouponUpdate couponUpdate2 = new OASCouponUpdate();

        System.assertEquals(couponUpdate1.hashCode(), couponUpdate1.hashCode());
        System.assertEquals(couponUpdate2.hashCode(), couponUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCouponUpdate couponUpdate1 = OASCouponUpdate.getExample();
        OASCouponUpdate couponUpdate2 = OASCouponUpdate.getExample();
        OASCouponUpdate couponUpdate3 = new OASCouponUpdate();
        OASCouponUpdate couponUpdate4 = new OASCouponUpdate();

        System.assert(couponUpdate1.equals(couponUpdate2));
        System.assert(couponUpdate3.equals(couponUpdate4));
        System.assertEquals(couponUpdate1.hashCode(), couponUpdate2.hashCode());
        System.assertEquals(couponUpdate3.hashCode(), couponUpdate4.hashCode());
    }
}
