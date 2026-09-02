@isTest
private class OASReturnOrderApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createReturnOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSReturnOrder' => ''
        };

        OASClient client;
        OASReturnOrderApi api;
        OASReturnOrder response;
        OASReturnOrder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASReturnOrderApi(client);

        js = JSON.serialize(OASReturnOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReturnOrder.getExample();
        response = (OASReturnOrder) api.createReturnOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASReturnOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReturnOrder.getExample();
        response = (OASReturnOrder) api.createReturnOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASReturnOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReturnOrder.getExample();
        response = (OASReturnOrder) api.createReturnOrder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteReturnOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'returnOrderId' => 'null'
        };

        OASClient client;
        OASReturnOrderApi api;
        String js = '';

        client = new OASClient();
        api = new OASReturnOrderApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteReturnOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteReturnOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteReturnOrder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getReturnOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'returnOrderId' => 'null'
        };

        OASClient client;
        OASReturnOrderApi api;
        OASReturnOrder response;
        OASReturnOrder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASReturnOrderApi(client);

        js = JSON.serialize(OASReturnOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReturnOrder.getExample();
        response = (OASReturnOrder) api.getReturnOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASReturnOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReturnOrder.getExample();
        response = (OASReturnOrder) api.getReturnOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASReturnOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReturnOrder.getExample();
        response = (OASReturnOrder) api.getReturnOrder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listReturnOrdersTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'status' => 'null',
            'customerName' => 'null',
            'orderNumber' => 'null'
        };

        OASClient client;
        OASReturnOrderApi api;
        List<OASReturnOrder> response;
        List<OASReturnOrder> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASReturnOrderApi(client);

        js = JSON.serialize(new List<OASReturnOrder>{OASReturnOrder.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASReturnOrder>{OASReturnOrder.getExample()};
        response = (List<OASReturnOrder>) api.listReturnOrders(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASReturnOrder>{OASReturnOrder.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASReturnOrder>{OASReturnOrder.getExample()};
        response = (List<OASReturnOrder>) api.listReturnOrders(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void returnLogisticsQueueTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASReturnOrderApi api;
        List<OASReturnLogisticsQueueItem> response;
        List<OASReturnLogisticsQueueItem> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASReturnOrderApi(client);

        js = JSON.serialize(new List<OASReturnLogisticsQueueItem>{OASReturnLogisticsQueueItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASReturnLogisticsQueueItem>{OASReturnLogisticsQueueItem.getExample()};
        response = (List<OASReturnLogisticsQueueItem>) api.returnLogisticsQueue();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASReturnLogisticsQueueItem>{OASReturnLogisticsQueueItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASReturnLogisticsQueueItem>{OASReturnLogisticsQueueItem.getExample()};
        response = (List<OASReturnLogisticsQueueItem>) api.returnLogisticsQueue();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Returns-logistics aggregation for the dashboard: quantities received,\nrestocked and scrapped per warehouse.
     *
     * 
     */
    @isTest
    private static void returnLogisticsSummaryTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASReturnOrderApi api;
        OASReturnLogisticsSummary response;
        OASReturnLogisticsSummary expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASReturnOrderApi(client);

        js = JSON.serialize(OASReturnLogisticsSummary.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReturnLogisticsSummary.getExample();
        response = (OASReturnLogisticsSummary) api.returnLogisticsSummary();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASReturnLogisticsSummary.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReturnLogisticsSummary.getExample();
        response = (OASReturnLogisticsSummary) api.returnLogisticsSummary();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateReturnOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'returnOrderId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASReturnOrderApi api;
        OASReturnOrder response;
        OASReturnOrder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASReturnOrderApi(client);

        js = JSON.serialize(OASReturnOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReturnOrder.getExample();
        response = (OASReturnOrder) api.updateReturnOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASReturnOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReturnOrder.getExample();
        response = (OASReturnOrder) api.updateReturnOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASReturnOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReturnOrder.getExample();
        response = (OASReturnOrder) api.updateReturnOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASReturnOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReturnOrder.getExample();
        response = (OASReturnOrder) api.updateReturnOrder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateReturnOrderStatusTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'returnOrderId' => 'null',
            'oaSReturnOrderStatusUpdate' => ''
        };

        OASClient client;
        OASReturnOrderApi api;
        OASReturnOrder response;
        OASReturnOrder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASReturnOrderApi(client);

        js = JSON.serialize(OASReturnOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReturnOrder.getExample();
        response = (OASReturnOrder) api.updateReturnOrderStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASReturnOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReturnOrder.getExample();
        response = (OASReturnOrder) api.updateReturnOrderStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASReturnOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReturnOrder.getExample();
        response = (OASReturnOrder) api.updateReturnOrderStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASReturnOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReturnOrder.getExample();
        response = (OASReturnOrder) api.updateReturnOrderStatus(params);
        System.assertEquals(expectedResponse, response);
    }
}