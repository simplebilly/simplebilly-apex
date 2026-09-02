@isTest
private class OASPluginPricingOneOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASPluginPricingOneOf pluginPricingOneOf1 = OASPluginPricingOneOf.getExample();
        OASPluginPricingOneOf pluginPricingOneOf2 = pluginPricingOneOf1;
        OASPluginPricingOneOf pluginPricingOneOf3 = new OASPluginPricingOneOf();
        OASPluginPricingOneOf pluginPricingOneOf4 = pluginPricingOneOf3;

        System.assert(pluginPricingOneOf1.equals(pluginPricingOneOf2));
        System.assert(pluginPricingOneOf2.equals(pluginPricingOneOf1));
        System.assert(pluginPricingOneOf1.equals(pluginPricingOneOf1));
        System.assert(pluginPricingOneOf3.equals(pluginPricingOneOf4));
        System.assert(pluginPricingOneOf4.equals(pluginPricingOneOf3));
        System.assert(pluginPricingOneOf3.equals(pluginPricingOneOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPluginPricingOneOf pluginPricingOneOf1 = OASPluginPricingOneOf.getExample();
        OASPluginPricingOneOf pluginPricingOneOf2 = OASPluginPricingOneOf.getExample();
        OASPluginPricingOneOf pluginPricingOneOf3 = new OASPluginPricingOneOf();
        OASPluginPricingOneOf pluginPricingOneOf4 = new OASPluginPricingOneOf();

        System.assert(pluginPricingOneOf1.equals(pluginPricingOneOf2));
        System.assert(pluginPricingOneOf2.equals(pluginPricingOneOf1));
        System.assert(pluginPricingOneOf3.equals(pluginPricingOneOf4));
        System.assert(pluginPricingOneOf4.equals(pluginPricingOneOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPluginPricingOneOf pluginPricingOneOf1 = OASPluginPricingOneOf.getExample();
        OASPluginPricingOneOf pluginPricingOneOf2 = new OASPluginPricingOneOf();

        System.assertEquals(false, pluginPricingOneOf1.equals('foo'));
        System.assertEquals(false, pluginPricingOneOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPluginPricingOneOf pluginPricingOneOf1 = OASPluginPricingOneOf.getExample();
        OASPluginPricingOneOf pluginPricingOneOf2 = new OASPluginPricingOneOf();
        OASPluginPricingOneOf pluginPricingOneOf3;

        System.assertEquals(false, pluginPricingOneOf1.equals(pluginPricingOneOf3));
        System.assertEquals(false, pluginPricingOneOf2.equals(pluginPricingOneOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPluginPricingOneOf pluginPricingOneOf1 = OASPluginPricingOneOf.getExample();
        OASPluginPricingOneOf pluginPricingOneOf2 = new OASPluginPricingOneOf();

        System.assertEquals(pluginPricingOneOf1.hashCode(), pluginPricingOneOf1.hashCode());
        System.assertEquals(pluginPricingOneOf2.hashCode(), pluginPricingOneOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPluginPricingOneOf pluginPricingOneOf1 = OASPluginPricingOneOf.getExample();
        OASPluginPricingOneOf pluginPricingOneOf2 = OASPluginPricingOneOf.getExample();
        OASPluginPricingOneOf pluginPricingOneOf3 = new OASPluginPricingOneOf();
        OASPluginPricingOneOf pluginPricingOneOf4 = new OASPluginPricingOneOf();

        System.assert(pluginPricingOneOf1.equals(pluginPricingOneOf2));
        System.assert(pluginPricingOneOf3.equals(pluginPricingOneOf4));
        System.assertEquals(pluginPricingOneOf1.hashCode(), pluginPricingOneOf2.hashCode());
        System.assertEquals(pluginPricingOneOf3.hashCode(), pluginPricingOneOf4.hashCode());
    }
}
