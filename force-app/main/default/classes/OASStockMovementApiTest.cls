@isTest
private class OASStockMovementApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void getStockMovementTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'movementId' => 'null'
        };

        OASClient client;
        OASStockMovementApi api;
        OASStockMovement response;
        OASStockMovement expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStockMovementApi(client);

        js = JSON.serialize(OASStockMovement.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASStockMovement.getExample();
        response = (OASStockMovement) api.getStockMovement(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASStockMovement.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASStockMovement.getExample();
        response = (OASStockMovement) api.getStockMovement(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASStockMovement.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASStockMovement.getExample();
        response = (OASStockMovement) api.getStockMovement(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listStockMovementsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'productId' => 'null',
            'warehouseId' => 'null',
            'movementType' => 'null',
            'r_from' => Date.newInstance(1960, 2, 17),
            'to' => Date.newInstance(1960, 2, 17)
        };

        OASClient client;
        OASStockMovementApi api;
        List<OASStockMovement> response;
        List<OASStockMovement> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStockMovementApi(client);

        js = JSON.serialize(new List<OASStockMovement>{OASStockMovement.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASStockMovement>{OASStockMovement.getExample()};
        response = (List<OASStockMovement>) api.listStockMovements(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASStockMovement>{OASStockMovement.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASStockMovement>{OASStockMovement.getExample()};
        response = (List<OASStockMovement>) api.listStockMovements(params);
        System.assertEquals(expectedResponse, response);
    }
}