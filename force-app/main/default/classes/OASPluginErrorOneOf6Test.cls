@isTest
private class OASPluginErrorOneOf6Test {
    @isTest
    private static void equalsSameInstance() {
        OASPluginErrorOneOf6 pluginErrorOneOf61 = OASPluginErrorOneOf6.getExample();
        OASPluginErrorOneOf6 pluginErrorOneOf62 = pluginErrorOneOf61;
        OASPluginErrorOneOf6 pluginErrorOneOf63 = new OASPluginErrorOneOf6();
        OASPluginErrorOneOf6 pluginErrorOneOf64 = pluginErrorOneOf63;

        System.assert(pluginErrorOneOf61.equals(pluginErrorOneOf62));
        System.assert(pluginErrorOneOf62.equals(pluginErrorOneOf61));
        System.assert(pluginErrorOneOf61.equals(pluginErrorOneOf61));
        System.assert(pluginErrorOneOf63.equals(pluginErrorOneOf64));
        System.assert(pluginErrorOneOf64.equals(pluginErrorOneOf63));
        System.assert(pluginErrorOneOf63.equals(pluginErrorOneOf63));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPluginErrorOneOf6 pluginErrorOneOf61 = OASPluginErrorOneOf6.getExample();
        OASPluginErrorOneOf6 pluginErrorOneOf62 = OASPluginErrorOneOf6.getExample();
        OASPluginErrorOneOf6 pluginErrorOneOf63 = new OASPluginErrorOneOf6();
        OASPluginErrorOneOf6 pluginErrorOneOf64 = new OASPluginErrorOneOf6();

        System.assert(pluginErrorOneOf61.equals(pluginErrorOneOf62));
        System.assert(pluginErrorOneOf62.equals(pluginErrorOneOf61));
        System.assert(pluginErrorOneOf63.equals(pluginErrorOneOf64));
        System.assert(pluginErrorOneOf64.equals(pluginErrorOneOf63));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPluginErrorOneOf6 pluginErrorOneOf61 = OASPluginErrorOneOf6.getExample();
        OASPluginErrorOneOf6 pluginErrorOneOf62 = new OASPluginErrorOneOf6();

        System.assertEquals(false, pluginErrorOneOf61.equals('foo'));
        System.assertEquals(false, pluginErrorOneOf62.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPluginErrorOneOf6 pluginErrorOneOf61 = OASPluginErrorOneOf6.getExample();
        OASPluginErrorOneOf6 pluginErrorOneOf62 = new OASPluginErrorOneOf6();
        OASPluginErrorOneOf6 pluginErrorOneOf63;

        System.assertEquals(false, pluginErrorOneOf61.equals(pluginErrorOneOf63));
        System.assertEquals(false, pluginErrorOneOf62.equals(pluginErrorOneOf63));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPluginErrorOneOf6 pluginErrorOneOf61 = OASPluginErrorOneOf6.getExample();
        OASPluginErrorOneOf6 pluginErrorOneOf62 = new OASPluginErrorOneOf6();

        System.assertEquals(pluginErrorOneOf61.hashCode(), pluginErrorOneOf61.hashCode());
        System.assertEquals(pluginErrorOneOf62.hashCode(), pluginErrorOneOf62.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPluginErrorOneOf6 pluginErrorOneOf61 = OASPluginErrorOneOf6.getExample();
        OASPluginErrorOneOf6 pluginErrorOneOf62 = OASPluginErrorOneOf6.getExample();
        OASPluginErrorOneOf6 pluginErrorOneOf63 = new OASPluginErrorOneOf6();
        OASPluginErrorOneOf6 pluginErrorOneOf64 = new OASPluginErrorOneOf6();

        System.assert(pluginErrorOneOf61.equals(pluginErrorOneOf62));
        System.assert(pluginErrorOneOf63.equals(pluginErrorOneOf64));
        System.assertEquals(pluginErrorOneOf61.hashCode(), pluginErrorOneOf62.hashCode());
        System.assertEquals(pluginErrorOneOf63.hashCode(), pluginErrorOneOf64.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPluginErrorOneOf6 pluginErrorOneOf6 = new OASPluginErrorOneOf6();
        Map<String, String> x-property-mappings = pluginErrorOneOf6.getx-property-mappings();
        System.assertEquals('notImplemented', x-property-mappings.get('NotImplemented'));
    }
}
