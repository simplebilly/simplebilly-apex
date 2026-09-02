@isTest
private class OASShippingRuleCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASShippingRuleCreate shippingRuleCreate1 = OASShippingRuleCreate.getExample();
        OASShippingRuleCreate shippingRuleCreate2 = shippingRuleCreate1;
        OASShippingRuleCreate shippingRuleCreate3 = new OASShippingRuleCreate();
        OASShippingRuleCreate shippingRuleCreate4 = shippingRuleCreate3;

        System.assert(shippingRuleCreate1.equals(shippingRuleCreate2));
        System.assert(shippingRuleCreate2.equals(shippingRuleCreate1));
        System.assert(shippingRuleCreate1.equals(shippingRuleCreate1));
        System.assert(shippingRuleCreate3.equals(shippingRuleCreate4));
        System.assert(shippingRuleCreate4.equals(shippingRuleCreate3));
        System.assert(shippingRuleCreate3.equals(shippingRuleCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASShippingRuleCreate shippingRuleCreate1 = OASShippingRuleCreate.getExample();
        OASShippingRuleCreate shippingRuleCreate2 = OASShippingRuleCreate.getExample();
        OASShippingRuleCreate shippingRuleCreate3 = new OASShippingRuleCreate();
        OASShippingRuleCreate shippingRuleCreate4 = new OASShippingRuleCreate();

        System.assert(shippingRuleCreate1.equals(shippingRuleCreate2));
        System.assert(shippingRuleCreate2.equals(shippingRuleCreate1));
        System.assert(shippingRuleCreate3.equals(shippingRuleCreate4));
        System.assert(shippingRuleCreate4.equals(shippingRuleCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASShippingRuleCreate shippingRuleCreate1 = OASShippingRuleCreate.getExample();
        OASShippingRuleCreate shippingRuleCreate2 = new OASShippingRuleCreate();

        System.assertEquals(false, shippingRuleCreate1.equals('foo'));
        System.assertEquals(false, shippingRuleCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASShippingRuleCreate shippingRuleCreate1 = OASShippingRuleCreate.getExample();
        OASShippingRuleCreate shippingRuleCreate2 = new OASShippingRuleCreate();
        OASShippingRuleCreate shippingRuleCreate3;

        System.assertEquals(false, shippingRuleCreate1.equals(shippingRuleCreate3));
        System.assertEquals(false, shippingRuleCreate2.equals(shippingRuleCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASShippingRuleCreate shippingRuleCreate1 = OASShippingRuleCreate.getExample();
        OASShippingRuleCreate shippingRuleCreate2 = new OASShippingRuleCreate();

        System.assertEquals(shippingRuleCreate1.hashCode(), shippingRuleCreate1.hashCode());
        System.assertEquals(shippingRuleCreate2.hashCode(), shippingRuleCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASShippingRuleCreate shippingRuleCreate1 = OASShippingRuleCreate.getExample();
        OASShippingRuleCreate shippingRuleCreate2 = OASShippingRuleCreate.getExample();
        OASShippingRuleCreate shippingRuleCreate3 = new OASShippingRuleCreate();
        OASShippingRuleCreate shippingRuleCreate4 = new OASShippingRuleCreate();

        System.assert(shippingRuleCreate1.equals(shippingRuleCreate2));
        System.assert(shippingRuleCreate3.equals(shippingRuleCreate4));
        System.assertEquals(shippingRuleCreate1.hashCode(), shippingRuleCreate2.hashCode());
        System.assertEquals(shippingRuleCreate3.hashCode(), shippingRuleCreate4.hashCode());
    }
}
