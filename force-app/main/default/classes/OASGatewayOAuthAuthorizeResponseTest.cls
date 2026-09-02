@isTest
private class OASGatewayOAuthAuthorizeResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse1 = OASGatewayOAuthAuthorizeResponse.getExample();
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse2 = gatewayOAuthAuthorizeResponse1;
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse3 = new OASGatewayOAuthAuthorizeResponse();
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse4 = gatewayOAuthAuthorizeResponse3;

        System.assert(gatewayOAuthAuthorizeResponse1.equals(gatewayOAuthAuthorizeResponse2));
        System.assert(gatewayOAuthAuthorizeResponse2.equals(gatewayOAuthAuthorizeResponse1));
        System.assert(gatewayOAuthAuthorizeResponse1.equals(gatewayOAuthAuthorizeResponse1));
        System.assert(gatewayOAuthAuthorizeResponse3.equals(gatewayOAuthAuthorizeResponse4));
        System.assert(gatewayOAuthAuthorizeResponse4.equals(gatewayOAuthAuthorizeResponse3));
        System.assert(gatewayOAuthAuthorizeResponse3.equals(gatewayOAuthAuthorizeResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse1 = OASGatewayOAuthAuthorizeResponse.getExample();
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse2 = OASGatewayOAuthAuthorizeResponse.getExample();
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse3 = new OASGatewayOAuthAuthorizeResponse();
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse4 = new OASGatewayOAuthAuthorizeResponse();

        System.assert(gatewayOAuthAuthorizeResponse1.equals(gatewayOAuthAuthorizeResponse2));
        System.assert(gatewayOAuthAuthorizeResponse2.equals(gatewayOAuthAuthorizeResponse1));
        System.assert(gatewayOAuthAuthorizeResponse3.equals(gatewayOAuthAuthorizeResponse4));
        System.assert(gatewayOAuthAuthorizeResponse4.equals(gatewayOAuthAuthorizeResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse1 = OASGatewayOAuthAuthorizeResponse.getExample();
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse2 = new OASGatewayOAuthAuthorizeResponse();

        System.assertEquals(false, gatewayOAuthAuthorizeResponse1.equals('foo'));
        System.assertEquals(false, gatewayOAuthAuthorizeResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse1 = OASGatewayOAuthAuthorizeResponse.getExample();
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse2 = new OASGatewayOAuthAuthorizeResponse();
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse3;

        System.assertEquals(false, gatewayOAuthAuthorizeResponse1.equals(gatewayOAuthAuthorizeResponse3));
        System.assertEquals(false, gatewayOAuthAuthorizeResponse2.equals(gatewayOAuthAuthorizeResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse1 = OASGatewayOAuthAuthorizeResponse.getExample();
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse2 = new OASGatewayOAuthAuthorizeResponse();

        System.assertEquals(gatewayOAuthAuthorizeResponse1.hashCode(), gatewayOAuthAuthorizeResponse1.hashCode());
        System.assertEquals(gatewayOAuthAuthorizeResponse2.hashCode(), gatewayOAuthAuthorizeResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse1 = OASGatewayOAuthAuthorizeResponse.getExample();
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse2 = OASGatewayOAuthAuthorizeResponse.getExample();
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse3 = new OASGatewayOAuthAuthorizeResponse();
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse4 = new OASGatewayOAuthAuthorizeResponse();

        System.assert(gatewayOAuthAuthorizeResponse1.equals(gatewayOAuthAuthorizeResponse2));
        System.assert(gatewayOAuthAuthorizeResponse3.equals(gatewayOAuthAuthorizeResponse4));
        System.assertEquals(gatewayOAuthAuthorizeResponse1.hashCode(), gatewayOAuthAuthorizeResponse2.hashCode());
        System.assertEquals(gatewayOAuthAuthorizeResponse3.hashCode(), gatewayOAuthAuthorizeResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGatewayOAuthAuthorizeResponse gatewayOAuthAuthorizeResponse = new OASGatewayOAuthAuthorizeResponse();
        Map<String, String> x-property-mappings = gatewayOAuthAuthorizeResponse.getx-property-mappings();
        System.assertEquals('authorizationUrl', x-property-mappings.get('authorization_url'));
    }
}
