@isTest
private class OASAcceptInviteRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASAcceptInviteRequest acceptInviteRequest1 = OASAcceptInviteRequest.getExample();
        OASAcceptInviteRequest acceptInviteRequest2 = acceptInviteRequest1;
        OASAcceptInviteRequest acceptInviteRequest3 = new OASAcceptInviteRequest();
        OASAcceptInviteRequest acceptInviteRequest4 = acceptInviteRequest3;

        System.assert(acceptInviteRequest1.equals(acceptInviteRequest2));
        System.assert(acceptInviteRequest2.equals(acceptInviteRequest1));
        System.assert(acceptInviteRequest1.equals(acceptInviteRequest1));
        System.assert(acceptInviteRequest3.equals(acceptInviteRequest4));
        System.assert(acceptInviteRequest4.equals(acceptInviteRequest3));
        System.assert(acceptInviteRequest3.equals(acceptInviteRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAcceptInviteRequest acceptInviteRequest1 = OASAcceptInviteRequest.getExample();
        OASAcceptInviteRequest acceptInviteRequest2 = OASAcceptInviteRequest.getExample();
        OASAcceptInviteRequest acceptInviteRequest3 = new OASAcceptInviteRequest();
        OASAcceptInviteRequest acceptInviteRequest4 = new OASAcceptInviteRequest();

        System.assert(acceptInviteRequest1.equals(acceptInviteRequest2));
        System.assert(acceptInviteRequest2.equals(acceptInviteRequest1));
        System.assert(acceptInviteRequest3.equals(acceptInviteRequest4));
        System.assert(acceptInviteRequest4.equals(acceptInviteRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAcceptInviteRequest acceptInviteRequest1 = OASAcceptInviteRequest.getExample();
        OASAcceptInviteRequest acceptInviteRequest2 = new OASAcceptInviteRequest();

        System.assertEquals(false, acceptInviteRequest1.equals('foo'));
        System.assertEquals(false, acceptInviteRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAcceptInviteRequest acceptInviteRequest1 = OASAcceptInviteRequest.getExample();
        OASAcceptInviteRequest acceptInviteRequest2 = new OASAcceptInviteRequest();
        OASAcceptInviteRequest acceptInviteRequest3;

        System.assertEquals(false, acceptInviteRequest1.equals(acceptInviteRequest3));
        System.assertEquals(false, acceptInviteRequest2.equals(acceptInviteRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAcceptInviteRequest acceptInviteRequest1 = OASAcceptInviteRequest.getExample();
        OASAcceptInviteRequest acceptInviteRequest2 = new OASAcceptInviteRequest();

        System.assertEquals(acceptInviteRequest1.hashCode(), acceptInviteRequest1.hashCode());
        System.assertEquals(acceptInviteRequest2.hashCode(), acceptInviteRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAcceptInviteRequest acceptInviteRequest1 = OASAcceptInviteRequest.getExample();
        OASAcceptInviteRequest acceptInviteRequest2 = OASAcceptInviteRequest.getExample();
        OASAcceptInviteRequest acceptInviteRequest3 = new OASAcceptInviteRequest();
        OASAcceptInviteRequest acceptInviteRequest4 = new OASAcceptInviteRequest();

        System.assert(acceptInviteRequest1.equals(acceptInviteRequest2));
        System.assert(acceptInviteRequest3.equals(acceptInviteRequest4));
        System.assertEquals(acceptInviteRequest1.hashCode(), acceptInviteRequest2.hashCode());
        System.assertEquals(acceptInviteRequest3.hashCode(), acceptInviteRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAcceptInviteRequest acceptInviteRequest = new OASAcceptInviteRequest();
        Map<String, String> x-property-mappings = acceptInviteRequest.getx-property-mappings();
        System.assertEquals('firstName', x-property-mappings.get('first_name'));
        System.assertEquals('lastName', x-property-mappings.get('last_name'));
        System.assertEquals('privacyAccepted', x-property-mappings.get('privacy_accepted'));
    }
}
