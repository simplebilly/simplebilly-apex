@isTest
private class OASCouponTest {
    @isTest
    private static void equalsSameInstance() {
        OASCoupon coupon1 = OASCoupon.getExample();
        OASCoupon coupon2 = coupon1;
        OASCoupon coupon3 = new OASCoupon();
        OASCoupon coupon4 = coupon3;

        System.assert(coupon1.equals(coupon2));
        System.assert(coupon2.equals(coupon1));
        System.assert(coupon1.equals(coupon1));
        System.assert(coupon3.equals(coupon4));
        System.assert(coupon4.equals(coupon3));
        System.assert(coupon3.equals(coupon3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCoupon coupon1 = OASCoupon.getExample();
        OASCoupon coupon2 = OASCoupon.getExample();
        OASCoupon coupon3 = new OASCoupon();
        OASCoupon coupon4 = new OASCoupon();

        System.assert(coupon1.equals(coupon2));
        System.assert(coupon2.equals(coupon1));
        System.assert(coupon3.equals(coupon4));
        System.assert(coupon4.equals(coupon3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCoupon coupon1 = OASCoupon.getExample();
        OASCoupon coupon2 = new OASCoupon();

        System.assertEquals(false, coupon1.equals('foo'));
        System.assertEquals(false, coupon2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCoupon coupon1 = OASCoupon.getExample();
        OASCoupon coupon2 = new OASCoupon();
        OASCoupon coupon3;

        System.assertEquals(false, coupon1.equals(coupon3));
        System.assertEquals(false, coupon2.equals(coupon3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCoupon coupon1 = OASCoupon.getExample();
        OASCoupon coupon2 = new OASCoupon();

        System.assertEquals(coupon1.hashCode(), coupon1.hashCode());
        System.assertEquals(coupon2.hashCode(), coupon2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCoupon coupon1 = OASCoupon.getExample();
        OASCoupon coupon2 = OASCoupon.getExample();
        OASCoupon coupon3 = new OASCoupon();
        OASCoupon coupon4 = new OASCoupon();

        System.assert(coupon1.equals(coupon2));
        System.assert(coupon3.equals(coupon4));
        System.assertEquals(coupon1.hashCode(), coupon2.hashCode());
        System.assertEquals(coupon3.hashCode(), coupon4.hashCode());
    }
}
