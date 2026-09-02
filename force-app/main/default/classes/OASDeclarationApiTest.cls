@isTest
private class OASDeclarationApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createDeclarationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSDeclarationCreate' => ''
        };

        OASClient client;
        OASDeclarationApi api;
        OASDeclaration response;
        OASDeclaration expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeclarationApi(client);

        js = JSON.serialize(OASDeclaration.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeclaration.getExample();
        response = (OASDeclaration) api.createDeclaration(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeclaration.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeclaration.getExample();
        response = (OASDeclaration) api.createDeclaration(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeclaration.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeclaration.getExample();
        response = (OASDeclaration) api.createDeclaration(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void declarationRestoreTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASDeclarationApi api;
        OASDeclaration response;
        OASDeclaration expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeclarationApi(client);

        js = JSON.serialize(OASDeclaration.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeclaration.getExample();
        response = (OASDeclaration) api.declarationRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeclaration.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeclaration.getExample();
        response = (OASDeclaration) api.declarationRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeclaration.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeclaration.getExample();
        response = (OASDeclaration) api.declarationRestore(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteDeclarationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASDeclarationApi api;
        String js = '';

        client = new OASClient();
        api = new OASDeclarationApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteDeclaration(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteDeclaration(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getDeclarationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASDeclarationApi api;
        OASDeclaration response;
        OASDeclaration expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeclarationApi(client);

        js = JSON.serialize(OASDeclaration.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeclaration.getExample();
        response = (OASDeclaration) api.getDeclaration(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeclaration.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeclaration.getExample();
        response = (OASDeclaration) api.getDeclaration(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeclaration.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeclaration.getExample();
        response = (OASDeclaration) api.getDeclaration(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getDeclarationsTest() {
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
        OASDeclarationApi api;
        List<OASDeclaration> response;
        List<OASDeclaration> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeclarationApi(client);

        js = JSON.serialize(new List<OASDeclaration>{OASDeclaration.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDeclaration>{OASDeclaration.getExample()};
        response = (List<OASDeclaration>) api.getDeclarations(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASDeclaration>{OASDeclaration.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDeclaration>{OASDeclaration.getExample()};
        response = (List<OASDeclaration>) api.getDeclarations(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateDeclarationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'oaSDeclarationUpdate' => ''
        };

        OASClient client;
        OASDeclarationApi api;
        OASDeclaration response;
        OASDeclaration expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeclarationApi(client);

        js = JSON.serialize(OASDeclaration.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeclaration.getExample();
        response = (OASDeclaration) api.updateDeclaration(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeclaration.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeclaration.getExample();
        response = (OASDeclaration) api.updateDeclaration(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeclaration.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeclaration.getExample();
        response = (OASDeclaration) api.updateDeclaration(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeclaration.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeclaration.getExample();
        response = (OASDeclaration) api.updateDeclaration(params);
        System.assertEquals(expectedResponse, response);
    }
}