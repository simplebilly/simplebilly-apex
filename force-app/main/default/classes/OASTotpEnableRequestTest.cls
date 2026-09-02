@isTest
private class OASTotpEnableRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASTotpEnableRequest totpEnableRequest1 = OASTotpEnableRequest.getExample();
        OASTotpEnableRequest totpEnableRequest2 = totpEnableRequest1;
        OASTotpEnableRequest totpEnableRequest3 = new OASTotpEnableRequest();
        OASTotpEnableRequest totpEnableRequest4 = totpEnableRequest3;

        System.assert(totpEnableRequest1.equals(totpEnableRequest2));
        System.assert(totpEnableRequest2.equals(totpEnableRequest1));
        System.assert(totpEnableRequest1.equals(totpEnableRequest1));
        System.assert(totpEnableRequest3.equals(totpEnableRequest4));
        System.assert(totpEnableRequest4.equals(totpEnableRequest3));
        System.assert(totpEnableRequest3.equals(totpEnableRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTotpEnableRequest totpEnableRequest1 = OASTotpEnableRequest.getExample();
        OASTotpEnableRequest totpEnableRequest2 = OASTotpEnableRequest.getExample();
        OASTotpEnableRequest totpEnableRequest3 = new OASTotpEnableRequest();
        OASTotpEnableRequest totpEnableRequest4 = new OASTotpEnableRequest();

        System.assert(totpEnableRequest1.equals(totpEnableRequest2));
        System.assert(totpEnableRequest2.equals(totpEnableRequest1));
        System.assert(totpEnableRequest3.equals(totpEnableRequest4));
        System.assert(totpEnableRequest4.equals(totpEnableRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTotpEnableRequest totpEnableRequest1 = OASTotpEnableRequest.getExample();
        OASTotpEnableRequest totpEnableRequest2 = new OASTotpEnableRequest();

        System.assertEquals(false, totpEnableRequest1.equals('foo'));
        System.assertEquals(false, totpEnableRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTotpEnableRequest totpEnableRequest1 = OASTotpEnableRequest.getExample();
        OASTotpEnableRequest totpEnableRequest2 = new OASTotpEnableRequest();
        OASTotpEnableRequest totpEnableRequest3;

        System.assertEquals(false, totpEnableRequest1.equals(totpEnableRequest3));
        System.assertEquals(false, totpEnableRequest2.equals(totpEnableRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTotpEnableRequest totpEnableRequest1 = OASTotpEnableRequest.getExample();
        OASTotpEnableRequest totpEnableRequest2 = new OASTotpEnableRequest();

        System.assertEquals(totpEnableRequest1.hashCode(), totpEnableRequest1.hashCode());
        System.assertEquals(totpEnableRequest2.hashCode(), totpEnableRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTotpEnableRequest totpEnableRequest1 = OASTotpEnableRequest.getExample();
        OASTotpEnableRequest totpEnableRequest2 = OASTotpEnableRequest.getExample();
        OASTotpEnableRequest totpEnableRequest3 = new OASTotpEnableRequest();
        OASTotpEnableRequest totpEnableRequest4 = new OASTotpEnableRequest();

        System.assert(totpEnableRequest1.equals(totpEnableRequest2));
        System.assert(totpEnableRequest3.equals(totpEnableRequest4));
        System.assertEquals(totpEnableRequest1.hashCode(), totpEnableRequest2.hashCode());
        System.assertEquals(totpEnableRequest3.hashCode(), totpEnableRequest4.hashCode());
    }
}
