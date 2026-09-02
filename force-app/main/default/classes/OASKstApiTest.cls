@isTest
private class OASKstApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void kstApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => '',
            'gewinn' => 'null'
        };

        OASClient client;
        OASKstApi api;
        OASKstErgebnis response;
        OASKstErgebnis expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASKstApi(client);

        js = JSON.serialize(OASKstErgebnis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASKstErgebnis.getExample();
        response = (OASKstErgebnis) api.kstApi(params);
        System.assertEquals(expectedResponse, response);
    }
}