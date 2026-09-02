@isTest
private class OASBomApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createBomTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSBomCreate' => ''
        };

        OASClient client;
        OASBomApi api;
        OASBom response;
        OASBom expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBomApi(client);

        js = JSON.serialize(OASBom.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBom.getExample();
        response = (OASBom) api.createBom(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASBom.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBom.getExample();
        response = (OASBom) api.createBom(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASBom.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBom.getExample();
        response = (OASBom) api.createBom(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteBomTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'bomId' => 'null'
        };

        OASClient client;
        OASBomApi api;
        String js = '';

        client = new OASClient();
        api = new OASBomApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteBom(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteBom(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getBomTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'bomId' => 'null'
        };

        OASClient client;
        OASBomApi api;
        OASBom response;
        OASBom expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBomApi(client);

        js = JSON.serialize(OASBom.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBom.getExample();
        response = (OASBom) api.getBom(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASBom.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBom.getExample();
        response = (OASBom) api.getBom(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASBom.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBom.getExample();
        response = (OASBom) api.getBom(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listBomsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'search' => 'null',
            'productId' => 'null'
        };

        OASClient client;
        OASBomApi api;
        List<OASBom> response;
        List<OASBom> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBomApi(client);

        js = JSON.serialize(new List<OASBom>{OASBom.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASBom>{OASBom.getExample()};
        response = (List<OASBom>) api.listBoms(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASBom>{OASBom.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASBom>{OASBom.getExample()};
        response = (List<OASBom>) api.listBoms(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateBomTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'bomId' => 'null',
            'oaSBomUpdate' => ''
        };

        OASClient client;
        OASBomApi api;
        OASBom response;
        OASBom expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBomApi(client);

        js = JSON.serialize(OASBom.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBom.getExample();
        response = (OASBom) api.updateBom(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASBom.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBom.getExample();
        response = (OASBom) api.updateBom(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASBom.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBom.getExample();
        response = (OASBom) api.updateBom(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASBom.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBom.getExample();
        response = (OASBom) api.updateBom(params);
        System.assertEquals(expectedResponse, response);
    }
}