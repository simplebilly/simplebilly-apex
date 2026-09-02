@isTest
private class OASStockTransferApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createStockTransferTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSStockTransfer' => ''
        };

        OASClient client;
        OASStockTransferApi api;
        OASStockTransfer response;
        OASStockTransfer expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStockTransferApi(client);

        js = JSON.serialize(OASStockTransfer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASStockTransfer.getExample();
        response = (OASStockTransfer) api.createStockTransfer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASStockTransfer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASStockTransfer.getExample();
        response = (OASStockTransfer) api.createStockTransfer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASStockTransfer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASStockTransfer.getExample();
        response = (OASStockTransfer) api.createStockTransfer(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteStockTransferTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'stockTransferId' => 'null'
        };

        OASClient client;
        OASStockTransferApi api;
        String js = '';

        client = new OASClient();
        api = new OASStockTransferApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteStockTransfer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteStockTransfer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteStockTransfer(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getStockTransferTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'stockTransferId' => 'null'
        };

        OASClient client;
        OASStockTransferApi api;
        OASStockTransfer response;
        OASStockTransfer expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStockTransferApi(client);

        js = JSON.serialize(OASStockTransfer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASStockTransfer.getExample();
        response = (OASStockTransfer) api.getStockTransfer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASStockTransfer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASStockTransfer.getExample();
        response = (OASStockTransfer) api.getStockTransfer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASStockTransfer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASStockTransfer.getExample();
        response = (OASStockTransfer) api.getStockTransfer(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listStockTransfersTest() {
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
        OASStockTransferApi api;
        List<OASStockTransfer> response;
        List<OASStockTransfer> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStockTransferApi(client);

        js = JSON.serialize(new List<OASStockTransfer>{OASStockTransfer.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASStockTransfer>{OASStockTransfer.getExample()};
        response = (List<OASStockTransfer>) api.listStockTransfers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASStockTransfer>{OASStockTransfer.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASStockTransfer>{OASStockTransfer.getExample()};
        response = (List<OASStockTransfer>) api.listStockTransfers(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateStockTransferStatusTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'stockTransferId' => 'null',
            'oaSStockTransferStatusUpdate' => ''
        };

        OASClient client;
        OASStockTransferApi api;
        OASStockTransfer response;
        OASStockTransfer expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStockTransferApi(client);

        js = JSON.serialize(OASStockTransfer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASStockTransfer.getExample();
        response = (OASStockTransfer) api.updateStockTransferStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASStockTransfer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASStockTransfer.getExample();
        response = (OASStockTransfer) api.updateStockTransferStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASStockTransfer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASStockTransfer.getExample();
        response = (OASStockTransfer) api.updateStockTransferStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASStockTransfer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASStockTransfer.getExample();
        response = (OASStockTransfer) api.updateStockTransferStatus(params);
        System.assertEquals(expectedResponse, response);
    }
}