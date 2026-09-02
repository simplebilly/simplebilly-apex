@isTest
private class OASApiResponseUserProfileDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASApiResponseUserProfileData apiResponseUserProfileData1 = OASApiResponseUserProfileData.getExample();
        OASApiResponseUserProfileData apiResponseUserProfileData2 = apiResponseUserProfileData1;
        OASApiResponseUserProfileData apiResponseUserProfileData3 = new OASApiResponseUserProfileData();
        OASApiResponseUserProfileData apiResponseUserProfileData4 = apiResponseUserProfileData3;

        System.assert(apiResponseUserProfileData1.equals(apiResponseUserProfileData2));
        System.assert(apiResponseUserProfileData2.equals(apiResponseUserProfileData1));
        System.assert(apiResponseUserProfileData1.equals(apiResponseUserProfileData1));
        System.assert(apiResponseUserProfileData3.equals(apiResponseUserProfileData4));
        System.assert(apiResponseUserProfileData4.equals(apiResponseUserProfileData3));
        System.assert(apiResponseUserProfileData3.equals(apiResponseUserProfileData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASApiResponseUserProfileData apiResponseUserProfileData1 = OASApiResponseUserProfileData.getExample();
        OASApiResponseUserProfileData apiResponseUserProfileData2 = OASApiResponseUserProfileData.getExample();
        OASApiResponseUserProfileData apiResponseUserProfileData3 = new OASApiResponseUserProfileData();
        OASApiResponseUserProfileData apiResponseUserProfileData4 = new OASApiResponseUserProfileData();

        System.assert(apiResponseUserProfileData1.equals(apiResponseUserProfileData2));
        System.assert(apiResponseUserProfileData2.equals(apiResponseUserProfileData1));
        System.assert(apiResponseUserProfileData3.equals(apiResponseUserProfileData4));
        System.assert(apiResponseUserProfileData4.equals(apiResponseUserProfileData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASApiResponseUserProfileData apiResponseUserProfileData1 = OASApiResponseUserProfileData.getExample();
        OASApiResponseUserProfileData apiResponseUserProfileData2 = new OASApiResponseUserProfileData();

        System.assertEquals(false, apiResponseUserProfileData1.equals('foo'));
        System.assertEquals(false, apiResponseUserProfileData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASApiResponseUserProfileData apiResponseUserProfileData1 = OASApiResponseUserProfileData.getExample();
        OASApiResponseUserProfileData apiResponseUserProfileData2 = new OASApiResponseUserProfileData();
        OASApiResponseUserProfileData apiResponseUserProfileData3;

        System.assertEquals(false, apiResponseUserProfileData1.equals(apiResponseUserProfileData3));
        System.assertEquals(false, apiResponseUserProfileData2.equals(apiResponseUserProfileData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASApiResponseUserProfileData apiResponseUserProfileData1 = OASApiResponseUserProfileData.getExample();
        OASApiResponseUserProfileData apiResponseUserProfileData2 = new OASApiResponseUserProfileData();

        System.assertEquals(apiResponseUserProfileData1.hashCode(), apiResponseUserProfileData1.hashCode());
        System.assertEquals(apiResponseUserProfileData2.hashCode(), apiResponseUserProfileData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASApiResponseUserProfileData apiResponseUserProfileData1 = OASApiResponseUserProfileData.getExample();
        OASApiResponseUserProfileData apiResponseUserProfileData2 = OASApiResponseUserProfileData.getExample();
        OASApiResponseUserProfileData apiResponseUserProfileData3 = new OASApiResponseUserProfileData();
        OASApiResponseUserProfileData apiResponseUserProfileData4 = new OASApiResponseUserProfileData();

        System.assert(apiResponseUserProfileData1.equals(apiResponseUserProfileData2));
        System.assert(apiResponseUserProfileData3.equals(apiResponseUserProfileData4));
        System.assertEquals(apiResponseUserProfileData1.hashCode(), apiResponseUserProfileData2.hashCode());
        System.assertEquals(apiResponseUserProfileData3.hashCode(), apiResponseUserProfileData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASApiResponseUserProfileData apiResponseUserProfileData = new OASApiResponseUserProfileData();
        Map<String, String> x-property-mappings = apiResponseUserProfileData.getx-property-mappings();
        System.assertEquals('createdAt', x-property-mappings.get('created_at'));
        System.assertEquals('emailVerified', x-property-mappings.get('email_verified'));
        System.assertEquals('firstName', x-property-mappings.get('first_name'));
        System.assertEquals('fullName', x-property-mappings.get('full_name'));
        System.assertEquals('lastName', x-property-mappings.get('last_name'));
    }
}
