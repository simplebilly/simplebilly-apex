@isTest
private class OASInventoryCountApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createInventoryCountTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSInventoryCount' => ''
        };

        OASClient client;
        OASInventoryCountApi api;
        OASInventoryCount response;
        OASInventoryCount expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASInventoryCountApi(client);

        js = JSON.serialize(OASInventoryCount.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInventoryCount.getExample();
        response = (OASInventoryCount) api.createInventoryCount(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInventoryCount.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInventoryCount.getExample();
        response = (OASInventoryCount) api.createInventoryCount(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInventoryCount.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInventoryCount.getExample();
        response = (OASInventoryCount) api.createInventoryCount(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteInventoryCountTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inventoryCountId' => 'null'
        };

        OASClient client;
        OASInventoryCountApi api;
        String js = '';

        client = new OASClient();
        api = new OASInventoryCountApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteInventoryCount(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteInventoryCount(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteInventoryCount(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void generateInventoryCountTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSGenerateCountRequest' => ''
        };

        OASClient client;
        OASInventoryCountApi api;
        OASInventoryCount response;
        OASInventoryCount expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASInventoryCountApi(client);

        js = JSON.serialize(OASInventoryCount.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInventoryCount.getExample();
        response = (OASInventoryCount) api.generateInventoryCount(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInventoryCount.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInventoryCount.getExample();
        response = (OASInventoryCount) api.generateInventoryCount(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInventoryCount.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInventoryCount.getExample();
        response = (OASInventoryCount) api.generateInventoryCount(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getInventoryCountTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inventoryCountId' => 'null'
        };

        OASClient client;
        OASInventoryCountApi api;
        OASInventoryCount response;
        OASInventoryCount expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASInventoryCountApi(client);

        js = JSON.serialize(OASInventoryCount.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInventoryCount.getExample();
        response = (OASInventoryCount) api.getInventoryCount(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInventoryCount.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInventoryCount.getExample();
        response = (OASInventoryCount) api.getInventoryCount(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInventoryCount.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInventoryCount.getExample();
        response = (OASInventoryCount) api.getInventoryCount(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listInventoryCountsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'status' => 'null',
            'warehouseId' => 'null'
        };

        OASClient client;
        OASInventoryCountApi api;
        List<OASInventoryCount> response;
        List<OASInventoryCount> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASInventoryCountApi(client);

        js = JSON.serialize(new List<OASInventoryCount>{OASInventoryCount.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASInventoryCount>{OASInventoryCount.getExample()};
        response = (List<OASInventoryCount>) api.listInventoryCounts(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASInventoryCount>{OASInventoryCount.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASInventoryCount>{OASInventoryCount.getExample()};
        response = (List<OASInventoryCount>) api.listInventoryCounts(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateInventoryCountTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inventoryCountId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASInventoryCountApi api;
        OASInventoryCount response;
        OASInventoryCount expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASInventoryCountApi(client);

        js = JSON.serialize(OASInventoryCount.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInventoryCount.getExample();
        response = (OASInventoryCount) api.updateInventoryCount(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInventoryCount.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInventoryCount.getExample();
        response = (OASInventoryCount) api.updateInventoryCount(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInventoryCount.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInventoryCount.getExample();
        response = (OASInventoryCount) api.updateInventoryCount(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInventoryCount.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInventoryCount.getExample();
        response = (OASInventoryCount) api.updateInventoryCount(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateInventoryCountStatusTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inventoryCountId' => 'null',
            'oaSInventoryCountStatusUpdate' => ''
        };

        OASClient client;
        OASInventoryCountApi api;
        OASInventoryCount response;
        OASInventoryCount expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASInventoryCountApi(client);

        js = JSON.serialize(OASInventoryCount.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInventoryCount.getExample();
        response = (OASInventoryCount) api.updateInventoryCountStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInventoryCount.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInventoryCount.getExample();
        response = (OASInventoryCount) api.updateInventoryCountStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInventoryCount.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInventoryCount.getExample();
        response = (OASInventoryCount) api.updateInventoryCountStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInventoryCount.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInventoryCount.getExample();
        response = (OASInventoryCount) api.updateInventoryCountStatus(params);
        System.assertEquals(expectedResponse, response);
    }
}