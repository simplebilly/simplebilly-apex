@isTest
private class OASInstituteApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void instituteStatusApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASInstituteApi api;
        OASInstituteStatus response;
        OASInstituteStatus expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASInstituteApi(client);

        js = JSON.serialize(OASInstituteStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInstituteStatus.getExample();
        response = (OASInstituteStatus) api.instituteStatusApi();
        System.assertEquals(expectedResponse, response);
    }
}