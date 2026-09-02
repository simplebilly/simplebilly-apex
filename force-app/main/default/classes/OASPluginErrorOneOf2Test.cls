@isTest
private class OASPluginErrorOneOf2Test {
    @isTest
    private static void equalsSameInstance() {
        OASPluginErrorOneOf2 pluginErrorOneOf21 = OASPluginErrorOneOf2.getExample();
        OASPluginErrorOneOf2 pluginErrorOneOf22 = pluginErrorOneOf21;
        OASPluginErrorOneOf2 pluginErrorOneOf23 = new OASPluginErrorOneOf2();
        OASPluginErrorOneOf2 pluginErrorOneOf24 = pluginErrorOneOf23;

        System.assert(pluginErrorOneOf21.equals(pluginErrorOneOf22));
        System.assert(pluginErrorOneOf22.equals(pluginErrorOneOf21));
        System.assert(pluginErrorOneOf21.equals(pluginErrorOneOf21));
        System.assert(pluginErrorOneOf23.equals(pluginErrorOneOf24));
        System.assert(pluginErrorOneOf24.equals(pluginErrorOneOf23));
        System.assert(pluginErrorOneOf23.equals(pluginErrorOneOf23));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPluginErrorOneOf2 pluginErrorOneOf21 = OASPluginErrorOneOf2.getExample();
        OASPluginErrorOneOf2 pluginErrorOneOf22 = OASPluginErrorOneOf2.getExample();
        OASPluginErrorOneOf2 pluginErrorOneOf23 = new OASPluginErrorOneOf2();
        OASPluginErrorOneOf2 pluginErrorOneOf24 = new OASPluginErrorOneOf2();

        System.assert(pluginErrorOneOf21.equals(pluginErrorOneOf22));
        System.assert(pluginErrorOneOf22.equals(pluginErrorOneOf21));
        System.assert(pluginErrorOneOf23.equals(pluginErrorOneOf24));
        System.assert(pluginErrorOneOf24.equals(pluginErrorOneOf23));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPluginErrorOneOf2 pluginErrorOneOf21 = OASPluginErrorOneOf2.getExample();
        OASPluginErrorOneOf2 pluginErrorOneOf22 = new OASPluginErrorOneOf2();

        System.assertEquals(false, pluginErrorOneOf21.equals('foo'));
        System.assertEquals(false, pluginErrorOneOf22.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPluginErrorOneOf2 pluginErrorOneOf21 = OASPluginErrorOneOf2.getExample();
        OASPluginErrorOneOf2 pluginErrorOneOf22 = new OASPluginErrorOneOf2();
        OASPluginErrorOneOf2 pluginErrorOneOf23;

        System.assertEquals(false, pluginErrorOneOf21.equals(pluginErrorOneOf23));
        System.assertEquals(false, pluginErrorOneOf22.equals(pluginErrorOneOf23));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPluginErrorOneOf2 pluginErrorOneOf21 = OASPluginErrorOneOf2.getExample();
        OASPluginErrorOneOf2 pluginErrorOneOf22 = new OASPluginErrorOneOf2();

        System.assertEquals(pluginErrorOneOf21.hashCode(), pluginErrorOneOf21.hashCode());
        System.assertEquals(pluginErrorOneOf22.hashCode(), pluginErrorOneOf22.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPluginErrorOneOf2 pluginErrorOneOf21 = OASPluginErrorOneOf2.getExample();
        OASPluginErrorOneOf2 pluginErrorOneOf22 = OASPluginErrorOneOf2.getExample();
        OASPluginErrorOneOf2 pluginErrorOneOf23 = new OASPluginErrorOneOf2();
        OASPluginErrorOneOf2 pluginErrorOneOf24 = new OASPluginErrorOneOf2();

        System.assert(pluginErrorOneOf21.equals(pluginErrorOneOf22));
        System.assert(pluginErrorOneOf23.equals(pluginErrorOneOf24));
        System.assertEquals(pluginErrorOneOf21.hashCode(), pluginErrorOneOf22.hashCode());
        System.assertEquals(pluginErrorOneOf23.hashCode(), pluginErrorOneOf24.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPluginErrorOneOf2 pluginErrorOneOf2 = new OASPluginErrorOneOf2();
        Map<String, String> x-property-mappings = pluginErrorOneOf2.getx-property-mappings();
        System.assertEquals('unauthorized', x-property-mappings.get('Unauthorized'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPluginErrorOneOf2 pluginErrorOneOf2 = new OASPluginErrorOneOf2();
        System.assertEquals(new List<Object>(), pluginErrorOneOf2.unauthorized);
    }
}
