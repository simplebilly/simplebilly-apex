@isTest
private class OASServiceAssignmentApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createServiceAssignmentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSServiceAssignmentCreate' => ''
        };

        OASClient client;
        OASServiceAssignmentApi api;
        OASServiceAssignment response;
        OASServiceAssignment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASServiceAssignmentApi(client);

        js = JSON.serialize(OASServiceAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceAssignment.getExample();
        response = (OASServiceAssignment) api.createServiceAssignment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASServiceAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceAssignment.getExample();
        response = (OASServiceAssignment) api.createServiceAssignment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASServiceAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceAssignment.getExample();
        response = (OASServiceAssignment) api.createServiceAssignment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteServiceAssignmentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASServiceAssignmentApi api;
        String js = '';

        client = new OASClient();
        api = new OASServiceAssignmentApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteServiceAssignment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteServiceAssignment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getServiceAssignmentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASServiceAssignmentApi api;
        OASServiceAssignment response;
        OASServiceAssignment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASServiceAssignmentApi(client);

        js = JSON.serialize(OASServiceAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceAssignment.getExample();
        response = (OASServiceAssignment) api.getServiceAssignment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASServiceAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceAssignment.getExample();
        response = (OASServiceAssignment) api.getServiceAssignment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASServiceAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceAssignment.getExample();
        response = (OASServiceAssignment) api.getServiceAssignment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getServiceAssignmentsTest() {
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
        OASServiceAssignmentApi api;
        List<OASServiceAssignment> response;
        List<OASServiceAssignment> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASServiceAssignmentApi(client);

        js = JSON.serialize(new List<OASServiceAssignment>{OASServiceAssignment.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASServiceAssignment>{OASServiceAssignment.getExample()};
        response = (List<OASServiceAssignment>) api.getServiceAssignments(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASServiceAssignment>{OASServiceAssignment.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASServiceAssignment>{OASServiceAssignment.getExample()};
        response = (List<OASServiceAssignment>) api.getServiceAssignments(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateServiceAssignmentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'oaSServiceAssignmentUpdate' => ''
        };

        OASClient client;
        OASServiceAssignmentApi api;
        OASServiceAssignment response;
        OASServiceAssignment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASServiceAssignmentApi(client);

        js = JSON.serialize(OASServiceAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceAssignment.getExample();
        response = (OASServiceAssignment) api.updateServiceAssignment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASServiceAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceAssignment.getExample();
        response = (OASServiceAssignment) api.updateServiceAssignment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASServiceAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceAssignment.getExample();
        response = (OASServiceAssignment) api.updateServiceAssignment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASServiceAssignment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceAssignment.getExample();
        response = (OASServiceAssignment) api.updateServiceAssignment(params);
        System.assertEquals(expectedResponse, response);
    }
}