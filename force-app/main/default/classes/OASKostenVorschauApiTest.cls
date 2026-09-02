@isTest
private class OASKostenVorschauApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void kostenVorschauApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => '',
            'month' => ''
        };

        OASClient client;
        OASKostenVorschauApi api;
        OASKostenVorschau response;
        OASKostenVorschau expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASKostenVorschauApi(client);

        js = JSON.serialize(OASKostenVorschau.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASKostenVorschau.getExample();
        response = (OASKostenVorschau) api.kostenVorschauApi(params);
        System.assertEquals(expectedResponse, response);
    }
}