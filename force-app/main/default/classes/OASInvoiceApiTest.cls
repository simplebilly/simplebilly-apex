@isTest
private class OASInvoiceApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createInvoiceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSInvoiceCreate' => ''
        };

        OASClient client;
        OASInvoiceApi api;
        OASInvoice response;
        OASInvoice expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASInvoiceApi(client);

        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.createInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.createInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.createInvoice(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteInvoiceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASInvoiceApi api;
        String js = '';

        client = new OASClient();
        api = new OASInvoiceApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteInvoice(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void downloadInvoicePdfTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASInvoiceApi api;
        String js = '';

        client = new OASClient();
        api = new OASInvoiceApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.downloadInvoicePdf(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.downloadInvoicePdf(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getInvoiceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASInvoiceApi api;
        OASInvoice response;
        OASInvoice expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASInvoiceApi(client);

        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.getInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.getInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.getInvoice(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getInvoicePdfUrlTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASInvoiceApi api;
        OASInvoicePdfUrlResponse response;
        OASInvoicePdfUrlResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASInvoiceApi(client);

        js = JSON.serialize(OASInvoicePdfUrlResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoicePdfUrlResponse.getExample();
        response = (OASInvoicePdfUrlResponse) api.getInvoicePdfUrl(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInvoicePdfUrlResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoicePdfUrlResponse.getExample();
        response = (OASInvoicePdfUrlResponse) api.getInvoicePdfUrl(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInvoicePdfUrlResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoicePdfUrlResponse.getExample();
        response = (OASInvoicePdfUrlResponse) api.getInvoicePdfUrl(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getInvoicesTest() {
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
        OASInvoiceApi api;
        List<OASInvoice> response;
        List<OASInvoice> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASInvoiceApi(client);

        js = JSON.serialize(new List<OASInvoice>{OASInvoice.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASInvoice>{OASInvoice.getExample()};
        response = (List<OASInvoice>) api.getInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASInvoice>{OASInvoice.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASInvoice>{OASInvoice.getExample()};
        response = (List<OASInvoice>) api.getInvoices(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void invoiceRestoreTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASInvoiceApi api;
        OASInvoice response;
        OASInvoice expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASInvoiceApi(client);

        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.invoiceRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.invoiceRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.invoiceRestore(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateInvoiceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'body' => ''
        };

        OASClient client;
        OASInvoiceApi api;
        OASInvoice response;
        OASInvoice expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASInvoiceApi(client);

        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.updateInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.updateInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.updateInvoice(params);
        System.assertEquals(expectedResponse, response);
    }
}