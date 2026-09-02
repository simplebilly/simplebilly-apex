@isTest
private class OASGroupFigureApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createGroupFigureTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSGroupFigureCreate' => ''
        };

        OASClient client;
        OASGroupFigureApi api;
        OASGroupFigure response;
        OASGroupFigure expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGroupFigureApi(client);

        js = JSON.serialize(OASGroupFigure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGroupFigure.getExample();
        response = (OASGroupFigure) api.createGroupFigure(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASGroupFigure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGroupFigure.getExample();
        response = (OASGroupFigure) api.createGroupFigure(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASGroupFigure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGroupFigure.getExample();
        response = (OASGroupFigure) api.createGroupFigure(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteGroupFigureTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => ''
        };

        OASClient client;
        OASGroupFigureApi api;
        String js = '';

        client = new OASClient();
        api = new OASGroupFigureApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteGroupFigure(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteGroupFigure(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getGroupFigureTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => ''
        };

        OASClient client;
        OASGroupFigureApi api;
        OASGroupFigure response;
        OASGroupFigure expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGroupFigureApi(client);

        js = JSON.serialize(OASGroupFigure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGroupFigure.getExample();
        response = (OASGroupFigure) api.getGroupFigure(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASGroupFigure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGroupFigure.getExample();
        response = (OASGroupFigure) api.getGroupFigure(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASGroupFigure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGroupFigure.getExample();
        response = (OASGroupFigure) api.getGroupFigure(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getGroupFiguresTest() {
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
        OASGroupFigureApi api;
        List<OASGroupFigure> response;
        List<OASGroupFigure> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGroupFigureApi(client);

        js = JSON.serialize(new List<OASGroupFigure>{OASGroupFigure.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASGroupFigure>{OASGroupFigure.getExample()};
        response = (List<OASGroupFigure>) api.getGroupFigures(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASGroupFigure>{OASGroupFigure.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASGroupFigure>{OASGroupFigure.getExample()};
        response = (List<OASGroupFigure>) api.getGroupFigures(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateGroupFigureTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => '',
            'oaSGroupFigureUpdate' => ''
        };

        OASClient client;
        OASGroupFigureApi api;
        OASGroupFigure response;
        OASGroupFigure expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGroupFigureApi(client);

        js = JSON.serialize(OASGroupFigure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGroupFigure.getExample();
        response = (OASGroupFigure) api.updateGroupFigure(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASGroupFigure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGroupFigure.getExample();
        response = (OASGroupFigure) api.updateGroupFigure(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASGroupFigure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGroupFigure.getExample();
        response = (OASGroupFigure) api.updateGroupFigure(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASGroupFigure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGroupFigure.getExample();
        response = (OASGroupFigure) api.updateGroupFigure(params);
        System.assertEquals(expectedResponse, response);
    }
}