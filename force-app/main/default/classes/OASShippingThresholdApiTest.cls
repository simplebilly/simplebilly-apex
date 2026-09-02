@isTest
private class OASShippingThresholdApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createShippingThresholdTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSShippingThresholdCreate' => ''
        };

        OASClient client;
        OASShippingThresholdApi api;
        OASShippingThreshold response;
        OASShippingThreshold expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShippingThresholdApi(client);

        js = JSON.serialize(OASShippingThreshold.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingThreshold.getExample();
        response = (OASShippingThreshold) api.createShippingThreshold(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShippingThreshold.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingThreshold.getExample();
        response = (OASShippingThreshold) api.createShippingThreshold(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShippingThreshold.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingThreshold.getExample();
        response = (OASShippingThreshold) api.createShippingThreshold(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteShippingThresholdTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'thresholdId' => 'null'
        };

        OASClient client;
        OASShippingThresholdApi api;
        String js = '';

        client = new OASClient();
        api = new OASShippingThresholdApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteShippingThreshold(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteShippingThreshold(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getDeliverableTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'productId' => 'null',
            'warehouseId' => 'null'
        };

        OASClient client;
        OASShippingThresholdApi api;
        OASDeliverableResponse response;
        OASDeliverableResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShippingThresholdApi(client);

        js = JSON.serialize(OASDeliverableResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliverableResponse.getExample();
        response = (OASDeliverableResponse) api.getDeliverable(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliverableResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliverableResponse.getExample();
        response = (OASDeliverableResponse) api.getDeliverable(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getShippingThresholdTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'thresholdId' => 'null'
        };

        OASClient client;
        OASShippingThresholdApi api;
        OASShippingThreshold response;
        OASShippingThreshold expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShippingThresholdApi(client);

        js = JSON.serialize(OASShippingThreshold.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingThreshold.getExample();
        response = (OASShippingThreshold) api.getShippingThreshold(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShippingThreshold.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingThreshold.getExample();
        response = (OASShippingThreshold) api.getShippingThreshold(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShippingThreshold.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingThreshold.getExample();
        response = (OASShippingThreshold) api.getShippingThreshold(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listShippingThresholdsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'productId' => 'null',
            'warehouseId' => 'null',
            'isActive' => ''
        };

        OASClient client;
        OASShippingThresholdApi api;
        List<OASShippingThreshold> response;
        List<OASShippingThreshold> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShippingThresholdApi(client);

        js = JSON.serialize(new List<OASShippingThreshold>{OASShippingThreshold.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASShippingThreshold>{OASShippingThreshold.getExample()};
        response = (List<OASShippingThreshold>) api.listShippingThresholds(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASShippingThreshold>{OASShippingThreshold.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASShippingThreshold>{OASShippingThreshold.getExample()};
        response = (List<OASShippingThreshold>) api.listShippingThresholds(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateShippingThresholdTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'thresholdId' => 'null',
            'oaSShippingThresholdUpdate' => ''
        };

        OASClient client;
        OASShippingThresholdApi api;
        OASShippingThreshold response;
        OASShippingThreshold expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShippingThresholdApi(client);

        js = JSON.serialize(OASShippingThreshold.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingThreshold.getExample();
        response = (OASShippingThreshold) api.updateShippingThreshold(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShippingThreshold.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingThreshold.getExample();
        response = (OASShippingThreshold) api.updateShippingThreshold(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShippingThreshold.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingThreshold.getExample();
        response = (OASShippingThreshold) api.updateShippingThreshold(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShippingThreshold.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingThreshold.getExample();
        response = (OASShippingThreshold) api.updateShippingThreshold(params);
        System.assertEquals(expectedResponse, response);
    }
}