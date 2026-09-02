@isTest
private class OASGoodsReceiptApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createGoodsReceiptTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSGoodsReceipt' => ''
        };

        OASClient client;
        OASGoodsReceiptApi api;
        OASGoodsReceipt response;
        OASGoodsReceipt expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGoodsReceiptApi(client);

        js = JSON.serialize(OASGoodsReceipt.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGoodsReceipt.getExample();
        response = (OASGoodsReceipt) api.createGoodsReceipt(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASGoodsReceipt.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGoodsReceipt.getExample();
        response = (OASGoodsReceipt) api.createGoodsReceipt(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASGoodsReceipt.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGoodsReceipt.getExample();
        response = (OASGoodsReceipt) api.createGoodsReceipt(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteGoodsReceiptTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'goodsReceiptId' => 'null'
        };

        OASClient client;
        OASGoodsReceiptApi api;
        String js = '';

        client = new OASClient();
        api = new OASGoodsReceiptApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteGoodsReceipt(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteGoodsReceipt(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getGoodsReceiptTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'goodsReceiptId' => 'null'
        };

        OASClient client;
        OASGoodsReceiptApi api;
        OASGoodsReceipt response;
        OASGoodsReceipt expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGoodsReceiptApi(client);

        js = JSON.serialize(OASGoodsReceipt.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGoodsReceipt.getExample();
        response = (OASGoodsReceipt) api.getGoodsReceipt(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASGoodsReceipt.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGoodsReceipt.getExample();
        response = (OASGoodsReceipt) api.getGoodsReceipt(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASGoodsReceipt.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGoodsReceipt.getExample();
        response = (OASGoodsReceipt) api.getGoodsReceipt(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listGoodsReceiptsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'purchaseOrderId' => 'null',
            'supplierName' => 'null',
            'warehouseId' => 'null'
        };

        OASClient client;
        OASGoodsReceiptApi api;
        List<OASGoodsReceipt> response;
        List<OASGoodsReceipt> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGoodsReceiptApi(client);

        js = JSON.serialize(new List<OASGoodsReceipt>{OASGoodsReceipt.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASGoodsReceipt>{OASGoodsReceipt.getExample()};
        response = (List<OASGoodsReceipt>) api.listGoodsReceipts(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASGoodsReceipt>{OASGoodsReceipt.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASGoodsReceipt>{OASGoodsReceipt.getExample()};
        response = (List<OASGoodsReceipt>) api.listGoodsReceipts(params);
        System.assertEquals(expectedResponse, response);
    }
}