@isTest
private class OASPluginErrorOneOf5Test {
    @isTest
    private static void equalsSameInstance() {
        OASPluginErrorOneOf5 pluginErrorOneOf51 = OASPluginErrorOneOf5.getExample();
        OASPluginErrorOneOf5 pluginErrorOneOf52 = pluginErrorOneOf51;
        OASPluginErrorOneOf5 pluginErrorOneOf53 = new OASPluginErrorOneOf5();
        OASPluginErrorOneOf5 pluginErrorOneOf54 = pluginErrorOneOf53;

        System.assert(pluginErrorOneOf51.equals(pluginErrorOneOf52));
        System.assert(pluginErrorOneOf52.equals(pluginErrorOneOf51));
        System.assert(pluginErrorOneOf51.equals(pluginErrorOneOf51));
        System.assert(pluginErrorOneOf53.equals(pluginErrorOneOf54));
        System.assert(pluginErrorOneOf54.equals(pluginErrorOneOf53));
        System.assert(pluginErrorOneOf53.equals(pluginErrorOneOf53));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPluginErrorOneOf5 pluginErrorOneOf51 = OASPluginErrorOneOf5.getExample();
        OASPluginErrorOneOf5 pluginErrorOneOf52 = OASPluginErrorOneOf5.getExample();
        OASPluginErrorOneOf5 pluginErrorOneOf53 = new OASPluginErrorOneOf5();
        OASPluginErrorOneOf5 pluginErrorOneOf54 = new OASPluginErrorOneOf5();

        System.assert(pluginErrorOneOf51.equals(pluginErrorOneOf52));
        System.assert(pluginErrorOneOf52.equals(pluginErrorOneOf51));
        System.assert(pluginErrorOneOf53.equals(pluginErrorOneOf54));
        System.assert(pluginErrorOneOf54.equals(pluginErrorOneOf53));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPluginErrorOneOf5 pluginErrorOneOf51 = OASPluginErrorOneOf5.getExample();
        OASPluginErrorOneOf5 pluginErrorOneOf52 = new OASPluginErrorOneOf5();

        System.assertEquals(false, pluginErrorOneOf51.equals('foo'));
        System.assertEquals(false, pluginErrorOneOf52.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPluginErrorOneOf5 pluginErrorOneOf51 = OASPluginErrorOneOf5.getExample();
        OASPluginErrorOneOf5 pluginErrorOneOf52 = new OASPluginErrorOneOf5();
        OASPluginErrorOneOf5 pluginErrorOneOf53;

        System.assertEquals(false, pluginErrorOneOf51.equals(pluginErrorOneOf53));
        System.assertEquals(false, pluginErrorOneOf52.equals(pluginErrorOneOf53));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPluginErrorOneOf5 pluginErrorOneOf51 = OASPluginErrorOneOf5.getExample();
        OASPluginErrorOneOf5 pluginErrorOneOf52 = new OASPluginErrorOneOf5();

        System.assertEquals(pluginErrorOneOf51.hashCode(), pluginErrorOneOf51.hashCode());
        System.assertEquals(pluginErrorOneOf52.hashCode(), pluginErrorOneOf52.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPluginErrorOneOf5 pluginErrorOneOf51 = OASPluginErrorOneOf5.getExample();
        OASPluginErrorOneOf5 pluginErrorOneOf52 = OASPluginErrorOneOf5.getExample();
        OASPluginErrorOneOf5 pluginErrorOneOf53 = new OASPluginErrorOneOf5();
        OASPluginErrorOneOf5 pluginErrorOneOf54 = new OASPluginErrorOneOf5();

        System.assert(pluginErrorOneOf51.equals(pluginErrorOneOf52));
        System.assert(pluginErrorOneOf53.equals(pluginErrorOneOf54));
        System.assertEquals(pluginErrorOneOf51.hashCode(), pluginErrorOneOf52.hashCode());
        System.assertEquals(pluginErrorOneOf53.hashCode(), pluginErrorOneOf54.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPluginErrorOneOf5 pluginErrorOneOf5 = new OASPluginErrorOneOf5();
        Map<String, String> x-property-mappings = pluginErrorOneOf5.getx-property-mappings();
        System.assertEquals('validationError', x-property-mappings.get('ValidationError'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPluginErrorOneOf5 pluginErrorOneOf5 = new OASPluginErrorOneOf5();
        System.assertEquals(new List<Object>(), pluginErrorOneOf5.validationError);
    }
}
