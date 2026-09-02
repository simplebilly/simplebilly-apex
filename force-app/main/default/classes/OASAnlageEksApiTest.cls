@isTest
private class OASAnlageEksApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void eksApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => ''
        };

        OASClient client;
        OASAnlageEksApi api;
        OASEksErgebnis response;
        OASEksErgebnis expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAnlageEksApi(client);

        js = JSON.serialize(OASEksErgebnis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEksErgebnis.getExample();
        response = (OASEksErgebnis) api.eksApi(params);
        System.assertEquals(expectedResponse, response);
    }
}