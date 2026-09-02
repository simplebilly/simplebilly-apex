@isTest
private class OASPluginPricingOneOf1Test {
    @isTest
    private static void equalsSameInstance() {
        OASPluginPricingOneOf1 pluginPricingOneOf11 = OASPluginPricingOneOf1.getExample();
        OASPluginPricingOneOf1 pluginPricingOneOf12 = pluginPricingOneOf11;
        OASPluginPricingOneOf1 pluginPricingOneOf13 = new OASPluginPricingOneOf1();
        OASPluginPricingOneOf1 pluginPricingOneOf14 = pluginPricingOneOf13;

        System.assert(pluginPricingOneOf11.equals(pluginPricingOneOf12));
        System.assert(pluginPricingOneOf12.equals(pluginPricingOneOf11));
        System.assert(pluginPricingOneOf11.equals(pluginPricingOneOf11));
        System.assert(pluginPricingOneOf13.equals(pluginPricingOneOf14));
        System.assert(pluginPricingOneOf14.equals(pluginPricingOneOf13));
        System.assert(pluginPricingOneOf13.equals(pluginPricingOneOf13));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPluginPricingOneOf1 pluginPricingOneOf11 = OASPluginPricingOneOf1.getExample();
        OASPluginPricingOneOf1 pluginPricingOneOf12 = OASPluginPricingOneOf1.getExample();
        OASPluginPricingOneOf1 pluginPricingOneOf13 = new OASPluginPricingOneOf1();
        OASPluginPricingOneOf1 pluginPricingOneOf14 = new OASPluginPricingOneOf1();

        System.assert(pluginPricingOneOf11.equals(pluginPricingOneOf12));
        System.assert(pluginPricingOneOf12.equals(pluginPricingOneOf11));
        System.assert(pluginPricingOneOf13.equals(pluginPricingOneOf14));
        System.assert(pluginPricingOneOf14.equals(pluginPricingOneOf13));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPluginPricingOneOf1 pluginPricingOneOf11 = OASPluginPricingOneOf1.getExample();
        OASPluginPricingOneOf1 pluginPricingOneOf12 = new OASPluginPricingOneOf1();

        System.assertEquals(false, pluginPricingOneOf11.equals('foo'));
        System.assertEquals(false, pluginPricingOneOf12.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPluginPricingOneOf1 pluginPricingOneOf11 = OASPluginPricingOneOf1.getExample();
        OASPluginPricingOneOf1 pluginPricingOneOf12 = new OASPluginPricingOneOf1();
        OASPluginPricingOneOf1 pluginPricingOneOf13;

        System.assertEquals(false, pluginPricingOneOf11.equals(pluginPricingOneOf13));
        System.assertEquals(false, pluginPricingOneOf12.equals(pluginPricingOneOf13));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPluginPricingOneOf1 pluginPricingOneOf11 = OASPluginPricingOneOf1.getExample();
        OASPluginPricingOneOf1 pluginPricingOneOf12 = new OASPluginPricingOneOf1();

        System.assertEquals(pluginPricingOneOf11.hashCode(), pluginPricingOneOf11.hashCode());
        System.assertEquals(pluginPricingOneOf12.hashCode(), pluginPricingOneOf12.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPluginPricingOneOf1 pluginPricingOneOf11 = OASPluginPricingOneOf1.getExample();
        OASPluginPricingOneOf1 pluginPricingOneOf12 = OASPluginPricingOneOf1.getExample();
        OASPluginPricingOneOf1 pluginPricingOneOf13 = new OASPluginPricingOneOf1();
        OASPluginPricingOneOf1 pluginPricingOneOf14 = new OASPluginPricingOneOf1();

        System.assert(pluginPricingOneOf11.equals(pluginPricingOneOf12));
        System.assert(pluginPricingOneOf13.equals(pluginPricingOneOf14));
        System.assertEquals(pluginPricingOneOf11.hashCode(), pluginPricingOneOf12.hashCode());
        System.assertEquals(pluginPricingOneOf13.hashCode(), pluginPricingOneOf14.hashCode());
    }
}
