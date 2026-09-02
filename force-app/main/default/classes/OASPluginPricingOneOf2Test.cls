@isTest
private class OASPluginPricingOneOf2Test {
    @isTest
    private static void equalsSameInstance() {
        OASPluginPricingOneOf2 pluginPricingOneOf21 = OASPluginPricingOneOf2.getExample();
        OASPluginPricingOneOf2 pluginPricingOneOf22 = pluginPricingOneOf21;
        OASPluginPricingOneOf2 pluginPricingOneOf23 = new OASPluginPricingOneOf2();
        OASPluginPricingOneOf2 pluginPricingOneOf24 = pluginPricingOneOf23;

        System.assert(pluginPricingOneOf21.equals(pluginPricingOneOf22));
        System.assert(pluginPricingOneOf22.equals(pluginPricingOneOf21));
        System.assert(pluginPricingOneOf21.equals(pluginPricingOneOf21));
        System.assert(pluginPricingOneOf23.equals(pluginPricingOneOf24));
        System.assert(pluginPricingOneOf24.equals(pluginPricingOneOf23));
        System.assert(pluginPricingOneOf23.equals(pluginPricingOneOf23));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPluginPricingOneOf2 pluginPricingOneOf21 = OASPluginPricingOneOf2.getExample();
        OASPluginPricingOneOf2 pluginPricingOneOf22 = OASPluginPricingOneOf2.getExample();
        OASPluginPricingOneOf2 pluginPricingOneOf23 = new OASPluginPricingOneOf2();
        OASPluginPricingOneOf2 pluginPricingOneOf24 = new OASPluginPricingOneOf2();

        System.assert(pluginPricingOneOf21.equals(pluginPricingOneOf22));
        System.assert(pluginPricingOneOf22.equals(pluginPricingOneOf21));
        System.assert(pluginPricingOneOf23.equals(pluginPricingOneOf24));
        System.assert(pluginPricingOneOf24.equals(pluginPricingOneOf23));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPluginPricingOneOf2 pluginPricingOneOf21 = OASPluginPricingOneOf2.getExample();
        OASPluginPricingOneOf2 pluginPricingOneOf22 = new OASPluginPricingOneOf2();

        System.assertEquals(false, pluginPricingOneOf21.equals('foo'));
        System.assertEquals(false, pluginPricingOneOf22.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPluginPricingOneOf2 pluginPricingOneOf21 = OASPluginPricingOneOf2.getExample();
        OASPluginPricingOneOf2 pluginPricingOneOf22 = new OASPluginPricingOneOf2();
        OASPluginPricingOneOf2 pluginPricingOneOf23;

        System.assertEquals(false, pluginPricingOneOf21.equals(pluginPricingOneOf23));
        System.assertEquals(false, pluginPricingOneOf22.equals(pluginPricingOneOf23));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPluginPricingOneOf2 pluginPricingOneOf21 = OASPluginPricingOneOf2.getExample();
        OASPluginPricingOneOf2 pluginPricingOneOf22 = new OASPluginPricingOneOf2();

        System.assertEquals(pluginPricingOneOf21.hashCode(), pluginPricingOneOf21.hashCode());
        System.assertEquals(pluginPricingOneOf22.hashCode(), pluginPricingOneOf22.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPluginPricingOneOf2 pluginPricingOneOf21 = OASPluginPricingOneOf2.getExample();
        OASPluginPricingOneOf2 pluginPricingOneOf22 = OASPluginPricingOneOf2.getExample();
        OASPluginPricingOneOf2 pluginPricingOneOf23 = new OASPluginPricingOneOf2();
        OASPluginPricingOneOf2 pluginPricingOneOf24 = new OASPluginPricingOneOf2();

        System.assert(pluginPricingOneOf21.equals(pluginPricingOneOf22));
        System.assert(pluginPricingOneOf23.equals(pluginPricingOneOf24));
        System.assertEquals(pluginPricingOneOf21.hashCode(), pluginPricingOneOf22.hashCode());
        System.assertEquals(pluginPricingOneOf23.hashCode(), pluginPricingOneOf24.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPluginPricingOneOf2 pluginPricingOneOf2 = new OASPluginPricingOneOf2();
        Map<String, String> x-property-mappings = pluginPricingOneOf2.getx-property-mappings();
        System.assertEquals('pricePerMonth', x-property-mappings.get('price_per_month'));
    }
}
