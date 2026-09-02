@isTest
private class OASCouponCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASCouponCreate couponCreate1 = OASCouponCreate.getExample();
        OASCouponCreate couponCreate2 = couponCreate1;
        OASCouponCreate couponCreate3 = new OASCouponCreate();
        OASCouponCreate couponCreate4 = couponCreate3;

        System.assert(couponCreate1.equals(couponCreate2));
        System.assert(couponCreate2.equals(couponCreate1));
        System.assert(couponCreate1.equals(couponCreate1));
        System.assert(couponCreate3.equals(couponCreate4));
        System.assert(couponCreate4.equals(couponCreate3));
        System.assert(couponCreate3.equals(couponCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCouponCreate couponCreate1 = OASCouponCreate.getExample();
        OASCouponCreate couponCreate2 = OASCouponCreate.getExample();
        OASCouponCreate couponCreate3 = new OASCouponCreate();
        OASCouponCreate couponCreate4 = new OASCouponCreate();

        System.assert(couponCreate1.equals(couponCreate2));
        System.assert(couponCreate2.equals(couponCreate1));
        System.assert(couponCreate3.equals(couponCreate4));
        System.assert(couponCreate4.equals(couponCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCouponCreate couponCreate1 = OASCouponCreate.getExample();
        OASCouponCreate couponCreate2 = new OASCouponCreate();

        System.assertEquals(false, couponCreate1.equals('foo'));
        System.assertEquals(false, couponCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCouponCreate couponCreate1 = OASCouponCreate.getExample();
        OASCouponCreate couponCreate2 = new OASCouponCreate();
        OASCouponCreate couponCreate3;

        System.assertEquals(false, couponCreate1.equals(couponCreate3));
        System.assertEquals(false, couponCreate2.equals(couponCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCouponCreate couponCreate1 = OASCouponCreate.getExample();
        OASCouponCreate couponCreate2 = new OASCouponCreate();

        System.assertEquals(couponCreate1.hashCode(), couponCreate1.hashCode());
        System.assertEquals(couponCreate2.hashCode(), couponCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCouponCreate couponCreate1 = OASCouponCreate.getExample();
        OASCouponCreate couponCreate2 = OASCouponCreate.getExample();
        OASCouponCreate couponCreate3 = new OASCouponCreate();
        OASCouponCreate couponCreate4 = new OASCouponCreate();

        System.assert(couponCreate1.equals(couponCreate2));
        System.assert(couponCreate3.equals(couponCreate4));
        System.assertEquals(couponCreate1.hashCode(), couponCreate2.hashCode());
        System.assertEquals(couponCreate3.hashCode(), couponCreate4.hashCode());
    }
}
