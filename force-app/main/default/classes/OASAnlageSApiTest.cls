@isTest
private class OASAnlageSApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void anlageSApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => ''
        };

        OASClient client;
        OASAnlageSApi api;
        OASAnlageSErgebnis response;
        OASAnlageSErgebnis expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAnlageSApi(client);

        js = JSON.serialize(OASAnlageSErgebnis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAnlageSErgebnis.getExample();
        response = (OASAnlageSErgebnis) api.anlageSApi(params);
        System.assertEquals(expectedResponse, response);
    }
}