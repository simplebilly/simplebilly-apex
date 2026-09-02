@isTest
private class OASEuerApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void euerApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => ''
        };

        OASClient client;
        OASEuerApi api;
        OASEuerErgebnis response;
        OASEuerErgebnis expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEuerApi(client);

        js = JSON.serialize(OASEuerErgebnis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEuerErgebnis.getExample();
        response = (OASEuerErgebnis) api.euerApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void euerKategorienApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => ''
        };

        OASClient client;
        OASEuerApi api;
        OASEuerDetailErgebnis response;
        OASEuerDetailErgebnis expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEuerApi(client);

        js = JSON.serialize(OASEuerDetailErgebnis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEuerDetailErgebnis.getExample();
        response = (OASEuerDetailErgebnis) api.euerKategorienApi(params);
        System.assertEquals(expectedResponse, response);
    }
}