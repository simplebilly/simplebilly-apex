@isTest
private class OASOffenlegungApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void offenlegungApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASOffenlegungApi api;
        OASOffenlegungReport response;
        OASOffenlegungReport expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOffenlegungApi(client);

        js = JSON.serialize(OASOffenlegungReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOffenlegungReport.getExample();
        response = (OASOffenlegungReport) api.offenlegungApi();
        System.assertEquals(expectedResponse, response);
    }
}