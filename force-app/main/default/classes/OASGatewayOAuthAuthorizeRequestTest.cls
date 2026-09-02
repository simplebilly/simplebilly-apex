@isTest
private class OASGatewayOAuthAuthorizeRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest1 = OASGatewayOAuthAuthorizeRequest.getExample();
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest2 = gatewayOAuthAuthorizeRequest1;
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest3 = new OASGatewayOAuthAuthorizeRequest();
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest4 = gatewayOAuthAuthorizeRequest3;

        System.assert(gatewayOAuthAuthorizeRequest1.equals(gatewayOAuthAuthorizeRequest2));
        System.assert(gatewayOAuthAuthorizeRequest2.equals(gatewayOAuthAuthorizeRequest1));
        System.assert(gatewayOAuthAuthorizeRequest1.equals(gatewayOAuthAuthorizeRequest1));
        System.assert(gatewayOAuthAuthorizeRequest3.equals(gatewayOAuthAuthorizeRequest4));
        System.assert(gatewayOAuthAuthorizeRequest4.equals(gatewayOAuthAuthorizeRequest3));
        System.assert(gatewayOAuthAuthorizeRequest3.equals(gatewayOAuthAuthorizeRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest1 = OASGatewayOAuthAuthorizeRequest.getExample();
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest2 = OASGatewayOAuthAuthorizeRequest.getExample();
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest3 = new OASGatewayOAuthAuthorizeRequest();
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest4 = new OASGatewayOAuthAuthorizeRequest();

        System.assert(gatewayOAuthAuthorizeRequest1.equals(gatewayOAuthAuthorizeRequest2));
        System.assert(gatewayOAuthAuthorizeRequest2.equals(gatewayOAuthAuthorizeRequest1));
        System.assert(gatewayOAuthAuthorizeRequest3.equals(gatewayOAuthAuthorizeRequest4));
        System.assert(gatewayOAuthAuthorizeRequest4.equals(gatewayOAuthAuthorizeRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest1 = OASGatewayOAuthAuthorizeRequest.getExample();
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest2 = new OASGatewayOAuthAuthorizeRequest();

        System.assertEquals(false, gatewayOAuthAuthorizeRequest1.equals('foo'));
        System.assertEquals(false, gatewayOAuthAuthorizeRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest1 = OASGatewayOAuthAuthorizeRequest.getExample();
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest2 = new OASGatewayOAuthAuthorizeRequest();
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest3;

        System.assertEquals(false, gatewayOAuthAuthorizeRequest1.equals(gatewayOAuthAuthorizeRequest3));
        System.assertEquals(false, gatewayOAuthAuthorizeRequest2.equals(gatewayOAuthAuthorizeRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest1 = OASGatewayOAuthAuthorizeRequest.getExample();
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest2 = new OASGatewayOAuthAuthorizeRequest();

        System.assertEquals(gatewayOAuthAuthorizeRequest1.hashCode(), gatewayOAuthAuthorizeRequest1.hashCode());
        System.assertEquals(gatewayOAuthAuthorizeRequest2.hashCode(), gatewayOAuthAuthorizeRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest1 = OASGatewayOAuthAuthorizeRequest.getExample();
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest2 = OASGatewayOAuthAuthorizeRequest.getExample();
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest3 = new OASGatewayOAuthAuthorizeRequest();
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest4 = new OASGatewayOAuthAuthorizeRequest();

        System.assert(gatewayOAuthAuthorizeRequest1.equals(gatewayOAuthAuthorizeRequest2));
        System.assert(gatewayOAuthAuthorizeRequest3.equals(gatewayOAuthAuthorizeRequest4));
        System.assertEquals(gatewayOAuthAuthorizeRequest1.hashCode(), gatewayOAuthAuthorizeRequest2.hashCode());
        System.assertEquals(gatewayOAuthAuthorizeRequest3.hashCode(), gatewayOAuthAuthorizeRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGatewayOAuthAuthorizeRequest gatewayOAuthAuthorizeRequest = new OASGatewayOAuthAuthorizeRequest();
        Map<String, String> x-property-mappings = gatewayOAuthAuthorizeRequest.getx-property-mappings();
        System.assertEquals('gatewayType', x-property-mappings.get('gateway_type'));
        System.assertEquals('redirectUri', x-property-mappings.get('redirect_uri'));
    }
}
