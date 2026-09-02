@isTest
private class OASPluginErrorOneOf3Test {
    @isTest
    private static void equalsSameInstance() {
        OASPluginErrorOneOf3 pluginErrorOneOf31 = OASPluginErrorOneOf3.getExample();
        OASPluginErrorOneOf3 pluginErrorOneOf32 = pluginErrorOneOf31;
        OASPluginErrorOneOf3 pluginErrorOneOf33 = new OASPluginErrorOneOf3();
        OASPluginErrorOneOf3 pluginErrorOneOf34 = pluginErrorOneOf33;

        System.assert(pluginErrorOneOf31.equals(pluginErrorOneOf32));
        System.assert(pluginErrorOneOf32.equals(pluginErrorOneOf31));
        System.assert(pluginErrorOneOf31.equals(pluginErrorOneOf31));
        System.assert(pluginErrorOneOf33.equals(pluginErrorOneOf34));
        System.assert(pluginErrorOneOf34.equals(pluginErrorOneOf33));
        System.assert(pluginErrorOneOf33.equals(pluginErrorOneOf33));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPluginErrorOneOf3 pluginErrorOneOf31 = OASPluginErrorOneOf3.getExample();
        OASPluginErrorOneOf3 pluginErrorOneOf32 = OASPluginErrorOneOf3.getExample();
        OASPluginErrorOneOf3 pluginErrorOneOf33 = new OASPluginErrorOneOf3();
        OASPluginErrorOneOf3 pluginErrorOneOf34 = new OASPluginErrorOneOf3();

        System.assert(pluginErrorOneOf31.equals(pluginErrorOneOf32));
        System.assert(pluginErrorOneOf32.equals(pluginErrorOneOf31));
        System.assert(pluginErrorOneOf33.equals(pluginErrorOneOf34));
        System.assert(pluginErrorOneOf34.equals(pluginErrorOneOf33));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPluginErrorOneOf3 pluginErrorOneOf31 = OASPluginErrorOneOf3.getExample();
        OASPluginErrorOneOf3 pluginErrorOneOf32 = new OASPluginErrorOneOf3();

        System.assertEquals(false, pluginErrorOneOf31.equals('foo'));
        System.assertEquals(false, pluginErrorOneOf32.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPluginErrorOneOf3 pluginErrorOneOf31 = OASPluginErrorOneOf3.getExample();
        OASPluginErrorOneOf3 pluginErrorOneOf32 = new OASPluginErrorOneOf3();
        OASPluginErrorOneOf3 pluginErrorOneOf33;

        System.assertEquals(false, pluginErrorOneOf31.equals(pluginErrorOneOf33));
        System.assertEquals(false, pluginErrorOneOf32.equals(pluginErrorOneOf33));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPluginErrorOneOf3 pluginErrorOneOf31 = OASPluginErrorOneOf3.getExample();
        OASPluginErrorOneOf3 pluginErrorOneOf32 = new OASPluginErrorOneOf3();

        System.assertEquals(pluginErrorOneOf31.hashCode(), pluginErrorOneOf31.hashCode());
        System.assertEquals(pluginErrorOneOf32.hashCode(), pluginErrorOneOf32.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPluginErrorOneOf3 pluginErrorOneOf31 = OASPluginErrorOneOf3.getExample();
        OASPluginErrorOneOf3 pluginErrorOneOf32 = OASPluginErrorOneOf3.getExample();
        OASPluginErrorOneOf3 pluginErrorOneOf33 = new OASPluginErrorOneOf3();
        OASPluginErrorOneOf3 pluginErrorOneOf34 = new OASPluginErrorOneOf3();

        System.assert(pluginErrorOneOf31.equals(pluginErrorOneOf32));
        System.assert(pluginErrorOneOf33.equals(pluginErrorOneOf34));
        System.assertEquals(pluginErrorOneOf31.hashCode(), pluginErrorOneOf32.hashCode());
        System.assertEquals(pluginErrorOneOf33.hashCode(), pluginErrorOneOf34.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPluginErrorOneOf3 pluginErrorOneOf3 = new OASPluginErrorOneOf3();
        Map<String, String> x-property-mappings = pluginErrorOneOf3.getx-property-mappings();
        System.assertEquals('internalError', x-property-mappings.get('InternalError'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPluginErrorOneOf3 pluginErrorOneOf3 = new OASPluginErrorOneOf3();
        System.assertEquals(new List<Object>(), pluginErrorOneOf3.internalError);
    }
}
