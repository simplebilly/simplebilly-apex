@isTest
private class OASTenantSettingsApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void getTenantSettingsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASTenantSettingsApi api;
        OASTenantSettings response;
        OASTenantSettings expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASTenantSettingsApi(client);

        js = JSON.serialize(OASTenantSettings.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTenantSettings.getExample();
        response = (OASTenantSettings) api.getTenantSettings();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTenantSettings.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTenantSettings.getExample();
        response = (OASTenantSettings) api.getTenantSettings();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateTenantSettingsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSUpdateTenantSettings' => ''
        };

        OASClient client;
        OASTenantSettingsApi api;
        OASTenantSettings response;
        OASTenantSettings expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASTenantSettingsApi(client);

        js = JSON.serialize(OASTenantSettings.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTenantSettings.getExample();
        response = (OASTenantSettings) api.updateTenantSettings(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTenantSettings.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTenantSettings.getExample();
        response = (OASTenantSettings) api.updateTenantSettings(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTenantSettings.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTenantSettings.getExample();
        response = (OASTenantSettings) api.updateTenantSettings(params);
        System.assertEquals(expectedResponse, response);
    }
}