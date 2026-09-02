@isTest
private class OASPluginPricingTest {
    @isTest
    private static void equalsSameInstance() {
        OASPluginPricing pluginPricing1 = OASPluginPricing.getExample();
        OASPluginPricing pluginPricing2 = pluginPricing1;
        OASPluginPricing pluginPricing3 = new OASPluginPricing();
        OASPluginPricing pluginPricing4 = pluginPricing3;

        System.assert(pluginPricing1.equals(pluginPricing2));
        System.assert(pluginPricing2.equals(pluginPricing1));
        System.assert(pluginPricing1.equals(pluginPricing1));
        System.assert(pluginPricing3.equals(pluginPricing4));
        System.assert(pluginPricing4.equals(pluginPricing3));
        System.assert(pluginPricing3.equals(pluginPricing3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPluginPricing pluginPricing1 = OASPluginPricing.getExample();
        OASPluginPricing pluginPricing2 = OASPluginPricing.getExample();
        OASPluginPricing pluginPricing3 = new OASPluginPricing();
        OASPluginPricing pluginPricing4 = new OASPluginPricing();

        System.assert(pluginPricing1.equals(pluginPricing2));
        System.assert(pluginPricing2.equals(pluginPricing1));
        System.assert(pluginPricing3.equals(pluginPricing4));
        System.assert(pluginPricing4.equals(pluginPricing3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPluginPricing pluginPricing1 = OASPluginPricing.getExample();
        OASPluginPricing pluginPricing2 = new OASPluginPricing();

        System.assertEquals(false, pluginPricing1.equals('foo'));
        System.assertEquals(false, pluginPricing2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPluginPricing pluginPricing1 = OASPluginPricing.getExample();
        OASPluginPricing pluginPricing2 = new OASPluginPricing();
        OASPluginPricing pluginPricing3;

        System.assertEquals(false, pluginPricing1.equals(pluginPricing3));
        System.assertEquals(false, pluginPricing2.equals(pluginPricing3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPluginPricing pluginPricing1 = OASPluginPricing.getExample();
        OASPluginPricing pluginPricing2 = new OASPluginPricing();

        System.assertEquals(pluginPricing1.hashCode(), pluginPricing1.hashCode());
        System.assertEquals(pluginPricing2.hashCode(), pluginPricing2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPluginPricing pluginPricing1 = OASPluginPricing.getExample();
        OASPluginPricing pluginPricing2 = OASPluginPricing.getExample();
        OASPluginPricing pluginPricing3 = new OASPluginPricing();
        OASPluginPricing pluginPricing4 = new OASPluginPricing();

        System.assert(pluginPricing1.equals(pluginPricing2));
        System.assert(pluginPricing3.equals(pluginPricing4));
        System.assertEquals(pluginPricing1.hashCode(), pluginPricing2.hashCode());
        System.assertEquals(pluginPricing3.hashCode(), pluginPricing4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPluginPricing pluginPricing = new OASPluginPricing();
        Map<String, String> x-property-mappings = pluginPricing.getx-property-mappings();
        System.assertEquals('pricePerMonth', x-property-mappings.get('price_per_month'));
    }
}
