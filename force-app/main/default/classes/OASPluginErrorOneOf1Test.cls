@isTest
private class OASPluginErrorOneOf1Test {
    @isTest
    private static void equalsSameInstance() {
        OASPluginErrorOneOf1 pluginErrorOneOf11 = OASPluginErrorOneOf1.getExample();
        OASPluginErrorOneOf1 pluginErrorOneOf12 = pluginErrorOneOf11;
        OASPluginErrorOneOf1 pluginErrorOneOf13 = new OASPluginErrorOneOf1();
        OASPluginErrorOneOf1 pluginErrorOneOf14 = pluginErrorOneOf13;

        System.assert(pluginErrorOneOf11.equals(pluginErrorOneOf12));
        System.assert(pluginErrorOneOf12.equals(pluginErrorOneOf11));
        System.assert(pluginErrorOneOf11.equals(pluginErrorOneOf11));
        System.assert(pluginErrorOneOf13.equals(pluginErrorOneOf14));
        System.assert(pluginErrorOneOf14.equals(pluginErrorOneOf13));
        System.assert(pluginErrorOneOf13.equals(pluginErrorOneOf13));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPluginErrorOneOf1 pluginErrorOneOf11 = OASPluginErrorOneOf1.getExample();
        OASPluginErrorOneOf1 pluginErrorOneOf12 = OASPluginErrorOneOf1.getExample();
        OASPluginErrorOneOf1 pluginErrorOneOf13 = new OASPluginErrorOneOf1();
        OASPluginErrorOneOf1 pluginErrorOneOf14 = new OASPluginErrorOneOf1();

        System.assert(pluginErrorOneOf11.equals(pluginErrorOneOf12));
        System.assert(pluginErrorOneOf12.equals(pluginErrorOneOf11));
        System.assert(pluginErrorOneOf13.equals(pluginErrorOneOf14));
        System.assert(pluginErrorOneOf14.equals(pluginErrorOneOf13));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPluginErrorOneOf1 pluginErrorOneOf11 = OASPluginErrorOneOf1.getExample();
        OASPluginErrorOneOf1 pluginErrorOneOf12 = new OASPluginErrorOneOf1();

        System.assertEquals(false, pluginErrorOneOf11.equals('foo'));
        System.assertEquals(false, pluginErrorOneOf12.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPluginErrorOneOf1 pluginErrorOneOf11 = OASPluginErrorOneOf1.getExample();
        OASPluginErrorOneOf1 pluginErrorOneOf12 = new OASPluginErrorOneOf1();
        OASPluginErrorOneOf1 pluginErrorOneOf13;

        System.assertEquals(false, pluginErrorOneOf11.equals(pluginErrorOneOf13));
        System.assertEquals(false, pluginErrorOneOf12.equals(pluginErrorOneOf13));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPluginErrorOneOf1 pluginErrorOneOf11 = OASPluginErrorOneOf1.getExample();
        OASPluginErrorOneOf1 pluginErrorOneOf12 = new OASPluginErrorOneOf1();

        System.assertEquals(pluginErrorOneOf11.hashCode(), pluginErrorOneOf11.hashCode());
        System.assertEquals(pluginErrorOneOf12.hashCode(), pluginErrorOneOf12.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPluginErrorOneOf1 pluginErrorOneOf11 = OASPluginErrorOneOf1.getExample();
        OASPluginErrorOneOf1 pluginErrorOneOf12 = OASPluginErrorOneOf1.getExample();
        OASPluginErrorOneOf1 pluginErrorOneOf13 = new OASPluginErrorOneOf1();
        OASPluginErrorOneOf1 pluginErrorOneOf14 = new OASPluginErrorOneOf1();

        System.assert(pluginErrorOneOf11.equals(pluginErrorOneOf12));
        System.assert(pluginErrorOneOf13.equals(pluginErrorOneOf14));
        System.assertEquals(pluginErrorOneOf11.hashCode(), pluginErrorOneOf12.hashCode());
        System.assertEquals(pluginErrorOneOf13.hashCode(), pluginErrorOneOf14.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPluginErrorOneOf1 pluginErrorOneOf1 = new OASPluginErrorOneOf1();
        Map<String, String> x-property-mappings = pluginErrorOneOf1.getx-property-mappings();
        System.assertEquals('notFound', x-property-mappings.get('NotFound'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPluginErrorOneOf1 pluginErrorOneOf1 = new OASPluginErrorOneOf1();
        System.assertEquals(new List<Object>(), pluginErrorOneOf1.notFound);
    }
}
