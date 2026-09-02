@isTest
private class OASDownPaymentInvoiceApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void downloadDownPaymentInvoicePdfTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASDownPaymentInvoiceApi api;
        String js = '';

        client = new OASClient();
        api = new OASDownPaymentInvoiceApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.downloadDownPaymentInvoicePdf(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getDownPaymentInvoiceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASDownPaymentInvoiceApi api;
        OASDownPaymentInvoice response;
        OASDownPaymentInvoice expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDownPaymentInvoiceApi(client);

        js = JSON.serialize(OASDownPaymentInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDownPaymentInvoice.getExample();
        response = (OASDownPaymentInvoice) api.getDownPaymentInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDownPaymentInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDownPaymentInvoice.getExample();
        response = (OASDownPaymentInvoice) api.getDownPaymentInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDownPaymentInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDownPaymentInvoice.getExample();
        response = (OASDownPaymentInvoice) api.getDownPaymentInvoice(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listDownPaymentInvoicesTest() {
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
        OASDownPaymentInvoiceApi api;
        List<OASDownPaymentInvoice> response;
        List<OASDownPaymentInvoice> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDownPaymentInvoiceApi(client);

        js = JSON.serialize(new List<OASDownPaymentInvoice>{OASDownPaymentInvoice.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDownPaymentInvoice>{OASDownPaymentInvoice.getExample()};
        response = (List<OASDownPaymentInvoice>) api.listDownPaymentInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASDownPaymentInvoice>{OASDownPaymentInvoice.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDownPaymentInvoice>{OASDownPaymentInvoice.getExample()};
        response = (List<OASDownPaymentInvoice>) api.listDownPaymentInvoices(params);
        System.assertEquals(expectedResponse, response);
    }
}