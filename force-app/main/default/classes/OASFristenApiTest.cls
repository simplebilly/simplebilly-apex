@isTest
private class OASFristenApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void fristenApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'bundesland' => 'null',
            'voranmeldungsrhythmus' => 'null',
            'dauerfristverlaengerung' => '',
            'estAktiv' => '',
            'gewstAktiv' => '',
            'monate' => ''
        };

        OASClient client;
        OASFristenApi api;
        OASFristenErgebnis response;
        OASFristenErgebnis expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASFristenApi(client);

        js = JSON.serialize(OASFristenErgebnis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASFristenErgebnis.getExample();
        response = (OASFristenErgebnis) api.fristenApi(params);
        System.assertEquals(expectedResponse, response);
    }
}