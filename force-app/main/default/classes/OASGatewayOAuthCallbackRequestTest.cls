@isTest
private class OASGatewayOAuthCallbackRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest1 = OASGatewayOAuthCallbackRequest.getExample();
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest2 = gatewayOAuthCallbackRequest1;
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest3 = new OASGatewayOAuthCallbackRequest();
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest4 = gatewayOAuthCallbackRequest3;

        System.assert(gatewayOAuthCallbackRequest1.equals(gatewayOAuthCallbackRequest2));
        System.assert(gatewayOAuthCallbackRequest2.equals(gatewayOAuthCallbackRequest1));
        System.assert(gatewayOAuthCallbackRequest1.equals(gatewayOAuthCallbackRequest1));
        System.assert(gatewayOAuthCallbackRequest3.equals(gatewayOAuthCallbackRequest4));
        System.assert(gatewayOAuthCallbackRequest4.equals(gatewayOAuthCallbackRequest3));
        System.assert(gatewayOAuthCallbackRequest3.equals(gatewayOAuthCallbackRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest1 = OASGatewayOAuthCallbackRequest.getExample();
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest2 = OASGatewayOAuthCallbackRequest.getExample();
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest3 = new OASGatewayOAuthCallbackRequest();
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest4 = new OASGatewayOAuthCallbackRequest();

        System.assert(gatewayOAuthCallbackRequest1.equals(gatewayOAuthCallbackRequest2));
        System.assert(gatewayOAuthCallbackRequest2.equals(gatewayOAuthCallbackRequest1));
        System.assert(gatewayOAuthCallbackRequest3.equals(gatewayOAuthCallbackRequest4));
        System.assert(gatewayOAuthCallbackRequest4.equals(gatewayOAuthCallbackRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest1 = OASGatewayOAuthCallbackRequest.getExample();
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest2 = new OASGatewayOAuthCallbackRequest();

        System.assertEquals(false, gatewayOAuthCallbackRequest1.equals('foo'));
        System.assertEquals(false, gatewayOAuthCallbackRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest1 = OASGatewayOAuthCallbackRequest.getExample();
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest2 = new OASGatewayOAuthCallbackRequest();
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest3;

        System.assertEquals(false, gatewayOAuthCallbackRequest1.equals(gatewayOAuthCallbackRequest3));
        System.assertEquals(false, gatewayOAuthCallbackRequest2.equals(gatewayOAuthCallbackRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest1 = OASGatewayOAuthCallbackRequest.getExample();
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest2 = new OASGatewayOAuthCallbackRequest();

        System.assertEquals(gatewayOAuthCallbackRequest1.hashCode(), gatewayOAuthCallbackRequest1.hashCode());
        System.assertEquals(gatewayOAuthCallbackRequest2.hashCode(), gatewayOAuthCallbackRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest1 = OASGatewayOAuthCallbackRequest.getExample();
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest2 = OASGatewayOAuthCallbackRequest.getExample();
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest3 = new OASGatewayOAuthCallbackRequest();
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest4 = new OASGatewayOAuthCallbackRequest();

        System.assert(gatewayOAuthCallbackRequest1.equals(gatewayOAuthCallbackRequest2));
        System.assert(gatewayOAuthCallbackRequest3.equals(gatewayOAuthCallbackRequest4));
        System.assertEquals(gatewayOAuthCallbackRequest1.hashCode(), gatewayOAuthCallbackRequest2.hashCode());
        System.assertEquals(gatewayOAuthCallbackRequest3.hashCode(), gatewayOAuthCallbackRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGatewayOAuthCallbackRequest gatewayOAuthCallbackRequest = new OASGatewayOAuthCallbackRequest();
        Map<String, String> x-property-mappings = gatewayOAuthCallbackRequest.getx-property-mappings();
        System.assertEquals('gatewayType', x-property-mappings.get('gateway_type'));
        System.assertEquals('redirectUri', x-property-mappings.get('redirect_uri'));
    }
}
