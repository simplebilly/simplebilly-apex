@isTest
private class OASPluginErrorOneOf4Test {
    @isTest
    private static void equalsSameInstance() {
        OASPluginErrorOneOf4 pluginErrorOneOf41 = OASPluginErrorOneOf4.getExample();
        OASPluginErrorOneOf4 pluginErrorOneOf42 = pluginErrorOneOf41;
        OASPluginErrorOneOf4 pluginErrorOneOf43 = new OASPluginErrorOneOf4();
        OASPluginErrorOneOf4 pluginErrorOneOf44 = pluginErrorOneOf43;

        System.assert(pluginErrorOneOf41.equals(pluginErrorOneOf42));
        System.assert(pluginErrorOneOf42.equals(pluginErrorOneOf41));
        System.assert(pluginErrorOneOf41.equals(pluginErrorOneOf41));
        System.assert(pluginErrorOneOf43.equals(pluginErrorOneOf44));
        System.assert(pluginErrorOneOf44.equals(pluginErrorOneOf43));
        System.assert(pluginErrorOneOf43.equals(pluginErrorOneOf43));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPluginErrorOneOf4 pluginErrorOneOf41 = OASPluginErrorOneOf4.getExample();
        OASPluginErrorOneOf4 pluginErrorOneOf42 = OASPluginErrorOneOf4.getExample();
        OASPluginErrorOneOf4 pluginErrorOneOf43 = new OASPluginErrorOneOf4();
        OASPluginErrorOneOf4 pluginErrorOneOf44 = new OASPluginErrorOneOf4();

        System.assert(pluginErrorOneOf41.equals(pluginErrorOneOf42));
        System.assert(pluginErrorOneOf42.equals(pluginErrorOneOf41));
        System.assert(pluginErrorOneOf43.equals(pluginErrorOneOf44));
        System.assert(pluginErrorOneOf44.equals(pluginErrorOneOf43));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPluginErrorOneOf4 pluginErrorOneOf41 = OASPluginErrorOneOf4.getExample();
        OASPluginErrorOneOf4 pluginErrorOneOf42 = new OASPluginErrorOneOf4();

        System.assertEquals(false, pluginErrorOneOf41.equals('foo'));
        System.assertEquals(false, pluginErrorOneOf42.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPluginErrorOneOf4 pluginErrorOneOf41 = OASPluginErrorOneOf4.getExample();
        OASPluginErrorOneOf4 pluginErrorOneOf42 = new OASPluginErrorOneOf4();
        OASPluginErrorOneOf4 pluginErrorOneOf43;

        System.assertEquals(false, pluginErrorOneOf41.equals(pluginErrorOneOf43));
        System.assertEquals(false, pluginErrorOneOf42.equals(pluginErrorOneOf43));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPluginErrorOneOf4 pluginErrorOneOf41 = OASPluginErrorOneOf4.getExample();
        OASPluginErrorOneOf4 pluginErrorOneOf42 = new OASPluginErrorOneOf4();

        System.assertEquals(pluginErrorOneOf41.hashCode(), pluginErrorOneOf41.hashCode());
        System.assertEquals(pluginErrorOneOf42.hashCode(), pluginErrorOneOf42.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPluginErrorOneOf4 pluginErrorOneOf41 = OASPluginErrorOneOf4.getExample();
        OASPluginErrorOneOf4 pluginErrorOneOf42 = OASPluginErrorOneOf4.getExample();
        OASPluginErrorOneOf4 pluginErrorOneOf43 = new OASPluginErrorOneOf4();
        OASPluginErrorOneOf4 pluginErrorOneOf44 = new OASPluginErrorOneOf4();

        System.assert(pluginErrorOneOf41.equals(pluginErrorOneOf42));
        System.assert(pluginErrorOneOf43.equals(pluginErrorOneOf44));
        System.assertEquals(pluginErrorOneOf41.hashCode(), pluginErrorOneOf42.hashCode());
        System.assertEquals(pluginErrorOneOf43.hashCode(), pluginErrorOneOf44.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPluginErrorOneOf4 pluginErrorOneOf4 = new OASPluginErrorOneOf4();
        Map<String, String> x-property-mappings = pluginErrorOneOf4.getx-property-mappings();
        System.assertEquals('databaseError', x-property-mappings.get('DatabaseError'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPluginErrorOneOf4 pluginErrorOneOf4 = new OASPluginErrorOneOf4();
        System.assertEquals(new List<Object>(), pluginErrorOneOf4.databaseError);
    }
}
