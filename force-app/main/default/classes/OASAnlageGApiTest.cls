@isTest
private class OASAnlageGApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void anlageGApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => ''
        };

        OASClient client;
        OASAnlageGApi api;
        OASAnlageGErgebnis response;
        OASAnlageGErgebnis expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAnlageGApi(client);

        js = JSON.serialize(OASAnlageGErgebnis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAnlageGErgebnis.getExample();
        response = (OASAnlageGErgebnis) api.anlageGApi(params);
        System.assertEquals(expectedResponse, response);
    }
}