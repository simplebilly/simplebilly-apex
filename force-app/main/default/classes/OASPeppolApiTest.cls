@isTest
private class OASPeppolApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void peppolApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASPeppolApi api;
        OASPeppolResponse response;
        OASPeppolResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPeppolApi(client);

        js = JSON.serialize(OASPeppolResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPeppolResponse.getExample();
        response = (OASPeppolResponse) api.peppolApi(params);
        System.assertEquals(expectedResponse, response);
    }
}