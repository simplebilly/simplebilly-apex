@isTest
private class OASOrderConfirmationApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createConfirmationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSOrderConfirmationCreate' => ''
        };

        OASClient client;
        OASOrderConfirmationApi api;
        OASOrderConfirmation response;
        OASOrderConfirmation expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrderConfirmationApi(client);

        js = JSON.serialize(OASOrderConfirmation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrderConfirmation.getExample();
        response = (OASOrderConfirmation) api.createConfirmation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrderConfirmation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrderConfirmation.getExample();
        response = (OASOrderConfirmation) api.createConfirmation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrderConfirmation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrderConfirmation.getExample();
        response = (OASOrderConfirmation) api.createConfirmation(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteConfirmationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'confirmationId' => 'null'
        };

        OASClient client;
        OASOrderConfirmationApi api;
        String js = '';

        client = new OASClient();
        api = new OASOrderConfirmationApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteConfirmation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteConfirmation(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void downloadConfirmationPdfTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'confirmationId' => 'null'
        };

        OASClient client;
        OASOrderConfirmationApi api;
        String js = '';

        client = new OASClient();
        api = new OASOrderConfirmationApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.downloadConfirmationPdf(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.downloadConfirmationPdf(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getConfirmationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'confirmationId' => 'null'
        };

        OASClient client;
        OASOrderConfirmationApi api;
        OASOrderConfirmation response;
        OASOrderConfirmation expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrderConfirmationApi(client);

        js = JSON.serialize(OASOrderConfirmation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrderConfirmation.getExample();
        response = (OASOrderConfirmation) api.getConfirmation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrderConfirmation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrderConfirmation.getExample();
        response = (OASOrderConfirmation) api.getConfirmation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrderConfirmation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrderConfirmation.getExample();
        response = (OASOrderConfirmation) api.getConfirmation(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listConfirmationsTest() {
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
        OASOrderConfirmationApi api;
        List<OASOrderConfirmation> response;
        List<OASOrderConfirmation> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrderConfirmationApi(client);

        js = JSON.serialize(new List<OASOrderConfirmation>{OASOrderConfirmation.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOrderConfirmation>{OASOrderConfirmation.getExample()};
        response = (List<OASOrderConfirmation>) api.listConfirmations(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASOrderConfirmation>{OASOrderConfirmation.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOrderConfirmation>{OASOrderConfirmation.getExample()};
        response = (List<OASOrderConfirmation>) api.listConfirmations(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void orderconfirmationRestoreTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'confirmationId' => 'null'
        };

        OASClient client;
        OASOrderConfirmationApi api;
        OASOrderConfirmation response;
        OASOrderConfirmation expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrderConfirmationApi(client);

        js = JSON.serialize(OASOrderConfirmation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrderConfirmation.getExample();
        response = (OASOrderConfirmation) api.orderconfirmationRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrderConfirmation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrderConfirmation.getExample();
        response = (OASOrderConfirmation) api.orderconfirmationRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrderConfirmation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrderConfirmation.getExample();
        response = (OASOrderConfirmation) api.orderconfirmationRestore(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void pursueConfirmationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'confirmationId' => 'null'
        };

        OASClient client;
        OASOrderConfirmationApi api;
        OASDeliveryNote response;
        OASDeliveryNote expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrderConfirmationApi(client);

        js = JSON.serialize(OASDeliveryNote.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryNote.getExample();
        response = (OASDeliveryNote) api.pursueConfirmation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryNote.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryNote.getExample();
        response = (OASDeliveryNote) api.pursueConfirmation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryNote.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryNote.getExample();
        response = (OASDeliveryNote) api.pursueConfirmation(params);
        System.assertEquals(expectedResponse, response);
    }
}