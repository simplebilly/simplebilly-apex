@isTest
private class OASJobPostingApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createJobPostingTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSJobPostingCreate' => ''
        };

        OASClient client;
        OASJobPostingApi api;
        OASJobPosting response;
        OASJobPosting expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASJobPostingApi(client);

        js = JSON.serialize(OASJobPosting.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJobPosting.getExample();
        response = (OASJobPosting) api.createJobPosting(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASJobPosting.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJobPosting.getExample();
        response = (OASJobPosting) api.createJobPosting(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASJobPosting.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJobPosting.getExample();
        response = (OASJobPosting) api.createJobPosting(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteJobPostingTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASJobPostingApi api;
        String js = '';

        client = new OASClient();
        api = new OASJobPostingApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteJobPosting(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteJobPosting(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getJobPostingTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASJobPostingApi api;
        OASJobPosting response;
        OASJobPosting expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASJobPostingApi(client);

        js = JSON.serialize(OASJobPosting.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJobPosting.getExample();
        response = (OASJobPosting) api.getJobPosting(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASJobPosting.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJobPosting.getExample();
        response = (OASJobPosting) api.getJobPosting(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASJobPosting.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJobPosting.getExample();
        response = (OASJobPosting) api.getJobPosting(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listJobPostingsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'status' => 'null',
            'page' => '',
            'pageSize' => ''
        };

        OASClient client;
        OASJobPostingApi api;
        List<OASJobPosting> response;
        List<OASJobPosting> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASJobPostingApi(client);

        js = JSON.serialize(new List<OASJobPosting>{OASJobPosting.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASJobPosting>{OASJobPosting.getExample()};
        response = (List<OASJobPosting>) api.listJobPostings(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateJobPostingTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'oaSJobPostingUpdate' => ''
        };

        OASClient client;
        OASJobPostingApi api;
        OASJobPosting response;
        OASJobPosting expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASJobPostingApi(client);

        js = JSON.serialize(OASJobPosting.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJobPosting.getExample();
        response = (OASJobPosting) api.updateJobPosting(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASJobPosting.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJobPosting.getExample();
        response = (OASJobPosting) api.updateJobPosting(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASJobPosting.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJobPosting.getExample();
        response = (OASJobPosting) api.updateJobPosting(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASJobPosting.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJobPosting.getExample();
        response = (OASJobPosting) api.updateJobPosting(params);
        System.assertEquals(expectedResponse, response);
    }
}