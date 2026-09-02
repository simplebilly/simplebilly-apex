@isTest
private class OASTrainingAssignmentApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createTrainingAssignmentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSTrainingAssignmentCreate' => ''
        };

        OASClient client;
        OASTrainingAssignmentApi api;
        OASTrainingAssignment response;
        OASTrainingAssignment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASTrainingAssignmentApi(client);

        js = JSON.serialize(OASTrainingAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTrainingAssignment.getExample();
        response = (OASTrainingAssignment) api.createTrainingAssignment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTrainingAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTrainingAssignment.getExample();
        response = (OASTrainingAssignment) api.createTrainingAssignment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTrainingAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTrainingAssignment.getExample();
        response = (OASTrainingAssignment) api.createTrainingAssignment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteTrainingAssignmentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASTrainingAssignmentApi api;
        String js = '';

        client = new OASClient();
        api = new OASTrainingAssignmentApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteTrainingAssignment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteTrainingAssignment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getTrainingAssignmentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASTrainingAssignmentApi api;
        OASTrainingAssignment response;
        OASTrainingAssignment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASTrainingAssignmentApi(client);

        js = JSON.serialize(OASTrainingAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTrainingAssignment.getExample();
        response = (OASTrainingAssignment) api.getTrainingAssignment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTrainingAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTrainingAssignment.getExample();
        response = (OASTrainingAssignment) api.getTrainingAssignment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTrainingAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTrainingAssignment.getExample();
        response = (OASTrainingAssignment) api.getTrainingAssignment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getTrainingAssignmentsTest() {
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
        OASTrainingAssignmentApi api;
        List<OASTrainingAssignment> response;
        List<OASTrainingAssignment> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASTrainingAssignmentApi(client);

        js = JSON.serialize(new List<OASTrainingAssignment>{OASTrainingAssignment.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTrainingAssignment>{OASTrainingAssignment.getExample()};
        response = (List<OASTrainingAssignment>) api.getTrainingAssignments(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASTrainingAssignment>{OASTrainingAssignment.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTrainingAssignment>{OASTrainingAssignment.getExample()};
        response = (List<OASTrainingAssignment>) api.getTrainingAssignments(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateTrainingAssignmentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'oaSTrainingAssignmentUpdate' => ''
        };

        OASClient client;
        OASTrainingAssignmentApi api;
        OASTrainingAssignment response;
        OASTrainingAssignment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASTrainingAssignmentApi(client);

        js = JSON.serialize(OASTrainingAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTrainingAssignment.getExample();
        response = (OASTrainingAssignment) api.updateTrainingAssignment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTrainingAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTrainingAssignment.getExample();
        response = (OASTrainingAssignment) api.updateTrainingAssignment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTrainingAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTrainingAssignment.getExample();
        response = (OASTrainingAssignment) api.updateTrainingAssignment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTrainingAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTrainingAssignment.getExample();
        response = (OASTrainingAssignment) api.updateTrainingAssignment(params);
        System.assertEquals(expectedResponse, response);
    }
}