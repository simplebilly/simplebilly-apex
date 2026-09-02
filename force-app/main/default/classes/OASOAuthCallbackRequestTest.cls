@isTest
private class OASOAuthCallbackRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASOAuthCallbackRequest oauthCallbackRequest1 = OASOAuthCallbackRequest.getExample();
        OASOAuthCallbackRequest oauthCallbackRequest2 = oauthCallbackRequest1;
        OASOAuthCallbackRequest oauthCallbackRequest3 = new OASOAuthCallbackRequest();
        OASOAuthCallbackRequest oauthCallbackRequest4 = oauthCallbackRequest3;

        System.assert(oauthCallbackRequest1.equals(oauthCallbackRequest2));
        System.assert(oauthCallbackRequest2.equals(oauthCallbackRequest1));
        System.assert(oauthCallbackRequest1.equals(oauthCallbackRequest1));
        System.assert(oauthCallbackRequest3.equals(oauthCallbackRequest4));
        System.assert(oauthCallbackRequest4.equals(oauthCallbackRequest3));
        System.assert(oauthCallbackRequest3.equals(oauthCallbackRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOAuthCallbackRequest oauthCallbackRequest1 = OASOAuthCallbackRequest.getExample();
        OASOAuthCallbackRequest oauthCallbackRequest2 = OASOAuthCallbackRequest.getExample();
        OASOAuthCallbackRequest oauthCallbackRequest3 = new OASOAuthCallbackRequest();
        OASOAuthCallbackRequest oauthCallbackRequest4 = new OASOAuthCallbackRequest();

        System.assert(oauthCallbackRequest1.equals(oauthCallbackRequest2));
        System.assert(oauthCallbackRequest2.equals(oauthCallbackRequest1));
        System.assert(oauthCallbackRequest3.equals(oauthCallbackRequest4));
        System.assert(oauthCallbackRequest4.equals(oauthCallbackRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOAuthCallbackRequest oauthCallbackRequest1 = OASOAuthCallbackRequest.getExample();
        OASOAuthCallbackRequest oauthCallbackRequest2 = new OASOAuthCallbackRequest();

        System.assertEquals(false, oauthCallbackRequest1.equals('foo'));
        System.assertEquals(false, oauthCallbackRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOAuthCallbackRequest oauthCallbackRequest1 = OASOAuthCallbackRequest.getExample();
        OASOAuthCallbackRequest oauthCallbackRequest2 = new OASOAuthCallbackRequest();
        OASOAuthCallbackRequest oauthCallbackRequest3;

        System.assertEquals(false, oauthCallbackRequest1.equals(oauthCallbackRequest3));
        System.assertEquals(false, oauthCallbackRequest2.equals(oauthCallbackRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOAuthCallbackRequest oauthCallbackRequest1 = OASOAuthCallbackRequest.getExample();
        OASOAuthCallbackRequest oauthCallbackRequest2 = new OASOAuthCallbackRequest();

        System.assertEquals(oauthCallbackRequest1.hashCode(), oauthCallbackRequest1.hashCode());
        System.assertEquals(oauthCallbackRequest2.hashCode(), oauthCallbackRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOAuthCallbackRequest oauthCallbackRequest1 = OASOAuthCallbackRequest.getExample();
        OASOAuthCallbackRequest oauthCallbackRequest2 = OASOAuthCallbackRequest.getExample();
        OASOAuthCallbackRequest oauthCallbackRequest3 = new OASOAuthCallbackRequest();
        OASOAuthCallbackRequest oauthCallbackRequest4 = new OASOAuthCallbackRequest();

        System.assert(oauthCallbackRequest1.equals(oauthCallbackRequest2));
        System.assert(oauthCallbackRequest3.equals(oauthCallbackRequest4));
        System.assertEquals(oauthCallbackRequest1.hashCode(), oauthCallbackRequest2.hashCode());
        System.assertEquals(oauthCallbackRequest3.hashCode(), oauthCallbackRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOAuthCallbackRequest oauthCallbackRequest = new OASOAuthCallbackRequest();
        Map<String, String> x-property-mappings = oauthCallbackRequest.getx-property-mappings();
        System.assertEquals('connectionId', x-property-mappings.get('connection_id'));
        System.assertEquals('shopDomain', x-property-mappings.get('shop_domain'));
    }
}
