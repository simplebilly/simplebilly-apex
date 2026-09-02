@isTest
private class OASInventoryValueApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void getInventoryValueApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASInventoryValueApi api;
        OASCurrentInventoryValue response;
        OASCurrentInventoryValue expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASInventoryValueApi(client);

        js = JSON.serialize(OASCurrentInventoryValue.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCurrentInventoryValue.getExample();
        response = (OASCurrentInventoryValue) api.getInventoryValueApi();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCurrentInventoryValue.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCurrentInventoryValue.getExample();
        response = (OASCurrentInventoryValue) api.getInventoryValueApi();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void recordInventoryValueApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASInventoryValueApi api;
        OASInventoryValuePoint response;
        OASInventoryValuePoint expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASInventoryValueApi(client);

        js = JSON.serialize(OASInventoryValuePoint.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInventoryValuePoint.getExample();
        response = (OASInventoryValuePoint) api.recordInventoryValueApi();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInventoryValuePoint.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInventoryValuePoint.getExample();
        response = (OASInventoryValuePoint) api.recordInventoryValueApi();
        System.assertEquals(expectedResponse, response);
    }
}