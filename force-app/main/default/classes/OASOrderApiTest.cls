@isTest
private class OASOrderApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void addOrderTagsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'orderId' => 'null',
            'oaSOrderTagsRequest' => ''
        };

        OASClient client;
        OASOrderApi api;
        OASOrder response;
        OASOrder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrderApi(client);

        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.addOrderTags(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.addOrderTags(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.addOrderTags(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void findOrderByExternalRefTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'extRef' => 'null'
        };

        OASClient client;
        OASOrderApi api;
        OASOrder response;
        OASOrder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrderApi(client);

        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.findOrderByExternalRef(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.findOrderByExternalRef(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.findOrderByExternalRef(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'orderNumber' => 'null'
        };

        OASClient client;
        OASOrderApi api;
        OASOrder response;
        OASOrder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrderApi(client);

        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.getOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.getOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.getOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.getOrder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getOrdersTest() {
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
        OASOrderApi api;
        List<OASOrder> response;
        List<OASOrder> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrderApi(client);

        js = JSON.serialize(new List<OASOrder>{OASOrder.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOrder>{OASOrder.getExample()};
        response = (List<OASOrder>) api.getOrders(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASOrder>{OASOrder.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOrder>{OASOrder.getExample()};
        response = (List<OASOrder>) api.getOrders(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASOrder>{OASOrder.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOrder>{OASOrder.getExample()};
        response = (List<OASOrder>) api.getOrders(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASOrder>{OASOrder.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOrder>{OASOrder.getExample()};
        response = (List<OASOrder>) api.getOrders(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void patchOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'orderId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASOrderApi api;
        OASOrder response;
        OASOrder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrderApi(client);

        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.patchOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.patchOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.patchOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.patchOrder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void replaceOrderTagsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'orderId' => 'null',
            'oaSOrderTagsRequest' => ''
        };

        OASClient client;
        OASOrderApi api;
        OASOrder response;
        OASOrder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrderApi(client);

        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.replaceOrderTags(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.replaceOrderTags(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.replaceOrderTags(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateOrderStateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'orderId' => 'null',
            'oaSOrderStateUpdate' => ''
        };

        OASClient client;
        OASOrderApi api;
        OASOrder response;
        OASOrder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrderApi(client);

        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.updateOrderState(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.updateOrderState(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.updateOrderState(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrder.getExample();
        response = (OASOrder) api.updateOrderState(params);
        System.assertEquals(expectedResponse, response);
    }
}