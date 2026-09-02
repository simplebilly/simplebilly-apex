@isTest
private class OASQuotationApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createQuotationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSQuotationCreate' => ''
        };

        OASClient client;
        OASQuotationApi api;
        OASQuotation response;
        OASQuotation expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQuotationApi(client);

        js = JSON.serialize(OASQuotation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQuotation.getExample();
        response = (OASQuotation) api.createQuotation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQuotation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQuotation.getExample();
        response = (OASQuotation) api.createQuotation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQuotation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQuotation.getExample();
        response = (OASQuotation) api.createQuotation(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteQuotationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'quotationId' => 'null'
        };

        OASClient client;
        OASQuotationApi api;
        String js = '';

        client = new OASClient();
        api = new OASQuotationApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteQuotation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteQuotation(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void downloadQuotationPdfTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'quotationId' => 'null'
        };

        OASClient client;
        OASQuotationApi api;
        String js = '';

        client = new OASClient();
        api = new OASQuotationApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.downloadQuotationPdf(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.downloadQuotationPdf(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getQuotationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'quotationId' => 'null'
        };

        OASClient client;
        OASQuotationApi api;
        OASQuotation response;
        OASQuotation expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQuotationApi(client);

        js = JSON.serialize(OASQuotation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQuotation.getExample();
        response = (OASQuotation) api.getQuotation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQuotation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQuotation.getExample();
        response = (OASQuotation) api.getQuotation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQuotation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQuotation.getExample();
        response = (OASQuotation) api.getQuotation(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listQuotationsTest() {
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
        OASQuotationApi api;
        List<OASQuotation> response;
        List<OASQuotation> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQuotationApi(client);

        js = JSON.serialize(new List<OASQuotation>{OASQuotation.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASQuotation>{OASQuotation.getExample()};
        response = (List<OASQuotation>) api.listQuotations(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASQuotation>{OASQuotation.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASQuotation>{OASQuotation.getExample()};
        response = (List<OASQuotation>) api.listQuotations(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void pursueQuotationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'quotationId' => 'null'
        };

        OASClient client;
        OASQuotationApi api;
        OASOrderConfirmation response;
        OASOrderConfirmation expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQuotationApi(client);

        js = JSON.serialize(OASOrderConfirmation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrderConfirmation.getExample();
        response = (OASOrderConfirmation) api.pursueQuotation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrderConfirmation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrderConfirmation.getExample();
        response = (OASOrderConfirmation) api.pursueQuotation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrderConfirmation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrderConfirmation.getExample();
        response = (OASOrderConfirmation) api.pursueQuotation(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void quotationRestoreTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'quotationId' => 'null'
        };

        OASClient client;
        OASQuotationApi api;
        OASQuotation response;
        OASQuotation expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQuotationApi(client);

        js = JSON.serialize(OASQuotation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQuotation.getExample();
        response = (OASQuotation) api.quotationRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQuotation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQuotation.getExample();
        response = (OASQuotation) api.quotationRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQuotation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQuotation.getExample();
        response = (OASQuotation) api.quotationRestore(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateQuotationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'quotationId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASQuotationApi api;
        OASQuotation response;
        OASQuotation expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQuotationApi(client);

        js = JSON.serialize(OASQuotation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQuotation.getExample();
        response = (OASQuotation) api.updateQuotation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQuotation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQuotation.getExample();
        response = (OASQuotation) api.updateQuotation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQuotation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQuotation.getExample();
        response = (OASQuotation) api.updateQuotation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQuotation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQuotation.getExample();
        response = (OASQuotation) api.updateQuotation(params);
        System.assertEquals(expectedResponse, response);
    }
}