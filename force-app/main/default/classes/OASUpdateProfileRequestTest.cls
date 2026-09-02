@isTest
private class OASUpdateProfileRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpdateProfileRequest updateProfileRequest1 = OASUpdateProfileRequest.getExample();
        OASUpdateProfileRequest updateProfileRequest2 = updateProfileRequest1;
        OASUpdateProfileRequest updateProfileRequest3 = new OASUpdateProfileRequest();
        OASUpdateProfileRequest updateProfileRequest4 = updateProfileRequest3;

        System.assert(updateProfileRequest1.equals(updateProfileRequest2));
        System.assert(updateProfileRequest2.equals(updateProfileRequest1));
        System.assert(updateProfileRequest1.equals(updateProfileRequest1));
        System.assert(updateProfileRequest3.equals(updateProfileRequest4));
        System.assert(updateProfileRequest4.equals(updateProfileRequest3));
        System.assert(updateProfileRequest3.equals(updateProfileRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpdateProfileRequest updateProfileRequest1 = OASUpdateProfileRequest.getExample();
        OASUpdateProfileRequest updateProfileRequest2 = OASUpdateProfileRequest.getExample();
        OASUpdateProfileRequest updateProfileRequest3 = new OASUpdateProfileRequest();
        OASUpdateProfileRequest updateProfileRequest4 = new OASUpdateProfileRequest();

        System.assert(updateProfileRequest1.equals(updateProfileRequest2));
        System.assert(updateProfileRequest2.equals(updateProfileRequest1));
        System.assert(updateProfileRequest3.equals(updateProfileRequest4));
        System.assert(updateProfileRequest4.equals(updateProfileRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpdateProfileRequest updateProfileRequest1 = OASUpdateProfileRequest.getExample();
        OASUpdateProfileRequest updateProfileRequest2 = new OASUpdateProfileRequest();

        System.assertEquals(false, updateProfileRequest1.equals('foo'));
        System.assertEquals(false, updateProfileRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpdateProfileRequest updateProfileRequest1 = OASUpdateProfileRequest.getExample();
        OASUpdateProfileRequest updateProfileRequest2 = new OASUpdateProfileRequest();
        OASUpdateProfileRequest updateProfileRequest3;

        System.assertEquals(false, updateProfileRequest1.equals(updateProfileRequest3));
        System.assertEquals(false, updateProfileRequest2.equals(updateProfileRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpdateProfileRequest updateProfileRequest1 = OASUpdateProfileRequest.getExample();
        OASUpdateProfileRequest updateProfileRequest2 = new OASUpdateProfileRequest();

        System.assertEquals(updateProfileRequest1.hashCode(), updateProfileRequest1.hashCode());
        System.assertEquals(updateProfileRequest2.hashCode(), updateProfileRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpdateProfileRequest updateProfileRequest1 = OASUpdateProfileRequest.getExample();
        OASUpdateProfileRequest updateProfileRequest2 = OASUpdateProfileRequest.getExample();
        OASUpdateProfileRequest updateProfileRequest3 = new OASUpdateProfileRequest();
        OASUpdateProfileRequest updateProfileRequest4 = new OASUpdateProfileRequest();

        System.assert(updateProfileRequest1.equals(updateProfileRequest2));
        System.assert(updateProfileRequest3.equals(updateProfileRequest4));
        System.assertEquals(updateProfileRequest1.hashCode(), updateProfileRequest2.hashCode());
        System.assertEquals(updateProfileRequest3.hashCode(), updateProfileRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUpdateProfileRequest updateProfileRequest = new OASUpdateProfileRequest();
        Map<String, String> x-property-mappings = updateProfileRequest.getx-property-mappings();
        System.assertEquals('avatarUrl', x-property-mappings.get('avatar_url'));
        System.assertEquals('firstName', x-property-mappings.get('first_name'));
        System.assertEquals('lastName', x-property-mappings.get('last_name'));
    }
}
