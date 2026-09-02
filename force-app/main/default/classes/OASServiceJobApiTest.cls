@isTest
private class OASServiceJobApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createServiceJobTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSServiceJobCreate' => ''
        };

        OASClient client;
        OASServiceJobApi api;
        OASServiceJob response;
        OASServiceJob expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASServiceJobApi(client);

        js = JSON.serialize(OASServiceJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceJob.getExample();
        response = (OASServiceJob) api.createServiceJob(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASServiceJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceJob.getExample();
        response = (OASServiceJob) api.createServiceJob(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASServiceJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceJob.getExample();
        response = (OASServiceJob) api.createServiceJob(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteServiceJobTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASServiceJobApi api;
        String js = '';

        client = new OASClient();
        api = new OASServiceJobApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteServiceJob(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteServiceJob(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getServiceJobTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASServiceJobApi api;
        OASServiceJob response;
        OASServiceJob expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASServiceJobApi(client);

        js = JSON.serialize(OASServiceJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceJob.getExample();
        response = (OASServiceJob) api.getServiceJob(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASServiceJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceJob.getExample();
        response = (OASServiceJob) api.getServiceJob(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASServiceJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceJob.getExample();
        response = (OASServiceJob) api.getServiceJob(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getServiceJobsTest() {
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
        OASServiceJobApi api;
        List<OASServiceJob> response;
        List<OASServiceJob> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASServiceJobApi(client);

        js = JSON.serialize(new List<OASServiceJob>{OASServiceJob.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASServiceJob>{OASServiceJob.getExample()};
        response = (List<OASServiceJob>) api.getServiceJobs(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASServiceJob>{OASServiceJob.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASServiceJob>{OASServiceJob.getExample()};
        response = (List<OASServiceJob>) api.getServiceJobs(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateServiceJobTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'oaSServiceJobUpdate' => ''
        };

        OASClient client;
        OASServiceJobApi api;
        OASServiceJob response;
        OASServiceJob expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASServiceJobApi(client);

        js = JSON.serialize(OASServiceJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceJob.getExample();
        response = (OASServiceJob) api.updateServiceJob(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASServiceJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceJob.getExample();
        response = (OASServiceJob) api.updateServiceJob(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASServiceJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceJob.getExample();
        response = (OASServiceJob) api.updateServiceJob(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASServiceJob.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASServiceJob.getExample();
        response = (OASServiceJob) api.updateServiceJob(params);
        System.assertEquals(expectedResponse, response);
    }
}