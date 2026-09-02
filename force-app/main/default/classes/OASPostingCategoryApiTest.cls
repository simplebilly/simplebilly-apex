@isTest
private class OASPostingCategoryApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createPostingCategoryTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => ''
        };

        OASClient client;
        OASPostingCategoryApi api;
        OASPostingCategory response;
        OASPostingCategory expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPostingCategoryApi(client);

        js = JSON.serialize(OASPostingCategory.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPostingCategory.getExample();
        response = (OASPostingCategory) api.createPostingCategory(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPostingCategory.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPostingCategory.getExample();
        response = (OASPostingCategory) api.createPostingCategory(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deletePostingCategoryTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'categoryId' => 'null'
        };

        OASClient client;
        OASPostingCategoryApi api;
        String js = '';

        client = new OASClient();
        api = new OASPostingCategoryApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deletePostingCategory(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listPostingCategoriesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASPostingCategoryApi api;
        List<OASPostingCategory> response;
        List<OASPostingCategory> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPostingCategoryApi(client);

        js = JSON.serialize(new List<OASPostingCategory>{OASPostingCategory.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPostingCategory>{OASPostingCategory.getExample()};
        response = (List<OASPostingCategory>) api.listPostingCategories();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASPostingCategory>{OASPostingCategory.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPostingCategory>{OASPostingCategory.getExample()};
        response = (List<OASPostingCategory>) api.listPostingCategories();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void seedPostingCategoriesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'skrVersion' => 'null'
        };

        OASClient client;
        OASPostingCategoryApi api;
        String js = '';

        client = new OASClient();
        api = new OASPostingCategoryApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.seedPostingCategories(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updatePostingCategoryTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'categoryId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASPostingCategoryApi api;
        OASPostingCategory response;
        OASPostingCategory expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPostingCategoryApi(client);

        js = JSON.serialize(OASPostingCategory.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPostingCategory.getExample();
        response = (OASPostingCategory) api.updatePostingCategory(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPostingCategory.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPostingCategory.getExample();
        response = (OASPostingCategory) api.updatePostingCategory(params);
        System.assertEquals(expectedResponse, response);
    }
}