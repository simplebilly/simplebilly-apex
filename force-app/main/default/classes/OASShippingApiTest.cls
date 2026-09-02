@isTest
private class OASShippingApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void getCredentialsApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASShippingApi api;
        OASShippingCredentials response;
        OASShippingCredentials expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShippingApi(client);

        js = JSON.serialize(OASShippingCredentials.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingCredentials.getExample();
        response = (OASShippingCredentials) api.getCredentialsApi();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShippingCredentials.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingCredentials.getExample();
        response = (OASShippingCredentials) api.getCredentialsApi();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getRatesApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSRateRequest' => ''
        };

        OASClient client;
        OASShippingApi api;
        OASRateResponse response;
        OASRateResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShippingApi(client);

        js = JSON.serialize(OASRateResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRateResponse.getExample();
        response = (OASRateResponse) api.getRatesApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRateResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRateResponse.getExample();
        response = (OASRateResponse) api.getRatesApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRateResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRateResponse.getExample();
        response = (OASRateResponse) api.getRatesApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listProvidersApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASShippingApi api;
        List<OASProviderInfo> response;
        List<OASProviderInfo> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShippingApi(client);

        js = JSON.serialize(new List<OASProviderInfo>{OASProviderInfo.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProviderInfo>{OASProviderInfo.getExample()};
        response = (List<OASProviderInfo>) api.listProvidersApi();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASProviderInfo>{OASProviderInfo.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProviderInfo>{OASProviderInfo.getExample()};
        response = (List<OASProviderInfo>) api.listProvidersApi();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void saveCredentialsApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSShippingCredentials' => ''
        };

        OASClient client;
        OASShippingApi api;
        OASShippingCredentials response;
        OASShippingCredentials expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShippingApi(client);

        js = JSON.serialize(OASShippingCredentials.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingCredentials.getExample();
        response = (OASShippingCredentials) api.saveCredentialsApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShippingCredentials.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingCredentials.getExample();
        response = (OASShippingCredentials) api.saveCredentialsApi(params);
        System.assertEquals(expectedResponse, response);
    }
}