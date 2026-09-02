@isTest
private class OASShopApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void shopEditorSaveTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => ''
        };

        OASClient client;
        OASShopApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShopApi(client);
        api.shopEditorSave(params);
    }
}