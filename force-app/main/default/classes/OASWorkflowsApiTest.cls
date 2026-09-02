@isTest
private class OASWorkflowsApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void listWorkflowsApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASWorkflowsApi api;
        List<OASWorkflow> response;
        List<OASWorkflow> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASWorkflowsApi(client);

        js = JSON.serialize(new List<OASWorkflow>{OASWorkflow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASWorkflow>{OASWorkflow.getExample()};
        response = (List<OASWorkflow>) api.listWorkflowsApi();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASWorkflow>{OASWorkflow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASWorkflow>{OASWorkflow.getExample()};
        response = (List<OASWorkflow>) api.listWorkflowsApi();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void setWorkflowEnabledApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'workflowId' => 'null',
            'oaSWorkflowEnabledUpdate' => ''
        };

        OASClient client;
        OASWorkflowsApi api;
        OASWorkflow response;
        OASWorkflow expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASWorkflowsApi(client);

        js = JSON.serialize(OASWorkflow.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWorkflow.getExample();
        response = (OASWorkflow) api.setWorkflowEnabledApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASWorkflow.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWorkflow.getExample();
        response = (OASWorkflow) api.setWorkflowEnabledApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASWorkflow.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWorkflow.getExample();
        response = (OASWorkflow) api.setWorkflowEnabledApi(params);
        System.assertEquals(expectedResponse, response);
    }
}