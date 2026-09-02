@isTest
private class OASUstvaApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void jahresustApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => ''
        };

        OASClient client;
        OASUstvaApi api;
        OASJahresUstErgebnis response;
        OASJahresUstErgebnis expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASUstvaApi(client);

        js = JSON.serialize(OASJahresUstErgebnis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASJahresUstErgebnis.getExample();
        response = (OASJahresUstErgebnis) api.jahresustApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void ustvaApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'zeitraum' => 'null'
        };

        OASClient client;
        OASUstvaApi api;
        OASUstvaErgebnis response;
        OASUstvaErgebnis expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASUstvaApi(client);

        js = JSON.serialize(OASUstvaErgebnis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUstvaErgebnis.getExample();
        response = (OASUstvaErgebnis) api.ustvaApi(params);
        System.assertEquals(expectedResponse, response);
    }
}