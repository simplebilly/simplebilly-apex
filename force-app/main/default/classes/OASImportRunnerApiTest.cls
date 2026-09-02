@isTest
private class OASImportRunnerApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void getImportStatusTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'jobId' => 'null'
        };

        OASClient client;
        OASImportRunnerApi api;
        OASImportJobStatus response;
        OASImportJobStatus expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASImportRunnerApi(client);

        js = JSON.serialize(OASImportJobStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASImportJobStatus.getExample();
        response = (OASImportJobStatus) api.getImportStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASImportJobStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASImportJobStatus.getExample();
        response = (OASImportJobStatus) api.getImportStatus(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void startImportTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSImportStartRequest' => ''
        };

        OASClient client;
        OASImportRunnerApi api;
        OASImportStartResponse response;
        OASImportStartResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASImportRunnerApi(client);

        js = JSON.serialize(OASImportStartResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASImportStartResponse.getExample();
        response = (OASImportStartResponse) api.startImport(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASImportStartResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASImportStartResponse.getExample();
        response = (OASImportStartResponse) api.startImport(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void testImportConnectionTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSImportTestRequest' => ''
        };

        OASClient client;
        OASImportRunnerApi api;
        OASImportTestResponse response;
        OASImportTestResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASImportRunnerApi(client);

        js = JSON.serialize(OASImportTestResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASImportTestResponse.getExample();
        response = (OASImportTestResponse) api.testImportConnection(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASImportTestResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASImportTestResponse.getExample();
        response = (OASImportTestResponse) api.testImportConnection(params);
        System.assertEquals(expectedResponse, response);
    }
}