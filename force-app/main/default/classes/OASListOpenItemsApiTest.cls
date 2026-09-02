@isTest
private class OASListOpenItemsApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void listOpenItemsApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'reminderLevel1Days' => 2147483648L,
            'reminderLevel2Days' => 2147483648L,
            'reminderLevel3Days' => 2147483648L,
            'customerId' => 'null'
        };

        OASClient client;
        OASListOpenItemsApi api;
        List<OASOpenItem> response;
        List<OASOpenItem> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASListOpenItemsApi(client);

        js = JSON.serialize(new List<OASOpenItem>{OASOpenItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOpenItem>{OASOpenItem.getExample()};
        response = (List<OASOpenItem>) api.listOpenItemsApi(params);
        System.assertEquals(expectedResponse, response);
    }
}