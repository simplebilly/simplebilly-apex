@isTest
private class OASShippingRuleTest {
    @isTest
    private static void equalsSameInstance() {
        OASShippingRule shippingRule1 = OASShippingRule.getExample();
        OASShippingRule shippingRule2 = shippingRule1;
        OASShippingRule shippingRule3 = new OASShippingRule();
        OASShippingRule shippingRule4 = shippingRule3;

        System.assert(shippingRule1.equals(shippingRule2));
        System.assert(shippingRule2.equals(shippingRule1));
        System.assert(shippingRule1.equals(shippingRule1));
        System.assert(shippingRule3.equals(shippingRule4));
        System.assert(shippingRule4.equals(shippingRule3));
        System.assert(shippingRule3.equals(shippingRule3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASShippingRule shippingRule1 = OASShippingRule.getExample();
        OASShippingRule shippingRule2 = OASShippingRule.getExample();
        OASShippingRule shippingRule3 = new OASShippingRule();
        OASShippingRule shippingRule4 = new OASShippingRule();

        System.assert(shippingRule1.equals(shippingRule2));
        System.assert(shippingRule2.equals(shippingRule1));
        System.assert(shippingRule3.equals(shippingRule4));
        System.assert(shippingRule4.equals(shippingRule3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASShippingRule shippingRule1 = OASShippingRule.getExample();
        OASShippingRule shippingRule2 = new OASShippingRule();

        System.assertEquals(false, shippingRule1.equals('foo'));
        System.assertEquals(false, shippingRule2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASShippingRule shippingRule1 = OASShippingRule.getExample();
        OASShippingRule shippingRule2 = new OASShippingRule();
        OASShippingRule shippingRule3;

        System.assertEquals(false, shippingRule1.equals(shippingRule3));
        System.assertEquals(false, shippingRule2.equals(shippingRule3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASShippingRule shippingRule1 = OASShippingRule.getExample();
        OASShippingRule shippingRule2 = new OASShippingRule();

        System.assertEquals(shippingRule1.hashCode(), shippingRule1.hashCode());
        System.assertEquals(shippingRule2.hashCode(), shippingRule2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASShippingRule shippingRule1 = OASShippingRule.getExample();
        OASShippingRule shippingRule2 = OASShippingRule.getExample();
        OASShippingRule shippingRule3 = new OASShippingRule();
        OASShippingRule shippingRule4 = new OASShippingRule();

        System.assert(shippingRule1.equals(shippingRule2));
        System.assert(shippingRule3.equals(shippingRule4));
        System.assertEquals(shippingRule1.hashCode(), shippingRule2.hashCode());
        System.assertEquals(shippingRule3.hashCode(), shippingRule4.hashCode());
    }
}
