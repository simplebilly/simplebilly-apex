@isTest
private class OASWarehouseStockApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createWarehouseStockTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'warehouseId' => 'null',
            'oaSStockAdjustment' => ''
        };

        OASClient client;
        OASWarehouseStockApi api;
        OASWarehouseStock response;
        OASWarehouseStock expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASWarehouseStockApi(client);

        js = JSON.serialize(OASWarehouseStock.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWarehouseStock.getExample();
        response = (OASWarehouseStock) api.createWarehouseStock(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASWarehouseStock.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWarehouseStock.getExample();
        response = (OASWarehouseStock) api.createWarehouseStock(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASWarehouseStock.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWarehouseStock.getExample();
        response = (OASWarehouseStock) api.createWarehouseStock(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteWarehouseStockTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'warehouseId' => 'null',
            'productId' => 'null'
        };

        OASClient client;
        OASWarehouseStockApi api;
        String js = '';

        client = new OASClient();
        api = new OASWarehouseStockApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteWarehouseStock(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteWarehouseStock(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listWarehouseStockTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'warehouseId' => 'null'
        };

        OASClient client;
        OASWarehouseStockApi api;
        List<OASWarehouseStock> response;
        List<OASWarehouseStock> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASWarehouseStockApi(client);

        js = JSON.serialize(new List<OASWarehouseStock>{OASWarehouseStock.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASWarehouseStock>{OASWarehouseStock.getExample()};
        response = (List<OASWarehouseStock>) api.listWarehouseStock(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASWarehouseStock>{OASWarehouseStock.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASWarehouseStock>{OASWarehouseStock.getExample()};
        response = (List<OASWarehouseStock>) api.listWarehouseStock(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateWarehouseStockTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'warehouseId' => 'null',
            'productId' => 'null',
            'oaSStockAdjustment' => ''
        };

        OASClient client;
        OASWarehouseStockApi api;
        OASWarehouseStock response;
        OASWarehouseStock expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASWarehouseStockApi(client);

        js = JSON.serialize(OASWarehouseStock.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWarehouseStock.getExample();
        response = (OASWarehouseStock) api.updateWarehouseStock(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASWarehouseStock.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWarehouseStock.getExample();
        response = (OASWarehouseStock) api.updateWarehouseStock(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASWarehouseStock.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWarehouseStock.getExample();
        response = (OASWarehouseStock) api.updateWarehouseStock(params);
        System.assertEquals(expectedResponse, response);
    }
}