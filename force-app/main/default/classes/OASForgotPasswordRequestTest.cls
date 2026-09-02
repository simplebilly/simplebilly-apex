@isTest
private class OASForgotPasswordRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASForgotPasswordRequest forgotPasswordRequest1 = OASForgotPasswordRequest.getExample();
        OASForgotPasswordRequest forgotPasswordRequest2 = forgotPasswordRequest1;
        OASForgotPasswordRequest forgotPasswordRequest3 = new OASForgotPasswordRequest();
        OASForgotPasswordRequest forgotPasswordRequest4 = forgotPasswordRequest3;

        System.assert(forgotPasswordRequest1.equals(forgotPasswordRequest2));
        System.assert(forgotPasswordRequest2.equals(forgotPasswordRequest1));
        System.assert(forgotPasswordRequest1.equals(forgotPasswordRequest1));
        System.assert(forgotPasswordRequest3.equals(forgotPasswordRequest4));
        System.assert(forgotPasswordRequest4.equals(forgotPasswordRequest3));
        System.assert(forgotPasswordRequest3.equals(forgotPasswordRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASForgotPasswordRequest forgotPasswordRequest1 = OASForgotPasswordRequest.getExample();
        OASForgotPasswordRequest forgotPasswordRequest2 = OASForgotPasswordRequest.getExample();
        OASForgotPasswordRequest forgotPasswordRequest3 = new OASForgotPasswordRequest();
        OASForgotPasswordRequest forgotPasswordRequest4 = new OASForgotPasswordRequest();

        System.assert(forgotPasswordRequest1.equals(forgotPasswordRequest2));
        System.assert(forgotPasswordRequest2.equals(forgotPasswordRequest1));
        System.assert(forgotPasswordRequest3.equals(forgotPasswordRequest4));
        System.assert(forgotPasswordRequest4.equals(forgotPasswordRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASForgotPasswordRequest forgotPasswordRequest1 = OASForgotPasswordRequest.getExample();
        OASForgotPasswordRequest forgotPasswordRequest2 = new OASForgotPasswordRequest();

        System.assertEquals(false, forgotPasswordRequest1.equals('foo'));
        System.assertEquals(false, forgotPasswordRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASForgotPasswordRequest forgotPasswordRequest1 = OASForgotPasswordRequest.getExample();
        OASForgotPasswordRequest forgotPasswordRequest2 = new OASForgotPasswordRequest();
        OASForgotPasswordRequest forgotPasswordRequest3;

        System.assertEquals(false, forgotPasswordRequest1.equals(forgotPasswordRequest3));
        System.assertEquals(false, forgotPasswordRequest2.equals(forgotPasswordRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASForgotPasswordRequest forgotPasswordRequest1 = OASForgotPasswordRequest.getExample();
        OASForgotPasswordRequest forgotPasswordRequest2 = new OASForgotPasswordRequest();

        System.assertEquals(forgotPasswordRequest1.hashCode(), forgotPasswordRequest1.hashCode());
        System.assertEquals(forgotPasswordRequest2.hashCode(), forgotPasswordRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASForgotPasswordRequest forgotPasswordRequest1 = OASForgotPasswordRequest.getExample();
        OASForgotPasswordRequest forgotPasswordRequest2 = OASForgotPasswordRequest.getExample();
        OASForgotPasswordRequest forgotPasswordRequest3 = new OASForgotPasswordRequest();
        OASForgotPasswordRequest forgotPasswordRequest4 = new OASForgotPasswordRequest();

        System.assert(forgotPasswordRequest1.equals(forgotPasswordRequest2));
        System.assert(forgotPasswordRequest3.equals(forgotPasswordRequest4));
        System.assertEquals(forgotPasswordRequest1.hashCode(), forgotPasswordRequest2.hashCode());
        System.assertEquals(forgotPasswordRequest3.hashCode(), forgotPasswordRequest4.hashCode());
    }
}
