@isTest
private class OASCustomerCommunicationApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createCommunicationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSCustomerCommunicationCreate' => ''
        };

        OASClient client;
        OASCustomerCommunicationApi api;
        OASCustomerCommunication response;
        OASCustomerCommunication expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomerCommunicationApi(client);

        js = JSON.serialize(OASCustomerCommunication.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerCommunication.getExample();
        response = (OASCustomerCommunication) api.createCommunication(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomerCommunication.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerCommunication.getExample();
        response = (OASCustomerCommunication) api.createCommunication(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomerCommunication.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerCommunication.getExample();
        response = (OASCustomerCommunication) api.createCommunication(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void customercommunicationRestoreTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'communicationId' => 'null'
        };

        OASClient client;
        OASCustomerCommunicationApi api;
        OASCustomerCommunication response;
        OASCustomerCommunication expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomerCommunicationApi(client);

        js = JSON.serialize(OASCustomerCommunication.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerCommunication.getExample();
        response = (OASCustomerCommunication) api.customercommunicationRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomerCommunication.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerCommunication.getExample();
        response = (OASCustomerCommunication) api.customercommunicationRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomerCommunication.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerCommunication.getExample();
        response = (OASCustomerCommunication) api.customercommunicationRestore(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteCommunicationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'communicationId' => 'null'
        };

        OASClient client;
        OASCustomerCommunicationApi api;
        String js = '';

        client = new OASClient();
        api = new OASCustomerCommunicationApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteCommunication(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteCommunication(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getCommunicationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'communicationId' => 'null'
        };

        OASClient client;
        OASCustomerCommunicationApi api;
        OASCustomerCommunication response;
        OASCustomerCommunication expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomerCommunicationApi(client);

        js = JSON.serialize(OASCustomerCommunication.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerCommunication.getExample();
        response = (OASCustomerCommunication) api.getCommunication(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomerCommunication.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerCommunication.getExample();
        response = (OASCustomerCommunication) api.getCommunication(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomerCommunication.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerCommunication.getExample();
        response = (OASCustomerCommunication) api.getCommunication(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getContactHistoryTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'contactId' => 'null'
        };

        OASClient client;
        OASCustomerCommunicationApi api;
        OASContactHistoryResponse response;
        OASContactHistoryResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomerCommunicationApi(client);

        js = JSON.serialize(OASContactHistoryResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASContactHistoryResponse.getExample();
        response = (OASContactHistoryResponse) api.getContactHistory(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASContactHistoryResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASContactHistoryResponse.getExample();
        response = (OASContactHistoryResponse) api.getContactHistory(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASContactHistoryResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASContactHistoryResponse.getExample();
        response = (OASContactHistoryResponse) api.getContactHistory(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listCommunicationsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'contactId' => 'null',
            'channel' => '',
            'direction' => '',
            'r_from' => Date.newInstance(1960, 2, 17),
            'to' => Date.newInstance(1960, 2, 17)
        };

        OASClient client;
        OASCustomerCommunicationApi api;
        List<OASCustomerCommunication> response;
        List<OASCustomerCommunication> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomerCommunicationApi(client);

        js = JSON.serialize(new List<OASCustomerCommunication>{OASCustomerCommunication.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCustomerCommunication>{OASCustomerCommunication.getExample()};
        response = (List<OASCustomerCommunication>) api.listCommunications(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASCustomerCommunication>{OASCustomerCommunication.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCustomerCommunication>{OASCustomerCommunication.getExample()};
        response = (List<OASCustomerCommunication>) api.listCommunications(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateCommunicationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'communicationId' => 'null',
            'oaSCustomerCommunicationUpdate' => ''
        };

        OASClient client;
        OASCustomerCommunicationApi api;
        OASCustomerCommunication response;
        OASCustomerCommunication expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomerCommunicationApi(client);

        js = JSON.serialize(OASCustomerCommunication.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerCommunication.getExample();
        response = (OASCustomerCommunication) api.updateCommunication(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomerCommunication.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerCommunication.getExample();
        response = (OASCustomerCommunication) api.updateCommunication(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomerCommunication.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerCommunication.getExample();
        response = (OASCustomerCommunication) api.updateCommunication(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomerCommunication.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerCommunication.getExample();
        response = (OASCustomerCommunication) api.updateCommunication(params);
        System.assertEquals(expectedResponse, response);
    }
}