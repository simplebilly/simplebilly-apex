@isTest
private class OASOAuthAuthorizeResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASOAuthAuthorizeResponse oauthAuthorizeResponse1 = OASOAuthAuthorizeResponse.getExample();
        OASOAuthAuthorizeResponse oauthAuthorizeResponse2 = oauthAuthorizeResponse1;
        OASOAuthAuthorizeResponse oauthAuthorizeResponse3 = new OASOAuthAuthorizeResponse();
        OASOAuthAuthorizeResponse oauthAuthorizeResponse4 = oauthAuthorizeResponse3;

        System.assert(oauthAuthorizeResponse1.equals(oauthAuthorizeResponse2));
        System.assert(oauthAuthorizeResponse2.equals(oauthAuthorizeResponse1));
        System.assert(oauthAuthorizeResponse1.equals(oauthAuthorizeResponse1));
        System.assert(oauthAuthorizeResponse3.equals(oauthAuthorizeResponse4));
        System.assert(oauthAuthorizeResponse4.equals(oauthAuthorizeResponse3));
        System.assert(oauthAuthorizeResponse3.equals(oauthAuthorizeResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOAuthAuthorizeResponse oauthAuthorizeResponse1 = OASOAuthAuthorizeResponse.getExample();
        OASOAuthAuthorizeResponse oauthAuthorizeResponse2 = OASOAuthAuthorizeResponse.getExample();
        OASOAuthAuthorizeResponse oauthAuthorizeResponse3 = new OASOAuthAuthorizeResponse();
        OASOAuthAuthorizeResponse oauthAuthorizeResponse4 = new OASOAuthAuthorizeResponse();

        System.assert(oauthAuthorizeResponse1.equals(oauthAuthorizeResponse2));
        System.assert(oauthAuthorizeResponse2.equals(oauthAuthorizeResponse1));
        System.assert(oauthAuthorizeResponse3.equals(oauthAuthorizeResponse4));
        System.assert(oauthAuthorizeResponse4.equals(oauthAuthorizeResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOAuthAuthorizeResponse oauthAuthorizeResponse1 = OASOAuthAuthorizeResponse.getExample();
        OASOAuthAuthorizeResponse oauthAuthorizeResponse2 = new OASOAuthAuthorizeResponse();

        System.assertEquals(false, oauthAuthorizeResponse1.equals('foo'));
        System.assertEquals(false, oauthAuthorizeResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOAuthAuthorizeResponse oauthAuthorizeResponse1 = OASOAuthAuthorizeResponse.getExample();
        OASOAuthAuthorizeResponse oauthAuthorizeResponse2 = new OASOAuthAuthorizeResponse();
        OASOAuthAuthorizeResponse oauthAuthorizeResponse3;

        System.assertEquals(false, oauthAuthorizeResponse1.equals(oauthAuthorizeResponse3));
        System.assertEquals(false, oauthAuthorizeResponse2.equals(oauthAuthorizeResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOAuthAuthorizeResponse oauthAuthorizeResponse1 = OASOAuthAuthorizeResponse.getExample();
        OASOAuthAuthorizeResponse oauthAuthorizeResponse2 = new OASOAuthAuthorizeResponse();

        System.assertEquals(oauthAuthorizeResponse1.hashCode(), oauthAuthorizeResponse1.hashCode());
        System.assertEquals(oauthAuthorizeResponse2.hashCode(), oauthAuthorizeResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOAuthAuthorizeResponse oauthAuthorizeResponse1 = OASOAuthAuthorizeResponse.getExample();
        OASOAuthAuthorizeResponse oauthAuthorizeResponse2 = OASOAuthAuthorizeResponse.getExample();
        OASOAuthAuthorizeResponse oauthAuthorizeResponse3 = new OASOAuthAuthorizeResponse();
        OASOAuthAuthorizeResponse oauthAuthorizeResponse4 = new OASOAuthAuthorizeResponse();

        System.assert(oauthAuthorizeResponse1.equals(oauthAuthorizeResponse2));
        System.assert(oauthAuthorizeResponse3.equals(oauthAuthorizeResponse4));
        System.assertEquals(oauthAuthorizeResponse1.hashCode(), oauthAuthorizeResponse2.hashCode());
        System.assertEquals(oauthAuthorizeResponse3.hashCode(), oauthAuthorizeResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOAuthAuthorizeResponse oauthAuthorizeResponse = new OASOAuthAuthorizeResponse();
        Map<String, String> x-property-mappings = oauthAuthorizeResponse.getx-property-mappings();
        System.assertEquals('authorizationUrl', x-property-mappings.get('authorization_url'));
    }
}
