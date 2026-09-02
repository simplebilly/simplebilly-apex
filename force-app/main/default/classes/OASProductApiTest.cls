@isTest
private class OASProductApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createProductApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSProductCreate' => ''
        };

        OASClient client;
        OASProductApi api;
        OASProduct response;
        OASProduct expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductApi(client);

        js = JSON.serialize(OASProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProduct.getExample();
        response = (OASProduct) api.createProductApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProduct.getExample();
        response = (OASProduct) api.createProductApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProduct.getExample();
        response = (OASProduct) api.createProductApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteProductApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'productId' => 'null'
        };

        OASClient client;
        OASProductApi api;
        String js = '';

        client = new OASClient();
        api = new OASProductApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteProductApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteProductApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getProductApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'productId' => 'null'
        };

        OASClient client;
        OASProductApi api;
        OASProduct response;
        OASProduct expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductApi(client);

        js = JSON.serialize(OASProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProduct.getExample();
        response = (OASProduct) api.getProductApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProduct.getExample();
        response = (OASProduct) api.getProductApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProduct.getExample();
        response = (OASProduct) api.getProductApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getProductStockApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'productId' => 'null'
        };

        OASClient client;
        OASProductApi api;
        OASProductStock response;
        OASProductStock expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductApi(client);

        js = JSON.serialize(OASProductStock.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductStock.getExample();
        response = (OASProductStock) api.getProductStockApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductStock.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductStock.getExample();
        response = (OASProductStock) api.getProductStockApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductStock.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductStock.getExample();
        response = (OASProductStock) api.getProductStockApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getProductsApiTest() {
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
        OASProductApi api;
        List<OASProduct> response;
        List<OASProduct> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductApi(client);

        js = JSON.serialize(new List<OASProduct>{OASProduct.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProduct>{OASProduct.getExample()};
        response = (List<OASProduct>) api.getProductsApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASProduct>{OASProduct.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProduct>{OASProduct.getExample()};
        response = (List<OASProduct>) api.getProductsApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listLowStockProductsApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'threshold' => 2147483648L
        };

        OASClient client;
        OASProductApi api;
        List<OASProductStock> response;
        List<OASProductStock> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductApi(client);

        js = JSON.serialize(new List<OASProductStock>{OASProductStock.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProductStock>{OASProductStock.getExample()};
        response = (List<OASProductStock>) api.listLowStockProductsApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASProductStock>{OASProductStock.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProductStock>{OASProductStock.getExample()};
        response = (List<OASProductStock>) api.listLowStockProductsApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void productRestoreTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'productId' => 'null'
        };

        OASClient client;
        OASProductApi api;
        OASProduct response;
        OASProduct expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductApi(client);

        js = JSON.serialize(OASProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProduct.getExample();
        response = (OASProduct) api.productRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProduct.getExample();
        response = (OASProduct) api.productRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProduct.getExample();
        response = (OASProduct) api.productRestore(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateProductApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'productId' => 'null',
            'oaSProductUpdate' => ''
        };

        OASClient client;
        OASProductApi api;
        OASProduct response;
        OASProduct expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductApi(client);

        js = JSON.serialize(OASProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProduct.getExample();
        response = (OASProduct) api.updateProductApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProduct.getExample();
        response = (OASProduct) api.updateProductApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProduct.getExample();
        response = (OASProduct) api.updateProductApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProduct.getExample();
        response = (OASProduct) api.updateProductApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateProductStockApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'productId' => 'null',
            'oaSStockUpdateRequest' => ''
        };

        OASClient client;
        OASProductApi api;
        OASProductStock response;
        OASProductStock expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductApi(client);

        js = JSON.serialize(OASProductStock.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductStock.getExample();
        response = (OASProductStock) api.updateProductStockApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductStock.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductStock.getExample();
        response = (OASProductStock) api.updateProductStockApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductStock.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductStock.getExample();
        response = (OASProductStock) api.updateProductStockApi(params);
        System.assertEquals(expectedResponse, response);
    }
}