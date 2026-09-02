@isTest
private class OASPaymentGatewayApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createPaymentGatewayApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => ''
        };

        OASClient client;
        OASPaymentGatewayApi api;
        OASPaymentGateway response;
        OASPaymentGateway expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPaymentGatewayApi(client);

        js = JSON.serialize(OASPaymentGateway.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPaymentGateway.getExample();
        response = (OASPaymentGateway) api.createPaymentGatewayApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPaymentGateway.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPaymentGateway.getExample();
        response = (OASPaymentGateway) api.createPaymentGatewayApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPaymentGateway.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPaymentGateway.getExample();
        response = (OASPaymentGateway) api.createPaymentGatewayApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deletePaymentGatewayApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'gatewayId' => 'null'
        };

        OASClient client;
        OASPaymentGatewayApi api;
        String js = '';

        client = new OASClient();
        api = new OASPaymentGatewayApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deletePaymentGatewayApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deletePaymentGatewayApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listPaymentGatewaysApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASPaymentGatewayApi api;
        List<OASPaymentGateway> response;
        List<OASPaymentGateway> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPaymentGatewayApi(client);

        js = JSON.serialize(new List<OASPaymentGateway>{OASPaymentGateway.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPaymentGateway>{OASPaymentGateway.getExample()};
        response = (List<OASPaymentGateway>) api.listPaymentGatewaysApi();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASPaymentGateway>{OASPaymentGateway.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPaymentGateway>{OASPaymentGateway.getExample()};
        response = (List<OASPaymentGateway>) api.listPaymentGatewaysApi();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void oauthAuthorizeApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSGatewayOAuthAuthorizeRequest' => ''
        };

        OASClient client;
        OASPaymentGatewayApi api;
        OASGatewayOAuthAuthorizeResponse response;
        OASGatewayOAuthAuthorizeResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPaymentGatewayApi(client);

        js = JSON.serialize(OASGatewayOAuthAuthorizeResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGatewayOAuthAuthorizeResponse.getExample();
        response = (OASGatewayOAuthAuthorizeResponse) api.oauthAuthorizeApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASGatewayOAuthAuthorizeResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGatewayOAuthAuthorizeResponse.getExample();
        response = (OASGatewayOAuthAuthorizeResponse) api.oauthAuthorizeApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASGatewayOAuthAuthorizeResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGatewayOAuthAuthorizeResponse.getExample();
        response = (OASGatewayOAuthAuthorizeResponse) api.oauthAuthorizeApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void oauthCallbackApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSGatewayOAuthCallbackRequest' => ''
        };

        OASClient client;
        OASPaymentGatewayApi api;
        OASPaymentGateway response;
        OASPaymentGateway expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPaymentGatewayApi(client);

        js = JSON.serialize(OASPaymentGateway.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPaymentGateway.getExample();
        response = (OASPaymentGateway) api.oauthCallbackApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPaymentGateway.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPaymentGateway.getExample();
        response = (OASPaymentGateway) api.oauthCallbackApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPaymentGateway.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPaymentGateway.getExample();
        response = (OASPaymentGateway) api.oauthCallbackApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updatePaymentGatewayApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'gatewayId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASPaymentGatewayApi api;
        OASPaymentGateway response;
        OASPaymentGateway expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPaymentGatewayApi(client);

        js = JSON.serialize(OASPaymentGateway.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPaymentGateway.getExample();
        response = (OASPaymentGateway) api.updatePaymentGatewayApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPaymentGateway.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPaymentGateway.getExample();
        response = (OASPaymentGateway) api.updatePaymentGatewayApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPaymentGateway.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPaymentGateway.getExample();
        response = (OASPaymentGateway) api.updatePaymentGatewayApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPaymentGateway.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPaymentGateway.getExample();
        response = (OASPaymentGateway) api.updatePaymentGatewayApi(params);
        System.assertEquals(expectedResponse, response);
    }
}