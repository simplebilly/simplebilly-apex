@isTest
private class OASRfqApiTest {
    /**
     * Convert an RFQ into a draft purchase order using the quoted unit prices\n(falling back to the requested prices, then leaving them blank). Marks the\nRFQ as &#x60;converted&#x60;.
     *
     * 
     */
    @isTest
    private static void convertRfqTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'rfqId' => 'null'
        };

        OASClient client;
        OASRfqApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRfqApi(client);

        js = JSON.serialize(oas_any_type_not_mapped.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = oas_any_type_not_mapped.getExample();
        response = (oas_any_type_not_mapped) api.convertRfq(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(oas_any_type_not_mapped.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = oas_any_type_not_mapped.getExample();
        response = (oas_any_type_not_mapped) api.convertRfq(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(oas_any_type_not_mapped.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = oas_any_type_not_mapped.getExample();
        response = (oas_any_type_not_mapped) api.convertRfq(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void createRfqTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSRfq' => ''
        };

        OASClient client;
        OASRfqApi api;
        OASRfq response;
        OASRfq expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRfqApi(client);

        js = JSON.serialize(OASRfq.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRfq.getExample();
        response = (OASRfq) api.createRfq(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRfq.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRfq.getExample();
        response = (OASRfq) api.createRfq(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRfq.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRfq.getExample();
        response = (OASRfq) api.createRfq(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteRfqTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'rfqId' => 'null'
        };

        OASClient client;
        OASRfqApi api;
        String js = '';

        client = new OASClient();
        api = new OASRfqApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteRfq(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteRfq(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteRfq(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getRfqTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'rfqId' => 'null'
        };

        OASClient client;
        OASRfqApi api;
        OASRfq response;
        OASRfq expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRfqApi(client);

        js = JSON.serialize(OASRfq.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRfq.getExample();
        response = (OASRfq) api.getRfq(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRfq.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRfq.getExample();
        response = (OASRfq) api.getRfq(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRfq.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRfq.getExample();
        response = (OASRfq) api.getRfq(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listRfqsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'status' => 'null',
            'supplierName' => 'null'
        };

        OASClient client;
        OASRfqApi api;
        List<OASRfq> response;
        List<OASRfq> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRfqApi(client);

        js = JSON.serialize(new List<OASRfq>{OASRfq.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASRfq>{OASRfq.getExample()};
        response = (List<OASRfq>) api.listRfqs(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASRfq>{OASRfq.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASRfq>{OASRfq.getExample()};
        response = (List<OASRfq>) api.listRfqs(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateRfqTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'rfqId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASRfqApi api;
        OASRfq response;
        OASRfq expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRfqApi(client);

        js = JSON.serialize(OASRfq.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRfq.getExample();
        response = (OASRfq) api.updateRfq(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRfq.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRfq.getExample();
        response = (OASRfq) api.updateRfq(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRfq.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRfq.getExample();
        response = (OASRfq) api.updateRfq(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRfq.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRfq.getExample();
        response = (OASRfq) api.updateRfq(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateRfqStatusTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'rfqId' => 'null',
            'oaSRfqStatusUpdate' => ''
        };

        OASClient client;
        OASRfqApi api;
        OASRfq response;
        OASRfq expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRfqApi(client);

        js = JSON.serialize(OASRfq.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRfq.getExample();
        response = (OASRfq) api.updateRfqStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRfq.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRfq.getExample();
        response = (OASRfq) api.updateRfqStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRfq.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRfq.getExample();
        response = (OASRfq) api.updateRfqStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRfq.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRfq.getExample();
        response = (OASRfq) api.updateRfqStatus(params);
        System.assertEquals(expectedResponse, response);
    }
}