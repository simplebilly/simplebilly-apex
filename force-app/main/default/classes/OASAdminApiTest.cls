@isTest
private class OASAdminApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void triggerMirrorTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASAdminApi api;
        OASMirrorTriggerResponse response;
        OASMirrorTriggerResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAdminApi(client);

        js = JSON.serialize(OASMirrorTriggerResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASMirrorTriggerResponse.getExample();
        response = (OASMirrorTriggerResponse) api.triggerMirror();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASMirrorTriggerResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASMirrorTriggerResponse.getExample();
        response = (OASMirrorTriggerResponse) api.triggerMirror();
        System.assertEquals(expectedResponse, response);
    }
}