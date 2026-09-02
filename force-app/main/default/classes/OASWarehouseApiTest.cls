@isTest
private class OASWarehouseApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createWarehouseTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSWarehouse' => ''
        };

        OASClient client;
        OASWarehouseApi api;
        OASWarehouse response;
        OASWarehouse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASWarehouseApi(client);

        js = JSON.serialize(OASWarehouse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWarehouse.getExample();
        response = (OASWarehouse) api.createWarehouse(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASWarehouse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWarehouse.getExample();
        response = (OASWarehouse) api.createWarehouse(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASWarehouse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWarehouse.getExample();
        response = (OASWarehouse) api.createWarehouse(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteWarehouseTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'warehouseId' => 'null'
        };

        OASClient client;
        OASWarehouseApi api;
        String js = '';

        client = new OASClient();
        api = new OASWarehouseApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteWarehouse(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteWarehouse(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getWarehouseTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'warehouseId' => 'null'
        };

        OASClient client;
        OASWarehouseApi api;
        OASWarehouse response;
        OASWarehouse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASWarehouseApi(client);

        js = JSON.serialize(OASWarehouse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWarehouse.getExample();
        response = (OASWarehouse) api.getWarehouse(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASWarehouse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWarehouse.getExample();
        response = (OASWarehouse) api.getWarehouse(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASWarehouse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWarehouse.getExample();
        response = (OASWarehouse) api.getWarehouse(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listWarehousesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'search' => 'null',
            'isActive' => ''
        };

        OASClient client;
        OASWarehouseApi api;
        List<OASWarehouse> response;
        List<OASWarehouse> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASWarehouseApi(client);

        js = JSON.serialize(new List<OASWarehouse>{OASWarehouse.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASWarehouse>{OASWarehouse.getExample()};
        response = (List<OASWarehouse>) api.listWarehouses(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASWarehouse>{OASWarehouse.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASWarehouse>{OASWarehouse.getExample()};
        response = (List<OASWarehouse>) api.listWarehouses(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateWarehouseTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'warehouseId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASWarehouseApi api;
        OASWarehouse response;
        OASWarehouse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASWarehouseApi(client);

        js = JSON.serialize(OASWarehouse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWarehouse.getExample();
        response = (OASWarehouse) api.updateWarehouse(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASWarehouse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWarehouse.getExample();
        response = (OASWarehouse) api.updateWarehouse(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASWarehouse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWarehouse.getExample();
        response = (OASWarehouse) api.updateWarehouse(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASWarehouse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWarehouse.getExample();
        response = (OASWarehouse) api.updateWarehouse(params);
        System.assertEquals(expectedResponse, response);
    }
}