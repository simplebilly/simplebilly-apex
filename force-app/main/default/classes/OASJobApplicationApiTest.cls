@isTest
private class OASJobApplicationApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void applyPublicTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'postingId' => 'null'
        };

        OASClient client;
        OASJobApplicationApi api;
        String js = '';

        client = new OASClient();
        api = new OASJobApplicationApi(client);
        api.applyPublic(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteJobApplicationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'applicationId' => 'null'
        };

        OASClient client;
        OASJobApplicationApi api;
        OASJobApplication response;
        OASJobApplication expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASJobApplicationApi(client);

        js = JSON.serialize(OASJobApplication.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJobApplication.getExample();
        response = (OASJobApplication) api.deleteJobApplication(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void downloadCvTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'applicationId' => 'null'
        };

        OASClient client;
        OASJobApplicationApi api;
        String js = '';

        client = new OASClient();
        api = new OASJobApplicationApi(client);
        api.downloadCv(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getJobApplicationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'applicationId' => 'null'
        };

        OASClient client;
        OASJobApplicationApi api;
        OASJobApplication response;
        OASJobApplication expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASJobApplicationApi(client);

        js = JSON.serialize(OASJobApplication.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJobApplication.getExample();
        response = (OASJobApplication) api.getJobApplication(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Inbound CV email, mailgun/sendgrid inbound-parse style: multipart form\nwith &#x60;from&#x60;, &#x60;subject&#x60;, &#x60;body-plain&#x60; and one or more &#x60;attachment-N&#x60; file\nfields. The subject may reference a posting as &#x60;[JOB-&lt;posting_id&gt;]&#x60;;\nwithout one the application lands in the general inbox.
     *
     * 
     */
    @isTest
    private static void inboundEmailTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASJobApplicationApi api;
        String js = '';

        client = new OASClient();
        api = new OASJobApplicationApi(client);
        api.inboundEmail();
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listJobApplicationsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'postingId' => 'null',
            'status' => 'null',
            'page' => '',
            'pageSize' => ''
        };

        OASClient client;
        OASJobApplicationApi api;
        List<OASJobApplication> response;
        List<OASJobApplication> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASJobApplicationApi(client);

        js = JSON.serialize(new List<OASJobApplication>{OASJobApplication.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASJobApplication>{OASJobApplication.getExample()};
        response = (List<OASJobApplication>) api.listJobApplications(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listPublicPostingsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASJobApplicationApi api;
        List<OASPublicPosting> response;
        List<OASPublicPosting> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASJobApplicationApi(client);

        js = JSON.serialize(new List<OASPublicPosting>{OASPublicPosting.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPublicPosting>{OASPublicPosting.getExample()};
        response = (List<OASPublicPosting>) api.listPublicPostings();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void scoreJobApplicationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'applicationId' => 'null'
        };

        OASClient client;
        OASJobApplicationApi api;
        OASJobApplication response;
        OASJobApplication expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASJobApplicationApi(client);

        js = JSON.serialize(OASJobApplication.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJobApplication.getExample();
        response = (OASJobApplication) api.scoreJobApplication(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateJobApplicationStatusTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'applicationId' => 'null',
            'oaSApplicationStatusDto' => ''
        };

        OASClient client;
        OASJobApplicationApi api;
        OASJobApplication response;
        OASJobApplication expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASJobApplicationApi(client);

        js = JSON.serialize(OASJobApplication.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJobApplication.getExample();
        response = (OASJobApplication) api.updateJobApplicationStatus(params);
        System.assertEquals(expectedResponse, response);
    }
}