@isTest
private class OASDeliveryDateApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createDeliveryDateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSDeliveryDateCreate' => ''
        };

        OASClient client;
        OASDeliveryDateApi api;
        OASDeliveryDate response;
        OASDeliveryDate expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryDateApi(client);

        js = JSON.serialize(OASDeliveryDate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryDate.getExample();
        response = (OASDeliveryDate) api.createDeliveryDate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryDate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryDate.getExample();
        response = (OASDeliveryDate) api.createDeliveryDate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryDate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryDate.getExample();
        response = (OASDeliveryDate) api.createDeliveryDate(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteDeliveryDateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'deliveryDateId' => 'null'
        };

        OASClient client;
        OASDeliveryDateApi api;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryDateApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteDeliveryDate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteDeliveryDate(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getDeliveryDateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'deliveryDateId' => 'null'
        };

        OASClient client;
        OASDeliveryDateApi api;
        OASDeliveryDate response;
        OASDeliveryDate expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryDateApi(client);

        js = JSON.serialize(OASDeliveryDate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryDate.getExample();
        response = (OASDeliveryDate) api.getDeliveryDate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryDate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryDate.getExample();
        response = (OASDeliveryDate) api.getDeliveryDate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryDate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryDate.getExample();
        response = (OASDeliveryDate) api.getDeliveryDate(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * On-time performance summary: how many promised delivery dates were met\nwithin a period.
     *
     * 
     */
    @isTest
    private static void getDeliveryPerformanceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'orderNumber' => 'null',
            'status' => 'null',
            'r_from' => Date.newInstance(1960, 2, 17),
            'to' => Date.newInstance(1960, 2, 17)
        };

        OASClient client;
        OASDeliveryDateApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryDateApi(client);

        js = JSON.serialize(oas_any_type_not_mapped.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = oas_any_type_not_mapped.getExample();
        response = (oas_any_type_not_mapped) api.getDeliveryPerformance(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listDeliveryDatesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'orderNumber' => 'null',
            'status' => 'null',
            'r_from' => Date.newInstance(1960, 2, 17),
            'to' => Date.newInstance(1960, 2, 17)
        };

        OASClient client;
        OASDeliveryDateApi api;
        List<OASDeliveryDate> response;
        List<OASDeliveryDate> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryDateApi(client);

        js = JSON.serialize(new List<OASDeliveryDate>{OASDeliveryDate.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDeliveryDate>{OASDeliveryDate.getExample()};
        response = (List<OASDeliveryDate>) api.listDeliveryDates(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASDeliveryDate>{OASDeliveryDate.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDeliveryDate>{OASDeliveryDate.getExample()};
        response = (List<OASDeliveryDate>) api.listDeliveryDates(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateDeliveryDateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'deliveryDateId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASDeliveryDateApi api;
        OASDeliveryDate response;
        OASDeliveryDate expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryDateApi(client);

        js = JSON.serialize(OASDeliveryDate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryDate.getExample();
        response = (OASDeliveryDate) api.updateDeliveryDate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryDate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryDate.getExample();
        response = (OASDeliveryDate) api.updateDeliveryDate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryDate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryDate.getExample();
        response = (OASDeliveryDate) api.updateDeliveryDate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryDate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryDate.getExample();
        response = (OASDeliveryDate) api.updateDeliveryDate(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateDeliveryDateStatusTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'deliveryDateId' => 'null',
            'oaSDeliveryDateStatusUpdate' => ''
        };

        OASClient client;
        OASDeliveryDateApi api;
        OASDeliveryDate response;
        OASDeliveryDate expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryDateApi(client);

        js = JSON.serialize(OASDeliveryDate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryDate.getExample();
        response = (OASDeliveryDate) api.updateDeliveryDateStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryDate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryDate.getExample();
        response = (OASDeliveryDate) api.updateDeliveryDateStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryDate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryDate.getExample();
        response = (OASDeliveryDate) api.updateDeliveryDateStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryDate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryDate.getExample();
        response = (OASDeliveryDate) api.updateDeliveryDateStatus(params);
        System.assertEquals(expectedResponse, response);
    }
}