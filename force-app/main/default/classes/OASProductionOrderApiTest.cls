@isTest
private class OASProductionOrderApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createProductionOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSProductionOrder' => ''
        };

        OASClient client;
        OASProductionOrderApi api;
        OASProductionOrder response;
        OASProductionOrder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductionOrderApi(client);

        js = JSON.serialize(OASProductionOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductionOrder.getExample();
        response = (OASProductionOrder) api.createProductionOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductionOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductionOrder.getExample();
        response = (OASProductionOrder) api.createProductionOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductionOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductionOrder.getExample();
        response = (OASProductionOrder) api.createProductionOrder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteProductionOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'productionOrderId' => 'null'
        };

        OASClient client;
        OASProductionOrderApi api;
        String js = '';

        client = new OASClient();
        api = new OASProductionOrderApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteProductionOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteProductionOrder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getProductionOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'productionOrderId' => 'null'
        };

        OASClient client;
        OASProductionOrderApi api;
        OASProductionOrder response;
        OASProductionOrder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductionOrderApi(client);

        js = JSON.serialize(OASProductionOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductionOrder.getExample();
        response = (OASProductionOrder) api.getProductionOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductionOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductionOrder.getExample();
        response = (OASProductionOrder) api.getProductionOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductionOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductionOrder.getExample();
        response = (OASProductionOrder) api.getProductionOrder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listProductionOrdersTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'search' => 'null',
            'status' => 'null'
        };

        OASClient client;
        OASProductionOrderApi api;
        List<OASProductionOrder> response;
        List<OASProductionOrder> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductionOrderApi(client);

        js = JSON.serialize(new List<OASProductionOrder>{OASProductionOrder.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProductionOrder>{OASProductionOrder.getExample()};
        response = (List<OASProductionOrder>) api.listProductionOrders(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASProductionOrder>{OASProductionOrder.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProductionOrder>{OASProductionOrder.getExample()};
        response = (List<OASProductionOrder>) api.listProductionOrders(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Actual-costing report (Nachkalkulation) — material costs from BOM\ncomponents at their purchase price plus the resulting per-unit cost and\nmargin against the finished product\&#39;s sale price.
     *
     * 
     */
    @isTest
    private static void productionOrderCostingTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'productionOrderId' => 'null'
        };

        OASClient client;
        OASProductionOrderApi api;
        OASProductionOrderCosting response;
        OASProductionOrderCosting expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductionOrderApi(client);

        js = JSON.serialize(OASProductionOrderCosting.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductionOrderCosting.getExample();
        response = (OASProductionOrderCosting) api.productionOrderCosting(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductionOrderCosting.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductionOrderCosting.getExample();
        response = (OASProductionOrderCosting) api.productionOrderCosting(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductionOrderCosting.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductionOrderCosting.getExample();
        response = (OASProductionOrderCosting) api.productionOrderCosting(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateProductionOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'productionOrderId' => 'null',
            'oaSProductionOrder' => ''
        };

        OASClient client;
        OASProductionOrderApi api;
        OASProductionOrder response;
        OASProductionOrder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductionOrderApi(client);

        js = JSON.serialize(OASProductionOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductionOrder.getExample();
        response = (OASProductionOrder) api.updateProductionOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductionOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductionOrder.getExample();
        response = (OASProductionOrder) api.updateProductionOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductionOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductionOrder.getExample();
        response = (OASProductionOrder) api.updateProductionOrder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateProductionOrderStatusTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'productionOrderId' => 'null',
            'oaSProductionOrderStatusUpdate' => ''
        };

        OASClient client;
        OASProductionOrderApi api;
        OASProductionOrder response;
        OASProductionOrder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductionOrderApi(client);

        js = JSON.serialize(OASProductionOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductionOrder.getExample();
        response = (OASProductionOrder) api.updateProductionOrderStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductionOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductionOrder.getExample();
        response = (OASProductionOrder) api.updateProductionOrderStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductionOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductionOrder.getExample();
        response = (OASProductionOrder) api.updateProductionOrderStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductionOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductionOrder.getExample();
        response = (OASProductionOrder) api.updateProductionOrderStatus(params);
        System.assertEquals(expectedResponse, response);
    }
}