@isTest
private class OASAiApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void aiSuggestApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSAiSuggestionRequest' => ''
        };

        OASClient client;
        OASAiApi api;
        OASAiSuggestion response;
        OASAiSuggestion expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAiApi(client);

        js = JSON.serialize(OASAiSuggestion.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAiSuggestion.getExample();
        response = (OASAiSuggestion) api.aiSuggestApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAiSuggestion.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAiSuggestion.getExample();
        response = (OASAiSuggestion) api.aiSuggestApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void createWorkerApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSAiConfigDto' => ''
        };

        OASClient client;
        OASAiApi api;
        OASAiWorkerConfig response;
        OASAiWorkerConfig expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAiApi(client);

        js = JSON.serialize(OASAiWorkerConfig.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAiWorkerConfig.getExample();
        response = (OASAiWorkerConfig) api.createWorkerApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listWorkersApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASAiApi api;
        List<OASAiWorkerConfig> response;
        List<OASAiWorkerConfig> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAiApi(client);

        js = JSON.serialize(new List<OASAiWorkerConfig>{OASAiWorkerConfig.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASAiWorkerConfig>{OASAiWorkerConfig.getExample()};
        response = (List<OASAiWorkerConfig>) api.listWorkersApi();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void runWorkerApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'workerId' => 'null',
            'oaSAiSuggestionRequest' => ''
        };

        OASClient client;
        OASAiApi api;
        OASAiSuggestion response;
        OASAiSuggestion expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAiApi(client);

        js = JSON.serialize(OASAiSuggestion.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAiSuggestion.getExample();
        response = (OASAiSuggestion) api.runWorkerApi(params);
        System.assertEquals(expectedResponse, response);
    }
}