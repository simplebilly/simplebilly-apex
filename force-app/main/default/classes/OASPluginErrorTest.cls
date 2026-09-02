@isTest
private class OASPluginErrorTest {
    @isTest
    private static void equalsSameInstance() {
        OASPluginError pluginError1 = OASPluginError.getExample();
        OASPluginError pluginError2 = pluginError1;
        OASPluginError pluginError3 = new OASPluginError();
        OASPluginError pluginError4 = pluginError3;

        System.assert(pluginError1.equals(pluginError2));
        System.assert(pluginError2.equals(pluginError1));
        System.assert(pluginError1.equals(pluginError1));
        System.assert(pluginError3.equals(pluginError4));
        System.assert(pluginError4.equals(pluginError3));
        System.assert(pluginError3.equals(pluginError3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPluginError pluginError1 = OASPluginError.getExample();
        OASPluginError pluginError2 = OASPluginError.getExample();
        OASPluginError pluginError3 = new OASPluginError();
        OASPluginError pluginError4 = new OASPluginError();

        System.assert(pluginError1.equals(pluginError2));
        System.assert(pluginError2.equals(pluginError1));
        System.assert(pluginError3.equals(pluginError4));
        System.assert(pluginError4.equals(pluginError3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPluginError pluginError1 = OASPluginError.getExample();
        OASPluginError pluginError2 = new OASPluginError();

        System.assertEquals(false, pluginError1.equals('foo'));
        System.assertEquals(false, pluginError2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPluginError pluginError1 = OASPluginError.getExample();
        OASPluginError pluginError2 = new OASPluginError();
        OASPluginError pluginError3;

        System.assertEquals(false, pluginError1.equals(pluginError3));
        System.assertEquals(false, pluginError2.equals(pluginError3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPluginError pluginError1 = OASPluginError.getExample();
        OASPluginError pluginError2 = new OASPluginError();

        System.assertEquals(pluginError1.hashCode(), pluginError1.hashCode());
        System.assertEquals(pluginError2.hashCode(), pluginError2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPluginError pluginError1 = OASPluginError.getExample();
        OASPluginError pluginError2 = OASPluginError.getExample();
        OASPluginError pluginError3 = new OASPluginError();
        OASPluginError pluginError4 = new OASPluginError();

        System.assert(pluginError1.equals(pluginError2));
        System.assert(pluginError3.equals(pluginError4));
        System.assertEquals(pluginError1.hashCode(), pluginError2.hashCode());
        System.assertEquals(pluginError3.hashCode(), pluginError4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPluginError pluginError = new OASPluginError();
        Map<String, String> x-property-mappings = pluginError.getx-property-mappings();
        System.assertEquals('badRequest', x-property-mappings.get('BadRequest'));
        System.assertEquals('notFound', x-property-mappings.get('NotFound'));
        System.assertEquals('unauthorized', x-property-mappings.get('Unauthorized'));
        System.assertEquals('internalError', x-property-mappings.get('InternalError'));
        System.assertEquals('databaseError', x-property-mappings.get('DatabaseError'));
        System.assertEquals('validationError', x-property-mappings.get('ValidationError'));
        System.assertEquals('notImplemented', x-property-mappings.get('NotImplemented'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPluginError pluginError = new OASPluginError();
        System.assertEquals(new List<Object>(), pluginError.badRequest);
        System.assertEquals(new List<Object>(), pluginError.notFound);
        System.assertEquals(new List<Object>(), pluginError.unauthorized);
        System.assertEquals(new List<Object>(), pluginError.internalError);
        System.assertEquals(new List<Object>(), pluginError.databaseError);
        System.assertEquals(new List<Object>(), pluginError.validationError);
        System.assertEquals(null, pluginError.notImplemented);
    }
}
