@isTest
private class OASAbsenceApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createAbsenceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSAbsenceCreate' => ''
        };

        OASClient client;
        OASAbsenceApi api;
        OASAbsence response;
        OASAbsence expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAbsenceApi(client);

        js = JSON.serialize(OASAbsence.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbsence.getExample();
        response = (OASAbsence) api.createAbsence(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAbsence.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbsence.getExample();
        response = (OASAbsence) api.createAbsence(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAbsence.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbsence.getExample();
        response = (OASAbsence) api.createAbsence(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteAbsenceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASAbsenceApi api;
        String js = '';

        client = new OASClient();
        api = new OASAbsenceApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteAbsence(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteAbsence(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getAbsenceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASAbsenceApi api;
        OASAbsence response;
        OASAbsence expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAbsenceApi(client);

        js = JSON.serialize(OASAbsence.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbsence.getExample();
        response = (OASAbsence) api.getAbsence(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAbsence.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbsence.getExample();
        response = (OASAbsence) api.getAbsence(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAbsence.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbsence.getExample();
        response = (OASAbsence) api.getAbsence(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getAbsencesTest() {
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
        OASAbsenceApi api;
        List<OASAbsence> response;
        List<OASAbsence> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAbsenceApi(client);

        js = JSON.serialize(new List<OASAbsence>{OASAbsence.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASAbsence>{OASAbsence.getExample()};
        response = (List<OASAbsence>) api.getAbsences(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASAbsence>{OASAbsence.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASAbsence>{OASAbsence.getExample()};
        response = (List<OASAbsence>) api.getAbsences(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateAbsenceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'oaSAbsenceUpdate' => ''
        };

        OASClient client;
        OASAbsenceApi api;
        OASAbsence response;
        OASAbsence expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAbsenceApi(client);

        js = JSON.serialize(OASAbsence.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbsence.getExample();
        response = (OASAbsence) api.updateAbsence(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAbsence.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbsence.getExample();
        response = (OASAbsence) api.updateAbsence(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAbsence.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbsence.getExample();
        response = (OASAbsence) api.updateAbsence(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAbsence.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbsence.getExample();
        response = (OASAbsence) api.updateAbsence(params);
        System.assertEquals(expectedResponse, response);
    }
}