@isTest
private class OASSuitabilityApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void shippingSuitabilityApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSSuitabilityRequest' => ''
        };

        OASClient client;
        OASSuitabilityApi api;
        OASSuitabilityResult response;
        OASSuitabilityResult expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSuitabilityApi(client);

        js = JSON.serialize(OASSuitabilityResult.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSuitabilityResult.getExample();
        response = (OASSuitabilityResult) api.shippingSuitabilityApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSuitabilityResult.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSuitabilityResult.getExample();
        response = (OASSuitabilityResult) api.shippingSuitabilityApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSuitabilityResult.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSuitabilityResult.getExample();
        response = (OASSuitabilityResult) api.shippingSuitabilityApi(params);
        System.assertEquals(expectedResponse, response);
    }
}