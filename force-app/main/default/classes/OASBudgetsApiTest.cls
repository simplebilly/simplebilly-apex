@isTest
private class OASBudgetsApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void budgetsApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => '',
            'month' => ''
        };

        OASClient client;
        OASBudgetsApi api;
        OASBudgetErgebnis response;
        OASBudgetErgebnis expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBudgetsApi(client);

        js = JSON.serialize(OASBudgetErgebnis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBudgetErgebnis.getExample();
        response = (OASBudgetErgebnis) api.budgetsApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void upsertBudgetGoalApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'category' => 'null',
            'oaSBudgetGoalRequest' => ''
        };

        OASClient client;
        OASBudgetsApi api;
        OASBudget response;
        OASBudget expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBudgetsApi(client);

        js = JSON.serialize(OASBudget.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBudget.getExample();
        response = (OASBudget) api.upsertBudgetGoalApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASBudget.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBudget.getExample();
        response = (OASBudget) api.upsertBudgetGoalApi(params);
        System.assertEquals(expectedResponse, response);
    }
}