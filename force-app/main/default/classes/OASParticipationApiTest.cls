@isTest
private class OASParticipationApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createParticipationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSParticipationCreate' => ''
        };

        OASClient client;
        OASParticipationApi api;
        OASParticipation response;
        OASParticipation expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASParticipationApi(client);

        js = JSON.serialize(OASParticipation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASParticipation.getExample();
        response = (OASParticipation) api.createParticipation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASParticipation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASParticipation.getExample();
        response = (OASParticipation) api.createParticipation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASParticipation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASParticipation.getExample();
        response = (OASParticipation) api.createParticipation(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteParticipationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASParticipationApi api;
        String js = '';

        client = new OASClient();
        api = new OASParticipationApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteParticipation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteParticipation(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getParticipationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASParticipationApi api;
        OASParticipation response;
        OASParticipation expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASParticipationApi(client);

        js = JSON.serialize(OASParticipation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASParticipation.getExample();
        response = (OASParticipation) api.getParticipation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASParticipation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASParticipation.getExample();
        response = (OASParticipation) api.getParticipation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASParticipation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASParticipation.getExample();
        response = (OASParticipation) api.getParticipation(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getParticipationsTest() {
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
        OASParticipationApi api;
        List<OASParticipation> response;
        List<OASParticipation> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASParticipationApi(client);

        js = JSON.serialize(new List<OASParticipation>{OASParticipation.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASParticipation>{OASParticipation.getExample()};
        response = (List<OASParticipation>) api.getParticipations(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASParticipation>{OASParticipation.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASParticipation>{OASParticipation.getExample()};
        response = (List<OASParticipation>) api.getParticipations(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateParticipationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'oaSParticipationUpdate' => ''
        };

        OASClient client;
        OASParticipationApi api;
        OASParticipation response;
        OASParticipation expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASParticipationApi(client);

        js = JSON.serialize(OASParticipation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASParticipation.getExample();
        response = (OASParticipation) api.updateParticipation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASParticipation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASParticipation.getExample();
        response = (OASParticipation) api.updateParticipation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASParticipation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASParticipation.getExample();
        response = (OASParticipation) api.updateParticipation(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASParticipation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASParticipation.getExample();
        response = (OASParticipation) api.updateParticipation(params);
        System.assertEquals(expectedResponse, response);
    }
}