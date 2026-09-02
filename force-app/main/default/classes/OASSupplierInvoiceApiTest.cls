@isTest
private class OASSupplierInvoiceApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createSupplierInvoiceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSSupplierInvoice' => ''
        };

        OASClient client;
        OASSupplierInvoiceApi api;
        OASSupplierInvoice response;
        OASSupplierInvoice expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSupplierInvoiceApi(client);

        js = JSON.serialize(OASSupplierInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierInvoice.getExample();
        response = (OASSupplierInvoice) api.createSupplierInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSupplierInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierInvoice.getExample();
        response = (OASSupplierInvoice) api.createSupplierInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSupplierInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierInvoice.getExample();
        response = (OASSupplierInvoice) api.createSupplierInvoice(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteSupplierInvoiceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'supplierInvoiceId' => 'null'
        };

        OASClient client;
        OASSupplierInvoiceApi api;
        String js = '';

        client = new OASClient();
        api = new OASSupplierInvoiceApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteSupplierInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteSupplierInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteSupplierInvoice(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getSupplierInvoiceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'supplierInvoiceId' => 'null'
        };

        OASClient client;
        OASSupplierInvoiceApi api;
        OASSupplierInvoice response;
        OASSupplierInvoice expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSupplierInvoiceApi(client);

        js = JSON.serialize(OASSupplierInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierInvoice.getExample();
        response = (OASSupplierInvoice) api.getSupplierInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSupplierInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierInvoice.getExample();
        response = (OASSupplierInvoice) api.getSupplierInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSupplierInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierInvoice.getExample();
        response = (OASSupplierInvoice) api.getSupplierInvoice(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listSupplierInvoicesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'status' => 'null',
            'purchaseOrderId' => 'null',
            'supplierName' => 'null'
        };

        OASClient client;
        OASSupplierInvoiceApi api;
        List<OASSupplierInvoice> response;
        List<OASSupplierInvoice> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSupplierInvoiceApi(client);

        js = JSON.serialize(new List<OASSupplierInvoice>{OASSupplierInvoice.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSupplierInvoice>{OASSupplierInvoice.getExample()};
        response = (List<OASSupplierInvoice>) api.listSupplierInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASSupplierInvoice>{OASSupplierInvoice.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSupplierInvoice>{OASSupplierInvoice.getExample()};
        response = (List<OASSupplierInvoice>) api.listSupplierInvoices(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateSupplierInvoiceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'supplierInvoiceId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASSupplierInvoiceApi api;
        OASSupplierInvoice response;
        OASSupplierInvoice expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSupplierInvoiceApi(client);

        js = JSON.serialize(OASSupplierInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierInvoice.getExample();
        response = (OASSupplierInvoice) api.updateSupplierInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSupplierInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierInvoice.getExample();
        response = (OASSupplierInvoice) api.updateSupplierInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSupplierInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierInvoice.getExample();
        response = (OASSupplierInvoice) api.updateSupplierInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSupplierInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierInvoice.getExample();
        response = (OASSupplierInvoice) api.updateSupplierInvoice(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateSupplierInvoiceStatusTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'supplierInvoiceId' => 'null',
            'oaSSupplierInvoiceStatusUpdate' => ''
        };

        OASClient client;
        OASSupplierInvoiceApi api;
        OASSupplierInvoice response;
        OASSupplierInvoice expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSupplierInvoiceApi(client);

        js = JSON.serialize(OASSupplierInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierInvoice.getExample();
        response = (OASSupplierInvoice) api.updateSupplierInvoiceStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSupplierInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierInvoice.getExample();
        response = (OASSupplierInvoice) api.updateSupplierInvoiceStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSupplierInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierInvoice.getExample();
        response = (OASSupplierInvoice) api.updateSupplierInvoiceStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSupplierInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierInvoice.getExample();
        response = (OASSupplierInvoice) api.updateSupplierInvoiceStatus(params);
        System.assertEquals(expectedResponse, response);
    }
}