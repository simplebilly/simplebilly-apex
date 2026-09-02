@isTest
private class OASPurchaseOrderApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createPurchaseOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSPurchaseOrder' => ''
        };

        OASClient client;
        OASPurchaseOrderApi api;
        OASPurchaseOrder response;
        OASPurchaseOrder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPurchaseOrderApi(client);

        js = JSON.serialize(OASPurchaseOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPurchaseOrder.getExample();
        response = (OASPurchaseOrder) api.createPurchaseOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPurchaseOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPurchaseOrder.getExample();
        response = (OASPurchaseOrder) api.createPurchaseOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPurchaseOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPurchaseOrder.getExample();
        response = (OASPurchaseOrder) api.createPurchaseOrder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deletePurchaseOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'purchaseOrderId' => 'null'
        };

        OASClient client;
        OASPurchaseOrderApi api;
        String js = '';

        client = new OASClient();
        api = new OASPurchaseOrderApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deletePurchaseOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deletePurchaseOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deletePurchaseOrder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getPurchaseOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'purchaseOrderId' => 'null'
        };

        OASClient client;
        OASPurchaseOrderApi api;
        OASPurchaseOrder response;
        OASPurchaseOrder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPurchaseOrderApi(client);

        js = JSON.serialize(OASPurchaseOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPurchaseOrder.getExample();
        response = (OASPurchaseOrder) api.getPurchaseOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPurchaseOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPurchaseOrder.getExample();
        response = (OASPurchaseOrder) api.getPurchaseOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPurchaseOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPurchaseOrder.getExample();
        response = (OASPurchaseOrder) api.getPurchaseOrder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listPurchaseOrdersTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'status' => 'null',
            'supplierName' => 'null',
            'search' => 'null'
        };

        OASClient client;
        OASPurchaseOrderApi api;
        List<OASPurchaseOrder> response;
        List<OASPurchaseOrder> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPurchaseOrderApi(client);

        js = JSON.serialize(new List<OASPurchaseOrder>{OASPurchaseOrder.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPurchaseOrder>{OASPurchaseOrder.getExample()};
        response = (List<OASPurchaseOrder>) api.listPurchaseOrders(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASPurchaseOrder>{OASPurchaseOrder.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPurchaseOrder>{OASPurchaseOrder.getExample()};
        response = (List<OASPurchaseOrder>) api.listPurchaseOrders(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 3-way invoice check (Rechnungsprüfung): compares the purchase order line\nitems, the quantities received via goods receipts, and the supplier\ninvoice line items, reporting quantity and price variances per product.
     *
     * 
     */
    @isTest
    private static void matchInvoiceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'purchaseOrderId' => 'null',
            'oaSInvoiceMatchRequest' => ''
        };

        OASClient client;
        OASPurchaseOrderApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPurchaseOrderApi(client);

        js = JSON.serialize(oas_any_type_not_mapped.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = oas_any_type_not_mapped.getExample();
        response = (oas_any_type_not_mapped) api.matchInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(oas_any_type_not_mapped.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = oas_any_type_not_mapped.getExample();
        response = (oas_any_type_not_mapped) api.matchInvoice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(oas_any_type_not_mapped.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = oas_any_type_not_mapped.getExample();
        response = (oas_any_type_not_mapped) api.matchInvoice(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updatePurchaseOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'purchaseOrderId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASPurchaseOrderApi api;
        OASPurchaseOrder response;
        OASPurchaseOrder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPurchaseOrderApi(client);

        js = JSON.serialize(OASPurchaseOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPurchaseOrder.getExample();
        response = (OASPurchaseOrder) api.updatePurchaseOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPurchaseOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPurchaseOrder.getExample();
        response = (OASPurchaseOrder) api.updatePurchaseOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPurchaseOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPurchaseOrder.getExample();
        response = (OASPurchaseOrder) api.updatePurchaseOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPurchaseOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPurchaseOrder.getExample();
        response = (OASPurchaseOrder) api.updatePurchaseOrder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updatePurchaseOrderStatusTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'purchaseOrderId' => 'null',
            'oaSPurchaseOrderStatusUpdate' => ''
        };

        OASClient client;
        OASPurchaseOrderApi api;
        OASPurchaseOrder response;
        OASPurchaseOrder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPurchaseOrderApi(client);

        js = JSON.serialize(OASPurchaseOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPurchaseOrder.getExample();
        response = (OASPurchaseOrder) api.updatePurchaseOrderStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPurchaseOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPurchaseOrder.getExample();
        response = (OASPurchaseOrder) api.updatePurchaseOrderStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPurchaseOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPurchaseOrder.getExample();
        response = (OASPurchaseOrder) api.updatePurchaseOrderStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPurchaseOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPurchaseOrder.getExample();
        response = (OASPurchaseOrder) api.updatePurchaseOrderStatus(params);
        System.assertEquals(expectedResponse, response);
    }
}