@isTest
private class OASPublicReturnsApiTest {
    /**
     * Customer checks the status of a return (public, no auth). The return is\nonly revealed when its linked order\&#39;s email matches.
     *
     * 
     */
    @isTest
    private static void getPublicReturnStatusTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'email' => 'null',
            'returnNumber' => 'null',
            'returnOrderId' => 'null',
            'orderNumber' => 'null'
        };

        OASClient client;
        OASPublicReturnsApi api;
        OASPublicReturnStatusResponse response;
        OASPublicReturnStatusResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPublicReturnsApi(client);

        js = JSON.serialize(OASPublicReturnStatusResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPublicReturnStatusResponse.getExample();
        response = (OASPublicReturnStatusResponse) api.getPublicReturnStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPublicReturnStatusResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPublicReturnStatusResponse.getExample();
        response = (OASPublicReturnStatusResponse) api.getPublicReturnStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPublicReturnStatusResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPublicReturnStatusResponse.getExample();
        response = (OASPublicReturnStatusResponse) api.getPublicReturnStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPublicReturnStatusResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPublicReturnStatusResponse.getExample();
        response = (OASPublicReturnStatusResponse) api.getPublicReturnStatus(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all returns for an order (public, no auth).
     *
     * 
     */
    @isTest
    private static void listPublicReturnsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'orderNumber' => 'null',
            'email' => 'null'
        };

        OASClient client;
        OASPublicReturnsApi api;
        List<OASPublicReturnStatusResponse> response;
        List<OASPublicReturnStatusResponse> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPublicReturnsApi(client);

        js = JSON.serialize(new List<OASPublicReturnStatusResponse>{OASPublicReturnStatusResponse.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPublicReturnStatusResponse>{OASPublicReturnStatusResponse.getExample()};
        response = (List<OASPublicReturnStatusResponse>) api.listPublicReturns(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASPublicReturnStatusResponse>{OASPublicReturnStatusResponse.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPublicReturnStatusResponse>{OASPublicReturnStatusResponse.getExample()};
        response = (List<OASPublicReturnStatusResponse>) api.listPublicReturns(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASPublicReturnStatusResponse>{OASPublicReturnStatusResponse.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPublicReturnStatusResponse>{OASPublicReturnStatusResponse.getExample()};
        response = (List<OASPublicReturnStatusResponse>) api.listPublicReturns(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Customer requests a return for an order (public, no auth).
     *
     * 
     */
    @isTest
    private static void requestPublicReturnTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSPublicReturnRequest' => ''
        };

        OASClient client;
        OASPublicReturnsApi api;
        OASPublicReturnResponse response;
        OASPublicReturnResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPublicReturnsApi(client);

        js = JSON.serialize(OASPublicReturnResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPublicReturnResponse.getExample();
        response = (OASPublicReturnResponse) api.requestPublicReturn(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPublicReturnResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPublicReturnResponse.getExample();
        response = (OASPublicReturnResponse) api.requestPublicReturn(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPublicReturnResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPublicReturnResponse.getExample();
        response = (OASPublicReturnResponse) api.requestPublicReturn(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPublicReturnResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPublicReturnResponse.getExample();
        response = (OASPublicReturnResponse) api.requestPublicReturn(params);
        System.assertEquals(expectedResponse, response);
    }
}