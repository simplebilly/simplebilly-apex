@isTest
private class OASResetPasswordRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASResetPasswordRequest resetPasswordRequest1 = OASResetPasswordRequest.getExample();
        OASResetPasswordRequest resetPasswordRequest2 = resetPasswordRequest1;
        OASResetPasswordRequest resetPasswordRequest3 = new OASResetPasswordRequest();
        OASResetPasswordRequest resetPasswordRequest4 = resetPasswordRequest3;

        System.assert(resetPasswordRequest1.equals(resetPasswordRequest2));
        System.assert(resetPasswordRequest2.equals(resetPasswordRequest1));
        System.assert(resetPasswordRequest1.equals(resetPasswordRequest1));
        System.assert(resetPasswordRequest3.equals(resetPasswordRequest4));
        System.assert(resetPasswordRequest4.equals(resetPasswordRequest3));
        System.assert(resetPasswordRequest3.equals(resetPasswordRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResetPasswordRequest resetPasswordRequest1 = OASResetPasswordRequest.getExample();
        OASResetPasswordRequest resetPasswordRequest2 = OASResetPasswordRequest.getExample();
        OASResetPasswordRequest resetPasswordRequest3 = new OASResetPasswordRequest();
        OASResetPasswordRequest resetPasswordRequest4 = new OASResetPasswordRequest();

        System.assert(resetPasswordRequest1.equals(resetPasswordRequest2));
        System.assert(resetPasswordRequest2.equals(resetPasswordRequest1));
        System.assert(resetPasswordRequest3.equals(resetPasswordRequest4));
        System.assert(resetPasswordRequest4.equals(resetPasswordRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResetPasswordRequest resetPasswordRequest1 = OASResetPasswordRequest.getExample();
        OASResetPasswordRequest resetPasswordRequest2 = new OASResetPasswordRequest();

        System.assertEquals(false, resetPasswordRequest1.equals('foo'));
        System.assertEquals(false, resetPasswordRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResetPasswordRequest resetPasswordRequest1 = OASResetPasswordRequest.getExample();
        OASResetPasswordRequest resetPasswordRequest2 = new OASResetPasswordRequest();
        OASResetPasswordRequest resetPasswordRequest3;

        System.assertEquals(false, resetPasswordRequest1.equals(resetPasswordRequest3));
        System.assertEquals(false, resetPasswordRequest2.equals(resetPasswordRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResetPasswordRequest resetPasswordRequest1 = OASResetPasswordRequest.getExample();
        OASResetPasswordRequest resetPasswordRequest2 = new OASResetPasswordRequest();

        System.assertEquals(resetPasswordRequest1.hashCode(), resetPasswordRequest1.hashCode());
        System.assertEquals(resetPasswordRequest2.hashCode(), resetPasswordRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResetPasswordRequest resetPasswordRequest1 = OASResetPasswordRequest.getExample();
        OASResetPasswordRequest resetPasswordRequest2 = OASResetPasswordRequest.getExample();
        OASResetPasswordRequest resetPasswordRequest3 = new OASResetPasswordRequest();
        OASResetPasswordRequest resetPasswordRequest4 = new OASResetPasswordRequest();

        System.assert(resetPasswordRequest1.equals(resetPasswordRequest2));
        System.assert(resetPasswordRequest3.equals(resetPasswordRequest4));
        System.assertEquals(resetPasswordRequest1.hashCode(), resetPasswordRequest2.hashCode());
        System.assertEquals(resetPasswordRequest3.hashCode(), resetPasswordRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResetPasswordRequest resetPasswordRequest = new OASResetPasswordRequest();
        Map<String, String> x-property-mappings = resetPasswordRequest.getx-property-mappings();
        System.assertEquals('newPassword', x-property-mappings.get('new_password'));
    }
}
