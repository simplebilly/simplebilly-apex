@isTest
private class OASPlatformInfoTest {
    @isTest
    private static void equalsSameInstance() {
        OASPlatformInfo platformInfo1 = OASPlatformInfo.getExample();
        OASPlatformInfo platformInfo2 = platformInfo1;
        OASPlatformInfo platformInfo3 = new OASPlatformInfo();
        OASPlatformInfo platformInfo4 = platformInfo3;

        System.assert(platformInfo1.equals(platformInfo2));
        System.assert(platformInfo2.equals(platformInfo1));
        System.assert(platformInfo1.equals(platformInfo1));
        System.assert(platformInfo3.equals(platformInfo4));
        System.assert(platformInfo4.equals(platformInfo3));
        System.assert(platformInfo3.equals(platformInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPlatformInfo platformInfo1 = OASPlatformInfo.getExample();
        OASPlatformInfo platformInfo2 = OASPlatformInfo.getExample();
        OASPlatformInfo platformInfo3 = new OASPlatformInfo();
        OASPlatformInfo platformInfo4 = new OASPlatformInfo();

        System.assert(platformInfo1.equals(platformInfo2));
        System.assert(platformInfo2.equals(platformInfo1));
        System.assert(platformInfo3.equals(platformInfo4));
        System.assert(platformInfo4.equals(platformInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPlatformInfo platformInfo1 = OASPlatformInfo.getExample();
        OASPlatformInfo platformInfo2 = new OASPlatformInfo();

        System.assertEquals(false, platformInfo1.equals('foo'));
        System.assertEquals(false, platformInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPlatformInfo platformInfo1 = OASPlatformInfo.getExample();
        OASPlatformInfo platformInfo2 = new OASPlatformInfo();
        OASPlatformInfo platformInfo3;

        System.assertEquals(false, platformInfo1.equals(platformInfo3));
        System.assertEquals(false, platformInfo2.equals(platformInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPlatformInfo platformInfo1 = OASPlatformInfo.getExample();
        OASPlatformInfo platformInfo2 = new OASPlatformInfo();

        System.assertEquals(platformInfo1.hashCode(), platformInfo1.hashCode());
        System.assertEquals(platformInfo2.hashCode(), platformInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPlatformInfo platformInfo1 = OASPlatformInfo.getExample();
        OASPlatformInfo platformInfo2 = OASPlatformInfo.getExample();
        OASPlatformInfo platformInfo3 = new OASPlatformInfo();
        OASPlatformInfo platformInfo4 = new OASPlatformInfo();

        System.assert(platformInfo1.equals(platformInfo2));
        System.assert(platformInfo3.equals(platformInfo4));
        System.assertEquals(platformInfo1.hashCode(), platformInfo2.hashCode());
        System.assertEquals(platformInfo3.hashCode(), platformInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPlatformInfo platformInfo = new OASPlatformInfo();
        Map<String, String> x-property-mappings = platformInfo.getx-property-mappings();
        System.assertEquals('configFieldNames', x-property-mappings.get('config_field_names'));
        System.assertEquals('configFields', x-property-mappings.get('config_fields'));
        System.assertEquals('displayName', x-property-mappings.get('display_name'));
        System.assertEquals('supportedEntities', x-property-mappings.get('supported_entities'));
        System.assertEquals('supportsExport', x-property-mappings.get('supports_export'));
        System.assertEquals('supportsImport', x-property-mappings.get('supports_import'));
        System.assertEquals('supportsOauth', x-property-mappings.get('supports_oauth'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPlatformInfo platformInfo = new OASPlatformInfo();
        System.assertEquals(new List<OASChangelogEntry>(), platformInfo.changelog);
        System.assertEquals(new List<String>(), platformInfo.configFieldNames);
        System.assertEquals(new List<OASConfigFieldInfo>(), platformInfo.configFields);
        System.assertEquals(new List<String>(), platformInfo.supportedEntities);
        System.assertEquals(null, platformInfo.author);
        System.assertEquals(null, platformInfo.displayName);
        System.assertEquals(null, platformInfo.platform);
        System.assertEquals(null, platformInfo.pricing);
        System.assertEquals(null, platformInfo.supportsExport);
        System.assertEquals(null, platformInfo.supportsImport);
        System.assertEquals(null, platformInfo.supportsOauth);
        System.assertEquals(null, platformInfo.version);
    }
}
