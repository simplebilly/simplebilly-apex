@isTest
private class OASUserProfileTest {
    @isTest
    private static void equalsSameInstance() {
        OASUserProfile userProfile1 = OASUserProfile.getExample();
        OASUserProfile userProfile2 = userProfile1;
        OASUserProfile userProfile3 = new OASUserProfile();
        OASUserProfile userProfile4 = userProfile3;

        System.assert(userProfile1.equals(userProfile2));
        System.assert(userProfile2.equals(userProfile1));
        System.assert(userProfile1.equals(userProfile1));
        System.assert(userProfile3.equals(userProfile4));
        System.assert(userProfile4.equals(userProfile3));
        System.assert(userProfile3.equals(userProfile3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUserProfile userProfile1 = OASUserProfile.getExample();
        OASUserProfile userProfile2 = OASUserProfile.getExample();
        OASUserProfile userProfile3 = new OASUserProfile();
        OASUserProfile userProfile4 = new OASUserProfile();

        System.assert(userProfile1.equals(userProfile2));
        System.assert(userProfile2.equals(userProfile1));
        System.assert(userProfile3.equals(userProfile4));
        System.assert(userProfile4.equals(userProfile3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUserProfile userProfile1 = OASUserProfile.getExample();
        OASUserProfile userProfile2 = new OASUserProfile();

        System.assertEquals(false, userProfile1.equals('foo'));
        System.assertEquals(false, userProfile2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUserProfile userProfile1 = OASUserProfile.getExample();
        OASUserProfile userProfile2 = new OASUserProfile();
        OASUserProfile userProfile3;

        System.assertEquals(false, userProfile1.equals(userProfile3));
        System.assertEquals(false, userProfile2.equals(userProfile3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUserProfile userProfile1 = OASUserProfile.getExample();
        OASUserProfile userProfile2 = new OASUserProfile();

        System.assertEquals(userProfile1.hashCode(), userProfile1.hashCode());
        System.assertEquals(userProfile2.hashCode(), userProfile2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUserProfile userProfile1 = OASUserProfile.getExample();
        OASUserProfile userProfile2 = OASUserProfile.getExample();
        OASUserProfile userProfile3 = new OASUserProfile();
        OASUserProfile userProfile4 = new OASUserProfile();

        System.assert(userProfile1.equals(userProfile2));
        System.assert(userProfile3.equals(userProfile4));
        System.assertEquals(userProfile1.hashCode(), userProfile2.hashCode());
        System.assertEquals(userProfile3.hashCode(), userProfile4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUserProfile userProfile = new OASUserProfile();
        Map<String, String> x-property-mappings = userProfile.getx-property-mappings();
        System.assertEquals('createdAt', x-property-mappings.get('created_at'));
        System.assertEquals('emailVerified', x-property-mappings.get('email_verified'));
        System.assertEquals('firstName', x-property-mappings.get('first_name'));
        System.assertEquals('fullName', x-property-mappings.get('full_name'));
        System.assertEquals('lastName', x-property-mappings.get('last_name'));
    }
}
