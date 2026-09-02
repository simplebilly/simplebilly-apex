@isTest
private class OASPaymentApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createPaymentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSPaymentCreate' => ''
        };

        OASClient client;
        OASPaymentApi api;
        OASPayment response;
        OASPayment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPaymentApi(client);

        js = JSON.serialize(OASPayment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayment.getExample();
        response = (OASPayment) api.createPayment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPayment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayment.getExample();
        response = (OASPayment) api.createPayment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPayment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayment.getExample();
        response = (OASPayment) api.createPayment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deletePaymentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASPaymentApi api;
        String js = '';

        client = new OASClient();
        api = new OASPaymentApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deletePayment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deletePayment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getPaymentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASPaymentApi api;
        OASPayment response;
        OASPayment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPaymentApi(client);

        js = JSON.serialize(OASPayment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayment.getExample();
        response = (OASPayment) api.getPayment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPayment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayment.getExample();
        response = (OASPayment) api.getPayment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPayment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayment.getExample();
        response = (OASPayment) api.getPayment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getPaymentsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => 1,
            'pageSize' => '',
            'search' => 'null',
            'includeDeleted' => ''
        };

        OASClient client;
        OASPaymentApi api;
        List<OASPayment> response;
        List<OASPayment> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPaymentApi(client);

        js = JSON.serialize(new List<OASPayment>{OASPayment.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPayment>{OASPayment.getExample()};
        response = (List<OASPayment>) api.getPayments(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASPayment>{OASPayment.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPayment>{OASPayment.getExample()};
        response = (List<OASPayment>) api.getPayments(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void paymentRestoreTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASPaymentApi api;
        OASPayment response;
        OASPayment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPaymentApi(client);

        js = JSON.serialize(OASPayment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayment.getExample();
        response = (OASPayment) api.paymentRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPayment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayment.getExample();
        response = (OASPayment) api.paymentRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPayment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayment.getExample();
        response = (OASPayment) api.paymentRestore(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updatePaymentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'body' => ''
        };

        OASClient client;
        OASPaymentApi api;
        OASPayment response;
        OASPayment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPaymentApi(client);

        js = JSON.serialize(OASPayment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayment.getExample();
        response = (OASPayment) api.updatePayment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPayment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayment.getExample();
        response = (OASPayment) api.updatePayment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPayment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayment.getExample();
        response = (OASPayment) api.updatePayment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPayment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayment.getExample();
        response = (OASPayment) api.updatePayment(params);
        System.assertEquals(expectedResponse, response);
    }
}