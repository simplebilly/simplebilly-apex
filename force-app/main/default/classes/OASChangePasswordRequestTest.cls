@isTest
private class OASChangePasswordRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASChangePasswordRequest changePasswordRequest1 = OASChangePasswordRequest.getExample();
        OASChangePasswordRequest changePasswordRequest2 = changePasswordRequest1;
        OASChangePasswordRequest changePasswordRequest3 = new OASChangePasswordRequest();
        OASChangePasswordRequest changePasswordRequest4 = changePasswordRequest3;

        System.assert(changePasswordRequest1.equals(changePasswordRequest2));
        System.assert(changePasswordRequest2.equals(changePasswordRequest1));
        System.assert(changePasswordRequest1.equals(changePasswordRequest1));
        System.assert(changePasswordRequest3.equals(changePasswordRequest4));
        System.assert(changePasswordRequest4.equals(changePasswordRequest3));
        System.assert(changePasswordRequest3.equals(changePasswordRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASChangePasswordRequest changePasswordRequest1 = OASChangePasswordRequest.getExample();
        OASChangePasswordRequest changePasswordRequest2 = OASChangePasswordRequest.getExample();
        OASChangePasswordRequest changePasswordRequest3 = new OASChangePasswordRequest();
        OASChangePasswordRequest changePasswordRequest4 = new OASChangePasswordRequest();

        System.assert(changePasswordRequest1.equals(changePasswordRequest2));
        System.assert(changePasswordRequest2.equals(changePasswordRequest1));
        System.assert(changePasswordRequest3.equals(changePasswordRequest4));
        System.assert(changePasswordRequest4.equals(changePasswordRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASChangePasswordRequest changePasswordRequest1 = OASChangePasswordRequest.getExample();
        OASChangePasswordRequest changePasswordRequest2 = new OASChangePasswordRequest();

        System.assertEquals(false, changePasswordRequest1.equals('foo'));
        System.assertEquals(false, changePasswordRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASChangePasswordRequest changePasswordRequest1 = OASChangePasswordRequest.getExample();
        OASChangePasswordRequest changePasswordRequest2 = new OASChangePasswordRequest();
        OASChangePasswordRequest changePasswordRequest3;

        System.assertEquals(false, changePasswordRequest1.equals(changePasswordRequest3));
        System.assertEquals(false, changePasswordRequest2.equals(changePasswordRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASChangePasswordRequest changePasswordRequest1 = OASChangePasswordRequest.getExample();
        OASChangePasswordRequest changePasswordRequest2 = new OASChangePasswordRequest();

        System.assertEquals(changePasswordRequest1.hashCode(), changePasswordRequest1.hashCode());
        System.assertEquals(changePasswordRequest2.hashCode(), changePasswordRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASChangePasswordRequest changePasswordRequest1 = OASChangePasswordRequest.getExample();
        OASChangePasswordRequest changePasswordRequest2 = OASChangePasswordRequest.getExample();
        OASChangePasswordRequest changePasswordRequest3 = new OASChangePasswordRequest();
        OASChangePasswordRequest changePasswordRequest4 = new OASChangePasswordRequest();

        System.assert(changePasswordRequest1.equals(changePasswordRequest2));
        System.assert(changePasswordRequest3.equals(changePasswordRequest4));
        System.assertEquals(changePasswordRequest1.hashCode(), changePasswordRequest2.hashCode());
        System.assertEquals(changePasswordRequest3.hashCode(), changePasswordRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASChangePasswordRequest changePasswordRequest = new OASChangePasswordRequest();
        Map<String, String> x-property-mappings = changePasswordRequest.getx-property-mappings();
        System.assertEquals('currentPassword', x-property-mappings.get('current_password'));
        System.assertEquals('newPassword', x-property-mappings.get('new_password'));
    }
}
