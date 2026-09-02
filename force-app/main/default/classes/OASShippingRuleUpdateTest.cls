@isTest
private class OASShippingRuleUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASShippingRuleUpdate shippingRuleUpdate1 = OASShippingRuleUpdate.getExample();
        OASShippingRuleUpdate shippingRuleUpdate2 = shippingRuleUpdate1;
        OASShippingRuleUpdate shippingRuleUpdate3 = new OASShippingRuleUpdate();
        OASShippingRuleUpdate shippingRuleUpdate4 = shippingRuleUpdate3;

        System.assert(shippingRuleUpdate1.equals(shippingRuleUpdate2));
        System.assert(shippingRuleUpdate2.equals(shippingRuleUpdate1));
        System.assert(shippingRuleUpdate1.equals(shippingRuleUpdate1));
        System.assert(shippingRuleUpdate3.equals(shippingRuleUpdate4));
        System.assert(shippingRuleUpdate4.equals(shippingRuleUpdate3));
        System.assert(shippingRuleUpdate3.equals(shippingRuleUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASShippingRuleUpdate shippingRuleUpdate1 = OASShippingRuleUpdate.getExample();
        OASShippingRuleUpdate shippingRuleUpdate2 = OASShippingRuleUpdate.getExample();
        OASShippingRuleUpdate shippingRuleUpdate3 = new OASShippingRuleUpdate();
        OASShippingRuleUpdate shippingRuleUpdate4 = new OASShippingRuleUpdate();

        System.assert(shippingRuleUpdate1.equals(shippingRuleUpdate2));
        System.assert(shippingRuleUpdate2.equals(shippingRuleUpdate1));
        System.assert(shippingRuleUpdate3.equals(shippingRuleUpdate4));
        System.assert(shippingRuleUpdate4.equals(shippingRuleUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASShippingRuleUpdate shippingRuleUpdate1 = OASShippingRuleUpdate.getExample();
        OASShippingRuleUpdate shippingRuleUpdate2 = new OASShippingRuleUpdate();

        System.assertEquals(false, shippingRuleUpdate1.equals('foo'));
        System.assertEquals(false, shippingRuleUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASShippingRuleUpdate shippingRuleUpdate1 = OASShippingRuleUpdate.getExample();
        OASShippingRuleUpdate shippingRuleUpdate2 = new OASShippingRuleUpdate();
        OASShippingRuleUpdate shippingRuleUpdate3;

        System.assertEquals(false, shippingRuleUpdate1.equals(shippingRuleUpdate3));
        System.assertEquals(false, shippingRuleUpdate2.equals(shippingRuleUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASShippingRuleUpdate shippingRuleUpdate1 = OASShippingRuleUpdate.getExample();
        OASShippingRuleUpdate shippingRuleUpdate2 = new OASShippingRuleUpdate();

        System.assertEquals(shippingRuleUpdate1.hashCode(), shippingRuleUpdate1.hashCode());
        System.assertEquals(shippingRuleUpdate2.hashCode(), shippingRuleUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASShippingRuleUpdate shippingRuleUpdate1 = OASShippingRuleUpdate.getExample();
        OASShippingRuleUpdate shippingRuleUpdate2 = OASShippingRuleUpdate.getExample();
        OASShippingRuleUpdate shippingRuleUpdate3 = new OASShippingRuleUpdate();
        OASShippingRuleUpdate shippingRuleUpdate4 = new OASShippingRuleUpdate();

        System.assert(shippingRuleUpdate1.equals(shippingRuleUpdate2));
        System.assert(shippingRuleUpdate3.equals(shippingRuleUpdate4));
        System.assertEquals(shippingRuleUpdate1.hashCode(), shippingRuleUpdate2.hashCode());
        System.assertEquals(shippingRuleUpdate3.hashCode(), shippingRuleUpdate4.hashCode());
    }
}
