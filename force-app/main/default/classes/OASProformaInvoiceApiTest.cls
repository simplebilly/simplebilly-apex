@isTest
private class OASProformaInvoiceApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void convertProformaToInvoiceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'proformaId' => 'null'
        };

        OASClient client;
        OASProformaInvoiceApi api;
        OASConvertResponse response;
        OASConvertResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProformaInvoiceApi(client);

        js = JSON.serialize(OASConvertResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASConvertResponse.getExample();
        response = (OASConvertResponse) api.convertProformaToInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASConvertResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASConvertResponse.getExample();
        response = (OASConvertResponse) api.convertProformaToInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASConvertResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASConvertResponse.getExample();
        response = (OASConvertResponse) api.convertProformaToInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASConvertResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASConvertResponse.getExample();
        response = (OASConvertResponse) api.convertProformaToInvoice(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void createProformaInvoiceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSProformaInvoice' => ''
        };

        OASClient client;
        OASProformaInvoiceApi api;
        OASProformaInvoice response;
        OASProformaInvoice expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProformaInvoiceApi(client);

        js = JSON.serialize(OASProformaInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProformaInvoice.getExample();
        response = (OASProformaInvoice) api.createProformaInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProformaInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProformaInvoice.getExample();
        response = (OASProformaInvoice) api.createProformaInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProformaInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProformaInvoice.getExample();
        response = (OASProformaInvoice) api.createProformaInvoice(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteProformaInvoiceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'proformaId' => 'null'
        };

        OASClient client;
        OASProformaInvoiceApi api;
        String js = '';

        client = new OASClient();
        api = new OASProformaInvoiceApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteProformaInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteProformaInvoice(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getProformaInvoiceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'proformaId' => 'null'
        };

        OASClient client;
        OASProformaInvoiceApi api;
        OASProformaInvoice response;
        OASProformaInvoice expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProformaInvoiceApi(client);

        js = JSON.serialize(OASProformaInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProformaInvoice.getExample();
        response = (OASProformaInvoice) api.getProformaInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProformaInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProformaInvoice.getExample();
        response = (OASProformaInvoice) api.getProformaInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProformaInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProformaInvoice.getExample();
        response = (OASProformaInvoice) api.getProformaInvoice(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listProformaInvoicesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'status' => 'null',
            'customerId' => 'null',
            'orderNumber' => 'null'
        };

        OASClient client;
        OASProformaInvoiceApi api;
        List<OASProformaInvoice> response;
        List<OASProformaInvoice> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProformaInvoiceApi(client);

        js = JSON.serialize(new List<OASProformaInvoice>{OASProformaInvoice.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProformaInvoice>{OASProformaInvoice.getExample()};
        response = (List<OASProformaInvoice>) api.listProformaInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASProformaInvoice>{OASProformaInvoice.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProformaInvoice>{OASProformaInvoice.getExample()};
        response = (List<OASProformaInvoice>) api.listProformaInvoices(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateProformaInvoiceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'proformaId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASProformaInvoiceApi api;
        OASProformaInvoice response;
        OASProformaInvoice expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProformaInvoiceApi(client);

        js = JSON.serialize(OASProformaInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProformaInvoice.getExample();
        response = (OASProformaInvoice) api.updateProformaInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProformaInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProformaInvoice.getExample();
        response = (OASProformaInvoice) api.updateProformaInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProformaInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProformaInvoice.getExample();
        response = (OASProformaInvoice) api.updateProformaInvoice(params);
        System.assertEquals(expectedResponse, response);
    }
}