@isTest
private class OASCustomerApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createCustomerTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSCustomerCreate' => ''
        };

        OASClient client;
        OASCustomerApi api;
        OASCustomer response;
        OASCustomer expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomerApi(client);

        js = JSON.serialize(OASCustomer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomer.getExample();
        response = (OASCustomer) api.createCustomer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomer.getExample();
        response = (OASCustomer) api.createCustomer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomer.getExample();
        response = (OASCustomer) api.createCustomer(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void customerRestoreTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'customerId' => 'null'
        };

        OASClient client;
        OASCustomerApi api;
        OASCustomer response;
        OASCustomer expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomerApi(client);

        js = JSON.serialize(OASCustomer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomer.getExample();
        response = (OASCustomer) api.customerRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomer.getExample();
        response = (OASCustomer) api.customerRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomer.getExample();
        response = (OASCustomer) api.customerRestore(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteCustomerTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'customerId' => 'null'
        };

        OASClient client;
        OASCustomerApi api;
        String js = '';

        client = new OASClient();
        api = new OASCustomerApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteCustomer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteCustomer(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getCustomerTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'customerId' => 'null'
        };

        OASClient client;
        OASCustomerApi api;
        OASCustomer response;
        OASCustomer expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomerApi(client);

        js = JSON.serialize(OASCustomer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomer.getExample();
        response = (OASCustomer) api.getCustomer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomer.getExample();
        response = (OASCustomer) api.getCustomer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomer.getExample();
        response = (OASCustomer) api.getCustomer(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getCustomersTest() {
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
        OASCustomerApi api;
        List<OASCustomer> response;
        List<OASCustomer> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomerApi(client);

        js = JSON.serialize(new List<OASCustomer>{OASCustomer.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCustomer>{OASCustomer.getExample()};
        response = (List<OASCustomer>) api.getCustomers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASCustomer>{OASCustomer.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCustomer>{OASCustomer.getExample()};
        response = (List<OASCustomer>) api.getCustomers(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateCustomerTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'customerId' => 'null',
            'oaSCustomerUpdate' => ''
        };

        OASClient client;
        OASCustomerApi api;
        OASCustomer response;
        OASCustomer expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomerApi(client);

        js = JSON.serialize(OASCustomer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomer.getExample();
        response = (OASCustomer) api.updateCustomer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomer.getExample();
        response = (OASCustomer) api.updateCustomer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomer.getExample();
        response = (OASCustomer) api.updateCustomer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomer.getExample();
        response = (OASCustomer) api.updateCustomer(params);
        System.assertEquals(expectedResponse, response);
    }
}