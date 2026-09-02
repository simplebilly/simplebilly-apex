@isTest
private class OASApiResponseVecUserTenantInfoDataITest {
    @isTest
    private static void equalsSameInstance() {
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner1 = OASApiResponseVecUserTenantInfoDataI.getExample();
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner2 = apiResponseVecUserTenantInfoDataInner1;
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner3 = new OASApiResponseVecUserTenantInfoDataI();
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner4 = apiResponseVecUserTenantInfoDataInner3;

        System.assert(apiResponseVecUserTenantInfoDataInner1.equals(apiResponseVecUserTenantInfoDataInner2));
        System.assert(apiResponseVecUserTenantInfoDataInner2.equals(apiResponseVecUserTenantInfoDataInner1));
        System.assert(apiResponseVecUserTenantInfoDataInner1.equals(apiResponseVecUserTenantInfoDataInner1));
        System.assert(apiResponseVecUserTenantInfoDataInner3.equals(apiResponseVecUserTenantInfoDataInner4));
        System.assert(apiResponseVecUserTenantInfoDataInner4.equals(apiResponseVecUserTenantInfoDataInner3));
        System.assert(apiResponseVecUserTenantInfoDataInner3.equals(apiResponseVecUserTenantInfoDataInner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner1 = OASApiResponseVecUserTenantInfoDataI.getExample();
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner2 = OASApiResponseVecUserTenantInfoDataI.getExample();
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner3 = new OASApiResponseVecUserTenantInfoDataI();
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner4 = new OASApiResponseVecUserTenantInfoDataI();

        System.assert(apiResponseVecUserTenantInfoDataInner1.equals(apiResponseVecUserTenantInfoDataInner2));
        System.assert(apiResponseVecUserTenantInfoDataInner2.equals(apiResponseVecUserTenantInfoDataInner1));
        System.assert(apiResponseVecUserTenantInfoDataInner3.equals(apiResponseVecUserTenantInfoDataInner4));
        System.assert(apiResponseVecUserTenantInfoDataInner4.equals(apiResponseVecUserTenantInfoDataInner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner1 = OASApiResponseVecUserTenantInfoDataI.getExample();
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner2 = new OASApiResponseVecUserTenantInfoDataI();

        System.assertEquals(false, apiResponseVecUserTenantInfoDataInner1.equals('foo'));
        System.assertEquals(false, apiResponseVecUserTenantInfoDataInner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner1 = OASApiResponseVecUserTenantInfoDataI.getExample();
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner2 = new OASApiResponseVecUserTenantInfoDataI();
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner3;

        System.assertEquals(false, apiResponseVecUserTenantInfoDataInner1.equals(apiResponseVecUserTenantInfoDataInner3));
        System.assertEquals(false, apiResponseVecUserTenantInfoDataInner2.equals(apiResponseVecUserTenantInfoDataInner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner1 = OASApiResponseVecUserTenantInfoDataI.getExample();
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner2 = new OASApiResponseVecUserTenantInfoDataI();

        System.assertEquals(apiResponseVecUserTenantInfoDataInner1.hashCode(), apiResponseVecUserTenantInfoDataInner1.hashCode());
        System.assertEquals(apiResponseVecUserTenantInfoDataInner2.hashCode(), apiResponseVecUserTenantInfoDataInner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner1 = OASApiResponseVecUserTenantInfoDataI.getExample();
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner2 = OASApiResponseVecUserTenantInfoDataI.getExample();
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner3 = new OASApiResponseVecUserTenantInfoDataI();
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner4 = new OASApiResponseVecUserTenantInfoDataI();

        System.assert(apiResponseVecUserTenantInfoDataInner1.equals(apiResponseVecUserTenantInfoDataInner2));
        System.assert(apiResponseVecUserTenantInfoDataInner3.equals(apiResponseVecUserTenantInfoDataInner4));
        System.assertEquals(apiResponseVecUserTenantInfoDataInner1.hashCode(), apiResponseVecUserTenantInfoDataInner2.hashCode());
        System.assertEquals(apiResponseVecUserTenantInfoDataInner3.hashCode(), apiResponseVecUserTenantInfoDataInner4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASApiResponseVecUserTenantInfoDataI apiResponseVecUserTenantInfoDataInner = new OASApiResponseVecUserTenantInfoDataI();
        Map<String, String> x-property-mappings = apiResponseVecUserTenantInfoDataInner.getx-property-mappings();
        System.assertEquals('customDomain', x-property-mappings.get('custom_domain'));
        System.assertEquals('tenantId', x-property-mappings.get('tenant_id'));
        System.assertEquals('tenantName', x-property-mappings.get('tenant_name'));
    }
}
