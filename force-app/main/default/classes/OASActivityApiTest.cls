@isTest
private class OASActivityApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createActivityTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSActivity' => ''
        };

        OASClient client;
        OASActivityApi api;
        OASActivity response;
        OASActivity expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASActivityApi(client);

        js = JSON.serialize(OASActivity.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASActivity.getExample();
        response = (OASActivity) api.createActivity(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASActivity.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASActivity.getExample();
        response = (OASActivity) api.createActivity(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASActivity.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASActivity.getExample();
        response = (OASActivity) api.createActivity(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteActivityTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'activityId' => 'null'
        };

        OASClient client;
        OASActivityApi api;
        String js = '';

        client = new OASClient();
        api = new OASActivityApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteActivity(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteActivity(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteActivity(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getActivityTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'activityId' => 'null'
        };

        OASClient client;
        OASActivityApi api;
        OASActivity response;
        OASActivity expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASActivityApi(client);

        js = JSON.serialize(OASActivity.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASActivity.getExample();
        response = (OASActivity) api.getActivity(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASActivity.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASActivity.getExample();
        response = (OASActivity) api.getActivity(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASActivity.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASActivity.getExample();
        response = (OASActivity) api.getActivity(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listActivitiesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'contactId' => 'null',
            'activityType' => 'null',
            'status' => 'null',
            'assignedTo' => 'null',
            'overdueOnly' => ''
        };

        OASClient client;
        OASActivityApi api;
        List<OASActivity> response;
        List<OASActivity> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASActivityApi(client);

        js = JSON.serialize(new List<OASActivity>{OASActivity.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASActivity>{OASActivity.getExample()};
        response = (List<OASActivity>) api.listActivities(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASActivity>{OASActivity.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASActivity>{OASActivity.getExample()};
        response = (List<OASActivity>) api.listActivities(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateActivityTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'activityId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASActivityApi api;
        OASActivity response;
        OASActivity expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASActivityApi(client);

        js = JSON.serialize(OASActivity.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASActivity.getExample();
        response = (OASActivity) api.updateActivity(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASActivity.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASActivity.getExample();
        response = (OASActivity) api.updateActivity(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASActivity.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASActivity.getExample();
        response = (OASActivity) api.updateActivity(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASActivity.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASActivity.getExample();
        response = (OASActivity) api.updateActivity(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateActivityStatusTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'activityId' => 'null',
            'oaSActivityStatusUpdate' => ''
        };

        OASClient client;
        OASActivityApi api;
        OASActivity response;
        OASActivity expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASActivityApi(client);

        js = JSON.serialize(OASActivity.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASActivity.getExample();
        response = (OASActivity) api.updateActivityStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASActivity.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASActivity.getExample();
        response = (OASActivity) api.updateActivityStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASActivity.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASActivity.getExample();
        response = (OASActivity) api.updateActivityStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASActivity.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASActivity.getExample();
        response = (OASActivity) api.updateActivityStatus(params);
        System.assertEquals(expectedResponse, response);
    }
}