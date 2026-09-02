@isTest
private class OASPlausibilityApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void plausibilityCheckApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'dateFrom' => 'null',
            'dateTo' => 'null'
        };

        OASClient client;
        OASPlausibilityApi api;
        OASPlausibilityReport response;
        OASPlausibilityReport expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPlausibilityApi(client);

        js = JSON.serialize(OASPlausibilityReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPlausibilityReport.getExample();
        response = (OASPlausibilityReport) api.plausibilityCheckApi(params);
        System.assertEquals(expectedResponse, response);
    }
}