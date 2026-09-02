@isTest
private class OASCouponValidationTest {
    @isTest
    private static void equalsSameInstance() {
        OASCouponValidation couponValidation1 = OASCouponValidation.getExample();
        OASCouponValidation couponValidation2 = couponValidation1;
        OASCouponValidation couponValidation3 = new OASCouponValidation();
        OASCouponValidation couponValidation4 = couponValidation3;

        System.assert(couponValidation1.equals(couponValidation2));
        System.assert(couponValidation2.equals(couponValidation1));
        System.assert(couponValidation1.equals(couponValidation1));
        System.assert(couponValidation3.equals(couponValidation4));
        System.assert(couponValidation4.equals(couponValidation3));
        System.assert(couponValidation3.equals(couponValidation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCouponValidation couponValidation1 = OASCouponValidation.getExample();
        OASCouponValidation couponValidation2 = OASCouponValidation.getExample();
        OASCouponValidation couponValidation3 = new OASCouponValidation();
        OASCouponValidation couponValidation4 = new OASCouponValidation();

        System.assert(couponValidation1.equals(couponValidation2));
        System.assert(couponValidation2.equals(couponValidation1));
        System.assert(couponValidation3.equals(couponValidation4));
        System.assert(couponValidation4.equals(couponValidation3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCouponValidation couponValidation1 = OASCouponValidation.getExample();
        OASCouponValidation couponValidation2 = new OASCouponValidation();

        System.assertEquals(false, couponValidation1.equals('foo'));
        System.assertEquals(false, couponValidation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCouponValidation couponValidation1 = OASCouponValidation.getExample();
        OASCouponValidation couponValidation2 = new OASCouponValidation();
        OASCouponValidation couponValidation3;

        System.assertEquals(false, couponValidation1.equals(couponValidation3));
        System.assertEquals(false, couponValidation2.equals(couponValidation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCouponValidation couponValidation1 = OASCouponValidation.getExample();
        OASCouponValidation couponValidation2 = new OASCouponValidation();

        System.assertEquals(couponValidation1.hashCode(), couponValidation1.hashCode());
        System.assertEquals(couponValidation2.hashCode(), couponValidation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCouponValidation couponValidation1 = OASCouponValidation.getExample();
        OASCouponValidation couponValidation2 = OASCouponValidation.getExample();
        OASCouponValidation couponValidation3 = new OASCouponValidation();
        OASCouponValidation couponValidation4 = new OASCouponValidation();

        System.assert(couponValidation1.equals(couponValidation2));
        System.assert(couponValidation3.equals(couponValidation4));
        System.assertEquals(couponValidation1.hashCode(), couponValidation2.hashCode());
        System.assertEquals(couponValidation3.hashCode(), couponValidation4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCouponValidation couponValidation = new OASCouponValidation();
        Map<String, String> x-property-mappings = couponValidation.getx-property-mappings();
        System.assertEquals('discountType', x-property-mappings.get('discount_type'));
        System.assertEquals('discountValue', x-property-mappings.get('discount_value'));
        System.assertEquals('discountedAmount', x-property-mappings.get('discounted_amount'));
        System.assertEquals('maxDiscountAmount', x-property-mappings.get('max_discount_amount'));
    }
}
