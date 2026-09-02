@isTest
private class OASOAuthAuthorizeRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASOAuthAuthorizeRequest oauthAuthorizeRequest1 = OASOAuthAuthorizeRequest.getExample();
        OASOAuthAuthorizeRequest oauthAuthorizeRequest2 = oauthAuthorizeRequest1;
        OASOAuthAuthorizeRequest oauthAuthorizeRequest3 = new OASOAuthAuthorizeRequest();
        OASOAuthAuthorizeRequest oauthAuthorizeRequest4 = oauthAuthorizeRequest3;

        System.assert(oauthAuthorizeRequest1.equals(oauthAuthorizeRequest2));
        System.assert(oauthAuthorizeRequest2.equals(oauthAuthorizeRequest1));
        System.assert(oauthAuthorizeRequest1.equals(oauthAuthorizeRequest1));
        System.assert(oauthAuthorizeRequest3.equals(oauthAuthorizeRequest4));
        System.assert(oauthAuthorizeRequest4.equals(oauthAuthorizeRequest3));
        System.assert(oauthAuthorizeRequest3.equals(oauthAuthorizeRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOAuthAuthorizeRequest oauthAuthorizeRequest1 = OASOAuthAuthorizeRequest.getExample();
        OASOAuthAuthorizeRequest oauthAuthorizeRequest2 = OASOAuthAuthorizeRequest.getExample();
        OASOAuthAuthorizeRequest oauthAuthorizeRequest3 = new OASOAuthAuthorizeRequest();
        OASOAuthAuthorizeRequest oauthAuthorizeRequest4 = new OASOAuthAuthorizeRequest();

        System.assert(oauthAuthorizeRequest1.equals(oauthAuthorizeRequest2));
        System.assert(oauthAuthorizeRequest2.equals(oauthAuthorizeRequest1));
        System.assert(oauthAuthorizeRequest3.equals(oauthAuthorizeRequest4));
        System.assert(oauthAuthorizeRequest4.equals(oauthAuthorizeRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOAuthAuthorizeRequest oauthAuthorizeRequest1 = OASOAuthAuthorizeRequest.getExample();
        OASOAuthAuthorizeRequest oauthAuthorizeRequest2 = new OASOAuthAuthorizeRequest();

        System.assertEquals(false, oauthAuthorizeRequest1.equals('foo'));
        System.assertEquals(false, oauthAuthorizeRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOAuthAuthorizeRequest oauthAuthorizeRequest1 = OASOAuthAuthorizeRequest.getExample();
        OASOAuthAuthorizeRequest oauthAuthorizeRequest2 = new OASOAuthAuthorizeRequest();
        OASOAuthAuthorizeRequest oauthAuthorizeRequest3;

        System.assertEquals(false, oauthAuthorizeRequest1.equals(oauthAuthorizeRequest3));
        System.assertEquals(false, oauthAuthorizeRequest2.equals(oauthAuthorizeRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOAuthAuthorizeRequest oauthAuthorizeRequest1 = OASOAuthAuthorizeRequest.getExample();
        OASOAuthAuthorizeRequest oauthAuthorizeRequest2 = new OASOAuthAuthorizeRequest();

        System.assertEquals(oauthAuthorizeRequest1.hashCode(), oauthAuthorizeRequest1.hashCode());
        System.assertEquals(oauthAuthorizeRequest2.hashCode(), oauthAuthorizeRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOAuthAuthorizeRequest oauthAuthorizeRequest1 = OASOAuthAuthorizeRequest.getExample();
        OASOAuthAuthorizeRequest oauthAuthorizeRequest2 = OASOAuthAuthorizeRequest.getExample();
        OASOAuthAuthorizeRequest oauthAuthorizeRequest3 = new OASOAuthAuthorizeRequest();
        OASOAuthAuthorizeRequest oauthAuthorizeRequest4 = new OASOAuthAuthorizeRequest();

        System.assert(oauthAuthorizeRequest1.equals(oauthAuthorizeRequest2));
        System.assert(oauthAuthorizeRequest3.equals(oauthAuthorizeRequest4));
        System.assertEquals(oauthAuthorizeRequest1.hashCode(), oauthAuthorizeRequest2.hashCode());
        System.assertEquals(oauthAuthorizeRequest3.hashCode(), oauthAuthorizeRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOAuthAuthorizeRequest oauthAuthorizeRequest = new OASOAuthAuthorizeRequest();
        Map<String, String> x-property-mappings = oauthAuthorizeRequest.getx-property-mappings();
        System.assertEquals('redirectUri', x-property-mappings.get('redirect_uri'));
    }
}
