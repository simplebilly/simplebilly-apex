@isTest
private class OASUserTenantInfoTest {
    @isTest
    private static void equalsSameInstance() {
        OASUserTenantInfo userTenantInfo1 = OASUserTenantInfo.getExample();
        OASUserTenantInfo userTenantInfo2 = userTenantInfo1;
        OASUserTenantInfo userTenantInfo3 = new OASUserTenantInfo();
        OASUserTenantInfo userTenantInfo4 = userTenantInfo3;

        System.assert(userTenantInfo1.equals(userTenantInfo2));
        System.assert(userTenantInfo2.equals(userTenantInfo1));
        System.assert(userTenantInfo1.equals(userTenantInfo1));
        System.assert(userTenantInfo3.equals(userTenantInfo4));
        System.assert(userTenantInfo4.equals(userTenantInfo3));
        System.assert(userTenantInfo3.equals(userTenantInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUserTenantInfo userTenantInfo1 = OASUserTenantInfo.getExample();
        OASUserTenantInfo userTenantInfo2 = OASUserTenantInfo.getExample();
        OASUserTenantInfo userTenantInfo3 = new OASUserTenantInfo();
        OASUserTenantInfo userTenantInfo4 = new OASUserTenantInfo();

        System.assert(userTenantInfo1.equals(userTenantInfo2));
        System.assert(userTenantInfo2.equals(userTenantInfo1));
        System.assert(userTenantInfo3.equals(userTenantInfo4));
        System.assert(userTenantInfo4.equals(userTenantInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUserTenantInfo userTenantInfo1 = OASUserTenantInfo.getExample();
        OASUserTenantInfo userTenantInfo2 = new OASUserTenantInfo();

        System.assertEquals(false, userTenantInfo1.equals('foo'));
        System.assertEquals(false, userTenantInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUserTenantInfo userTenantInfo1 = OASUserTenantInfo.getExample();
        OASUserTenantInfo userTenantInfo2 = new OASUserTenantInfo();
        OASUserTenantInfo userTenantInfo3;

        System.assertEquals(false, userTenantInfo1.equals(userTenantInfo3));
        System.assertEquals(false, userTenantInfo2.equals(userTenantInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUserTenantInfo userTenantInfo1 = OASUserTenantInfo.getExample();
        OASUserTenantInfo userTenantInfo2 = new OASUserTenantInfo();

        System.assertEquals(userTenantInfo1.hashCode(), userTenantInfo1.hashCode());
        System.assertEquals(userTenantInfo2.hashCode(), userTenantInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUserTenantInfo userTenantInfo1 = OASUserTenantInfo.getExample();
        OASUserTenantInfo userTenantInfo2 = OASUserTenantInfo.getExample();
        OASUserTenantInfo userTenantInfo3 = new OASUserTenantInfo();
        OASUserTenantInfo userTenantInfo4 = new OASUserTenantInfo();

        System.assert(userTenantInfo1.equals(userTenantInfo2));
        System.assert(userTenantInfo3.equals(userTenantInfo4));
        System.assertEquals(userTenantInfo1.hashCode(), userTenantInfo2.hashCode());
        System.assertEquals(userTenantInfo3.hashCode(), userTenantInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUserTenantInfo userTenantInfo = new OASUserTenantInfo();
        Map<String, String> x-property-mappings = userTenantInfo.getx-property-mappings();
        System.assertEquals('customDomain', x-property-mappings.get('custom_domain'));
        System.assertEquals('tenantId', x-property-mappings.get('tenant_id'));
        System.assertEquals('tenantName', x-property-mappings.get('tenant_name'));
    }
}
