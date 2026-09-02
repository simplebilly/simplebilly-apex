@isTest
private class OASSearchApiTest {
    /**
     * GET /api/v1/search?q&#x3D;...
     *
     * 
     */
    @isTest
    private static void globalSearchTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'q' => 'null'
        };

        OASClient client;
        OASSearchApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSearchApi(client);
        api.globalSearch(params);
    }

    /**
     * GET /api/v1/me/permissions — resolved permissions from the auth token,\nused by the frontend to show/hide admin navigation.
     *
     * 
     */
    @isTest
    private static void myPermissionsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASSearchApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSearchApi(client);
        api.myPermissions();
    }
}