@isTest
private class OASApiResponseVecUserTenantInfoTest {
    @isTest
    private static void equalsSameInstance() {
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo1 = OASApiResponseVecUserTenantInfo.getExample();
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo2 = apiResponseVecUserTenantInfo1;
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo3 = new OASApiResponseVecUserTenantInfo();
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo4 = apiResponseVecUserTenantInfo3;

        System.assert(apiResponseVecUserTenantInfo1.equals(apiResponseVecUserTenantInfo2));
        System.assert(apiResponseVecUserTenantInfo2.equals(apiResponseVecUserTenantInfo1));
        System.assert(apiResponseVecUserTenantInfo1.equals(apiResponseVecUserTenantInfo1));
        System.assert(apiResponseVecUserTenantInfo3.equals(apiResponseVecUserTenantInfo4));
        System.assert(apiResponseVecUserTenantInfo4.equals(apiResponseVecUserTenantInfo3));
        System.assert(apiResponseVecUserTenantInfo3.equals(apiResponseVecUserTenantInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo1 = OASApiResponseVecUserTenantInfo.getExample();
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo2 = OASApiResponseVecUserTenantInfo.getExample();
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo3 = new OASApiResponseVecUserTenantInfo();
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo4 = new OASApiResponseVecUserTenantInfo();

        System.assert(apiResponseVecUserTenantInfo1.equals(apiResponseVecUserTenantInfo2));
        System.assert(apiResponseVecUserTenantInfo2.equals(apiResponseVecUserTenantInfo1));
        System.assert(apiResponseVecUserTenantInfo3.equals(apiResponseVecUserTenantInfo4));
        System.assert(apiResponseVecUserTenantInfo4.equals(apiResponseVecUserTenantInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo1 = OASApiResponseVecUserTenantInfo.getExample();
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo2 = new OASApiResponseVecUserTenantInfo();

        System.assertEquals(false, apiResponseVecUserTenantInfo1.equals('foo'));
        System.assertEquals(false, apiResponseVecUserTenantInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo1 = OASApiResponseVecUserTenantInfo.getExample();
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo2 = new OASApiResponseVecUserTenantInfo();
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo3;

        System.assertEquals(false, apiResponseVecUserTenantInfo1.equals(apiResponseVecUserTenantInfo3));
        System.assertEquals(false, apiResponseVecUserTenantInfo2.equals(apiResponseVecUserTenantInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo1 = OASApiResponseVecUserTenantInfo.getExample();
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo2 = new OASApiResponseVecUserTenantInfo();

        System.assertEquals(apiResponseVecUserTenantInfo1.hashCode(), apiResponseVecUserTenantInfo1.hashCode());
        System.assertEquals(apiResponseVecUserTenantInfo2.hashCode(), apiResponseVecUserTenantInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo1 = OASApiResponseVecUserTenantInfo.getExample();
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo2 = OASApiResponseVecUserTenantInfo.getExample();
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo3 = new OASApiResponseVecUserTenantInfo();
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo4 = new OASApiResponseVecUserTenantInfo();

        System.assert(apiResponseVecUserTenantInfo1.equals(apiResponseVecUserTenantInfo2));
        System.assert(apiResponseVecUserTenantInfo3.equals(apiResponseVecUserTenantInfo4));
        System.assertEquals(apiResponseVecUserTenantInfo1.hashCode(), apiResponseVecUserTenantInfo2.hashCode());
        System.assertEquals(apiResponseVecUserTenantInfo3.hashCode(), apiResponseVecUserTenantInfo4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASApiResponseVecUserTenantInfo apiResponseVecUserTenantInfo = new OASApiResponseVecUserTenantInfo();
        System.assertEquals(new List<OASApiResponseVecUserTenantInfoDataI>(), apiResponseVecUserTenantInfo.data);
        System.assertEquals(null, apiResponseVecUserTenantInfo.error);
        System.assertEquals(null, apiResponseVecUserTenantInfo.message);
        System.assertEquals(null, apiResponseVecUserTenantInfo.success);
    }
}
