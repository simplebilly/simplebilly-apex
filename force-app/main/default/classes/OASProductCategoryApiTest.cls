@isTest
private class OASProductCategoryApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createProductCategoryTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSProductCategory' => ''
        };

        OASClient client;
        OASProductCategoryApi api;
        OASProductCategory response;
        OASProductCategory expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductCategoryApi(client);

        js = JSON.serialize(OASProductCategory.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductCategory.getExample();
        response = (OASProductCategory) api.createProductCategory(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductCategory.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductCategory.getExample();
        response = (OASProductCategory) api.createProductCategory(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductCategory.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductCategory.getExample();
        response = (OASProductCategory) api.createProductCategory(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteProductCategoryTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'categoryId' => 'null'
        };

        OASClient client;
        OASProductCategoryApi api;
        String js = '';

        client = new OASClient();
        api = new OASProductCategoryApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteProductCategory(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteProductCategory(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getProductCategoryTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'categoryId' => 'null'
        };

        OASClient client;
        OASProductCategoryApi api;
        OASProductCategory response;
        OASProductCategory expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductCategoryApi(client);

        js = JSON.serialize(OASProductCategory.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductCategory.getExample();
        response = (OASProductCategory) api.getProductCategory(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductCategory.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductCategory.getExample();
        response = (OASProductCategory) api.getProductCategory(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductCategory.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductCategory.getExample();
        response = (OASProductCategory) api.getProductCategory(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listProductCategoriesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASProductCategoryApi api;
        List<OASProductCategory> response;
        List<OASProductCategory> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductCategoryApi(client);

        js = JSON.serialize(new List<OASProductCategory>{OASProductCategory.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProductCategory>{OASProductCategory.getExample()};
        response = (List<OASProductCategory>) api.listProductCategories();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASProductCategory>{OASProductCategory.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProductCategory>{OASProductCategory.getExample()};
        response = (List<OASProductCategory>) api.listProductCategories();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateProductCategoryTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'categoryId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASProductCategoryApi api;
        OASProductCategory response;
        OASProductCategory expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductCategoryApi(client);

        js = JSON.serialize(OASProductCategory.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductCategory.getExample();
        response = (OASProductCategory) api.updateProductCategory(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductCategory.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductCategory.getExample();
        response = (OASProductCategory) api.updateProductCategory(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductCategory.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductCategory.getExample();
        response = (OASProductCategory) api.updateProductCategory(params);
        System.assertEquals(expectedResponse, response);
    }
}