@isTest
private class OASDatevImportApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void datevImportApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => ''
        };

        OASClient client;
        OASDatevImportApi api;
        OASDatevImportResponse response;
        OASDatevImportResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDatevImportApi(client);

        js = JSON.serialize(OASDatevImportResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDatevImportResponse.getExample();
        response = (OASDatevImportResponse) api.datevImportApi(params);
        System.assertEquals(expectedResponse, response);
    }
}