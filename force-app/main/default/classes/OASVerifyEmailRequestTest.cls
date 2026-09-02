@isTest
private class OASVerifyEmailRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASVerifyEmailRequest verifyEmailRequest1 = OASVerifyEmailRequest.getExample();
        OASVerifyEmailRequest verifyEmailRequest2 = verifyEmailRequest1;
        OASVerifyEmailRequest verifyEmailRequest3 = new OASVerifyEmailRequest();
        OASVerifyEmailRequest verifyEmailRequest4 = verifyEmailRequest3;

        System.assert(verifyEmailRequest1.equals(verifyEmailRequest2));
        System.assert(verifyEmailRequest2.equals(verifyEmailRequest1));
        System.assert(verifyEmailRequest1.equals(verifyEmailRequest1));
        System.assert(verifyEmailRequest3.equals(verifyEmailRequest4));
        System.assert(verifyEmailRequest4.equals(verifyEmailRequest3));
        System.assert(verifyEmailRequest3.equals(verifyEmailRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASVerifyEmailRequest verifyEmailRequest1 = OASVerifyEmailRequest.getExample();
        OASVerifyEmailRequest verifyEmailRequest2 = OASVerifyEmailRequest.getExample();
        OASVerifyEmailRequest verifyEmailRequest3 = new OASVerifyEmailRequest();
        OASVerifyEmailRequest verifyEmailRequest4 = new OASVerifyEmailRequest();

        System.assert(verifyEmailRequest1.equals(verifyEmailRequest2));
        System.assert(verifyEmailRequest2.equals(verifyEmailRequest1));
        System.assert(verifyEmailRequest3.equals(verifyEmailRequest4));
        System.assert(verifyEmailRequest4.equals(verifyEmailRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASVerifyEmailRequest verifyEmailRequest1 = OASVerifyEmailRequest.getExample();
        OASVerifyEmailRequest verifyEmailRequest2 = new OASVerifyEmailRequest();

        System.assertEquals(false, verifyEmailRequest1.equals('foo'));
        System.assertEquals(false, verifyEmailRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASVerifyEmailRequest verifyEmailRequest1 = OASVerifyEmailRequest.getExample();
        OASVerifyEmailRequest verifyEmailRequest2 = new OASVerifyEmailRequest();
        OASVerifyEmailRequest verifyEmailRequest3;

        System.assertEquals(false, verifyEmailRequest1.equals(verifyEmailRequest3));
        System.assertEquals(false, verifyEmailRequest2.equals(verifyEmailRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASVerifyEmailRequest verifyEmailRequest1 = OASVerifyEmailRequest.getExample();
        OASVerifyEmailRequest verifyEmailRequest2 = new OASVerifyEmailRequest();

        System.assertEquals(verifyEmailRequest1.hashCode(), verifyEmailRequest1.hashCode());
        System.assertEquals(verifyEmailRequest2.hashCode(), verifyEmailRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASVerifyEmailRequest verifyEmailRequest1 = OASVerifyEmailRequest.getExample();
        OASVerifyEmailRequest verifyEmailRequest2 = OASVerifyEmailRequest.getExample();
        OASVerifyEmailRequest verifyEmailRequest3 = new OASVerifyEmailRequest();
        OASVerifyEmailRequest verifyEmailRequest4 = new OASVerifyEmailRequest();

        System.assert(verifyEmailRequest1.equals(verifyEmailRequest2));
        System.assert(verifyEmailRequest3.equals(verifyEmailRequest4));
        System.assertEquals(verifyEmailRequest1.hashCode(), verifyEmailRequest2.hashCode());
        System.assertEquals(verifyEmailRequest3.hashCode(), verifyEmailRequest4.hashCode());
    }
}
