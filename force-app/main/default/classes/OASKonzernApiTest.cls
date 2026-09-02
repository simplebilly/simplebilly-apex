@isTest
private class OASKonzernApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void konzernExportApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => ''
        };

        OASClient client;
        OASKonzernApi api;
        OASKonzernExportResponse response;
        OASKonzernExportResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASKonzernApi(client);

        js = JSON.serialize(OASKonzernExportResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASKonzernExportResponse.getExample();
        response = (OASKonzernExportResponse) api.konzernExportApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void konzernStatusApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => ''
        };

        OASClient client;
        OASKonzernApi api;
        OASKonzernStatus response;
        OASKonzernStatus expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASKonzernApi(client);

        js = JSON.serialize(OASKonzernStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASKonzernStatus.getExample();
        response = (OASKonzernStatus) api.konzernStatusApi(params);
        System.assertEquals(expectedResponse, response);
    }
}