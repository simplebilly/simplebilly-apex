@isTest
private class OASSupportChannelApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createChannelApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSCreateChannelDto' => ''
        };

        OASClient client;
        OASSupportChannelApi api;
        OASSupportChannel response;
        OASSupportChannel expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSupportChannelApi(client);

        js = JSON.serialize(OASSupportChannel.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupportChannel.getExample();
        response = (OASSupportChannel) api.createChannelApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteChannelApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'channelId' => 'null'
        };

        OASClient client;
        OASSupportChannelApi api;
        String js = '';

        client = new OASClient();
        api = new OASSupportChannelApi(client);
        api.deleteChannelApi(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listChannelsApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASSupportChannelApi api;
        List<OASSupportChannel> response;
        List<OASSupportChannel> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSupportChannelApi(client);

        js = JSON.serialize(new List<OASSupportChannel>{OASSupportChannel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSupportChannel>{OASSupportChannel.getExample()};
        response = (List<OASSupportChannel>) api.listChannelsApi();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateChannelApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'channelId' => 'null',
            'oaSUpdateChannelDto' => ''
        };

        OASClient client;
        OASSupportChannelApi api;
        OASSupportChannel response;
        OASSupportChannel expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSupportChannelApi(client);

        js = JSON.serialize(OASSupportChannel.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupportChannel.getExample();
        response = (OASSupportChannel) api.updateChannelApi(params);
        System.assertEquals(expectedResponse, response);
    }
}