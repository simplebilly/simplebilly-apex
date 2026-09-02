@isTest
private class OASPluginErrorOneOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASPluginErrorOneOf pluginErrorOneOf1 = OASPluginErrorOneOf.getExample();
        OASPluginErrorOneOf pluginErrorOneOf2 = pluginErrorOneOf1;
        OASPluginErrorOneOf pluginErrorOneOf3 = new OASPluginErrorOneOf();
        OASPluginErrorOneOf pluginErrorOneOf4 = pluginErrorOneOf3;

        System.assert(pluginErrorOneOf1.equals(pluginErrorOneOf2));
        System.assert(pluginErrorOneOf2.equals(pluginErrorOneOf1));
        System.assert(pluginErrorOneOf1.equals(pluginErrorOneOf1));
        System.assert(pluginErrorOneOf3.equals(pluginErrorOneOf4));
        System.assert(pluginErrorOneOf4.equals(pluginErrorOneOf3));
        System.assert(pluginErrorOneOf3.equals(pluginErrorOneOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPluginErrorOneOf pluginErrorOneOf1 = OASPluginErrorOneOf.getExample();
        OASPluginErrorOneOf pluginErrorOneOf2 = OASPluginErrorOneOf.getExample();
        OASPluginErrorOneOf pluginErrorOneOf3 = new OASPluginErrorOneOf();
        OASPluginErrorOneOf pluginErrorOneOf4 = new OASPluginErrorOneOf();

        System.assert(pluginErrorOneOf1.equals(pluginErrorOneOf2));
        System.assert(pluginErrorOneOf2.equals(pluginErrorOneOf1));
        System.assert(pluginErrorOneOf3.equals(pluginErrorOneOf4));
        System.assert(pluginErrorOneOf4.equals(pluginErrorOneOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPluginErrorOneOf pluginErrorOneOf1 = OASPluginErrorOneOf.getExample();
        OASPluginErrorOneOf pluginErrorOneOf2 = new OASPluginErrorOneOf();

        System.assertEquals(false, pluginErrorOneOf1.equals('foo'));
        System.assertEquals(false, pluginErrorOneOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPluginErrorOneOf pluginErrorOneOf1 = OASPluginErrorOneOf.getExample();
        OASPluginErrorOneOf pluginErrorOneOf2 = new OASPluginErrorOneOf();
        OASPluginErrorOneOf pluginErrorOneOf3;

        System.assertEquals(false, pluginErrorOneOf1.equals(pluginErrorOneOf3));
        System.assertEquals(false, pluginErrorOneOf2.equals(pluginErrorOneOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPluginErrorOneOf pluginErrorOneOf1 = OASPluginErrorOneOf.getExample();
        OASPluginErrorOneOf pluginErrorOneOf2 = new OASPluginErrorOneOf();

        System.assertEquals(pluginErrorOneOf1.hashCode(), pluginErrorOneOf1.hashCode());
        System.assertEquals(pluginErrorOneOf2.hashCode(), pluginErrorOneOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPluginErrorOneOf pluginErrorOneOf1 = OASPluginErrorOneOf.getExample();
        OASPluginErrorOneOf pluginErrorOneOf2 = OASPluginErrorOneOf.getExample();
        OASPluginErrorOneOf pluginErrorOneOf3 = new OASPluginErrorOneOf();
        OASPluginErrorOneOf pluginErrorOneOf4 = new OASPluginErrorOneOf();

        System.assert(pluginErrorOneOf1.equals(pluginErrorOneOf2));
        System.assert(pluginErrorOneOf3.equals(pluginErrorOneOf4));
        System.assertEquals(pluginErrorOneOf1.hashCode(), pluginErrorOneOf2.hashCode());
        System.assertEquals(pluginErrorOneOf3.hashCode(), pluginErrorOneOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPluginErrorOneOf pluginErrorOneOf = new OASPluginErrorOneOf();
        Map<String, String> x-property-mappings = pluginErrorOneOf.getx-property-mappings();
        System.assertEquals('badRequest', x-property-mappings.get('BadRequest'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPluginErrorOneOf pluginErrorOneOf = new OASPluginErrorOneOf();
        System.assertEquals(new List<Object>(), pluginErrorOneOf.badRequest);
    }
}
