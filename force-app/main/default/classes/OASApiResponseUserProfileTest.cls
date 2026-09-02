@isTest
private class OASApiResponseUserProfileTest {
    @isTest
    private static void equalsSameInstance() {
        OASApiResponseUserProfile apiResponseUserProfile1 = OASApiResponseUserProfile.getExample();
        OASApiResponseUserProfile apiResponseUserProfile2 = apiResponseUserProfile1;
        OASApiResponseUserProfile apiResponseUserProfile3 = new OASApiResponseUserProfile();
        OASApiResponseUserProfile apiResponseUserProfile4 = apiResponseUserProfile3;

        System.assert(apiResponseUserProfile1.equals(apiResponseUserProfile2));
        System.assert(apiResponseUserProfile2.equals(apiResponseUserProfile1));
        System.assert(apiResponseUserProfile1.equals(apiResponseUserProfile1));
        System.assert(apiResponseUserProfile3.equals(apiResponseUserProfile4));
        System.assert(apiResponseUserProfile4.equals(apiResponseUserProfile3));
        System.assert(apiResponseUserProfile3.equals(apiResponseUserProfile3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASApiResponseUserProfile apiResponseUserProfile1 = OASApiResponseUserProfile.getExample();
        OASApiResponseUserProfile apiResponseUserProfile2 = OASApiResponseUserProfile.getExample();
        OASApiResponseUserProfile apiResponseUserProfile3 = new OASApiResponseUserProfile();
        OASApiResponseUserProfile apiResponseUserProfile4 = new OASApiResponseUserProfile();

        System.assert(apiResponseUserProfile1.equals(apiResponseUserProfile2));
        System.assert(apiResponseUserProfile2.equals(apiResponseUserProfile1));
        System.assert(apiResponseUserProfile3.equals(apiResponseUserProfile4));
        System.assert(apiResponseUserProfile4.equals(apiResponseUserProfile3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASApiResponseUserProfile apiResponseUserProfile1 = OASApiResponseUserProfile.getExample();
        OASApiResponseUserProfile apiResponseUserProfile2 = new OASApiResponseUserProfile();

        System.assertEquals(false, apiResponseUserProfile1.equals('foo'));
        System.assertEquals(false, apiResponseUserProfile2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASApiResponseUserProfile apiResponseUserProfile1 = OASApiResponseUserProfile.getExample();
        OASApiResponseUserProfile apiResponseUserProfile2 = new OASApiResponseUserProfile();
        OASApiResponseUserProfile apiResponseUserProfile3;

        System.assertEquals(false, apiResponseUserProfile1.equals(apiResponseUserProfile3));
        System.assertEquals(false, apiResponseUserProfile2.equals(apiResponseUserProfile3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASApiResponseUserProfile apiResponseUserProfile1 = OASApiResponseUserProfile.getExample();
        OASApiResponseUserProfile apiResponseUserProfile2 = new OASApiResponseUserProfile();

        System.assertEquals(apiResponseUserProfile1.hashCode(), apiResponseUserProfile1.hashCode());
        System.assertEquals(apiResponseUserProfile2.hashCode(), apiResponseUserProfile2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASApiResponseUserProfile apiResponseUserProfile1 = OASApiResponseUserProfile.getExample();
        OASApiResponseUserProfile apiResponseUserProfile2 = OASApiResponseUserProfile.getExample();
        OASApiResponseUserProfile apiResponseUserProfile3 = new OASApiResponseUserProfile();
        OASApiResponseUserProfile apiResponseUserProfile4 = new OASApiResponseUserProfile();

        System.assert(apiResponseUserProfile1.equals(apiResponseUserProfile2));
        System.assert(apiResponseUserProfile3.equals(apiResponseUserProfile4));
        System.assertEquals(apiResponseUserProfile1.hashCode(), apiResponseUserProfile2.hashCode());
        System.assertEquals(apiResponseUserProfile3.hashCode(), apiResponseUserProfile4.hashCode());
    }
}
