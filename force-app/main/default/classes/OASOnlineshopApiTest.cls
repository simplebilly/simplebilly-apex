@isTest
private class OASOnlineshopApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void getSmtpConfigApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASOnlineshopApi api;
        OASSmtpConfig response;
        OASSmtpConfig expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOnlineshopApi(client);

        js = JSON.serialize(OASSmtpConfig.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSmtpConfig.getExample();
        response = (OASSmtpConfig) api.getSmtpConfigApi();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void saveSmtpConfigApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSSmtpConfig' => ''
        };

        OASClient client;
        OASOnlineshopApi api;
        OASSmtpConfig response;
        OASSmtpConfig expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOnlineshopApi(client);

        js = JSON.serialize(OASSmtpConfig.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSmtpConfig.getExample();
        response = (OASSmtpConfig) api.saveSmtpConfigApi(params);
        System.assertEquals(expectedResponse, response);
    }
}