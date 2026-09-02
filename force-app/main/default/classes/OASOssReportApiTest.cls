@isTest
private class OASOssReportApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void ossReportApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASOssReportApi api;
        OASOssReport response;
        OASOssReport expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOssReportApi(client);

        js = JSON.serialize(OASOssReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOssReport.getExample();
        response = (OASOssReport) api.ossReportApi();
        System.assertEquals(expectedResponse, response);
    }
}