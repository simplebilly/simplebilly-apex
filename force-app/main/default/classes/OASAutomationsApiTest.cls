@isTest
private class OASAutomationsApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void listAutomationsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASAutomationsApi api;
        List<OASAutomationDto> response;
        List<OASAutomationDto> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAutomationsApi(client);

        js = JSON.serialize(new List<OASAutomationDto>{OASAutomationDto.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASAutomationDto>{OASAutomationDto.getExample()};
        response = (List<OASAutomationDto>) api.listAutomations();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void triggerAutomationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'key' => 'null'
        };

        OASClient client;
        OASAutomationsApi api;
        Object response;
        Object expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAutomationsApi(client);
        api.triggerAutomation(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateAutomationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'key' => 'null',
            'oaSUpdateAutomation' => ''
        };

        OASClient client;
        OASAutomationsApi api;
        OASAutomationDto response;
        OASAutomationDto expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAutomationsApi(client);

        js = JSON.serialize(OASAutomationDto.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAutomationDto.getExample();
        response = (OASAutomationDto) api.updateAutomation(params);
        System.assertEquals(expectedResponse, response);
    }
}