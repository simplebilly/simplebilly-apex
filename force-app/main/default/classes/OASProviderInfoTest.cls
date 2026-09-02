@isTest
private class OASProviderInfoTest {
    @isTest
    private static void equalsSameInstance() {
        OASProviderInfo providerInfo1 = OASProviderInfo.getExample();
        OASProviderInfo providerInfo2 = providerInfo1;
        OASProviderInfo providerInfo3 = new OASProviderInfo();
        OASProviderInfo providerInfo4 = providerInfo3;

        System.assert(providerInfo1.equals(providerInfo2));
        System.assert(providerInfo2.equals(providerInfo1));
        System.assert(providerInfo1.equals(providerInfo1));
        System.assert(providerInfo3.equals(providerInfo4));
        System.assert(providerInfo4.equals(providerInfo3));
        System.assert(providerInfo3.equals(providerInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProviderInfo providerInfo1 = OASProviderInfo.getExample();
        OASProviderInfo providerInfo2 = OASProviderInfo.getExample();
        OASProviderInfo providerInfo3 = new OASProviderInfo();
        OASProviderInfo providerInfo4 = new OASProviderInfo();

        System.assert(providerInfo1.equals(providerInfo2));
        System.assert(providerInfo2.equals(providerInfo1));
        System.assert(providerInfo3.equals(providerInfo4));
        System.assert(providerInfo4.equals(providerInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProviderInfo providerInfo1 = OASProviderInfo.getExample();
        OASProviderInfo providerInfo2 = new OASProviderInfo();

        System.assertEquals(false, providerInfo1.equals('foo'));
        System.assertEquals(false, providerInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProviderInfo providerInfo1 = OASProviderInfo.getExample();
        OASProviderInfo providerInfo2 = new OASProviderInfo();
        OASProviderInfo providerInfo3;

        System.assertEquals(false, providerInfo1.equals(providerInfo3));
        System.assertEquals(false, providerInfo2.equals(providerInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProviderInfo providerInfo1 = OASProviderInfo.getExample();
        OASProviderInfo providerInfo2 = new OASProviderInfo();

        System.assertEquals(providerInfo1.hashCode(), providerInfo1.hashCode());
        System.assertEquals(providerInfo2.hashCode(), providerInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProviderInfo providerInfo1 = OASProviderInfo.getExample();
        OASProviderInfo providerInfo2 = OASProviderInfo.getExample();
        OASProviderInfo providerInfo3 = new OASProviderInfo();
        OASProviderInfo providerInfo4 = new OASProviderInfo();

        System.assert(providerInfo1.equals(providerInfo2));
        System.assert(providerInfo3.equals(providerInfo4));
        System.assertEquals(providerInfo1.hashCode(), providerInfo2.hashCode());
        System.assertEquals(providerInfo3.hashCode(), providerInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASProviderInfo providerInfo = new OASProviderInfo();
        Map<String, String> x-property-mappings = providerInfo.getx-property-mappings();
        System.assertEquals('displayName', x-property-mappings.get('display_name'));
        System.assertEquals('requiresApiKey', x-property-mappings.get('requires_api_key'));
        System.assertEquals('supportsLabelCreation', x-property-mappings.get('supports_label_creation'));
        System.assertEquals('supportsRateEstimation', x-property-mappings.get('supports_rate_estimation'));
        System.assertEquals('supportsTracking', x-property-mappings.get('supports_tracking'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASProviderInfo providerInfo = new OASProviderInfo();
        System.assertEquals(new List<String>(), providerInfo.services);
        System.assertEquals(null, providerInfo.displayName);
        System.assertEquals(null, providerInfo.name);
        System.assertEquals(null, providerInfo.requiresApiKey);
        System.assertEquals(null, providerInfo.supportsLabelCreation);
        System.assertEquals(null, providerInfo.supportsRateEstimation);
        System.assertEquals(null, providerInfo.supportsTracking);
    }
}
