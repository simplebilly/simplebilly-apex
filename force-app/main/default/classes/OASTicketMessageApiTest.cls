@isTest
private class OASTicketMessageApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void listMessagesApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'ticketId' => 'null'
        };

        OASClient client;
        OASTicketMessageApi api;
        List<OASTicketMessage> response;
        List<OASTicketMessage> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASTicketMessageApi(client);

        js = JSON.serialize(new List<OASTicketMessage>{OASTicketMessage.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTicketMessage>{OASTicketMessage.getExample()};
        response = (List<OASTicketMessage>) api.listMessagesApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void sendMessageApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'ticketId' => 'null',
            'oaSSendMessageDto' => ''
        };

        OASClient client;
        OASTicketMessageApi api;
        OASTicketMessage response;
        OASTicketMessage expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASTicketMessageApi(client);

        js = JSON.serialize(OASTicketMessage.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTicketMessage.getExample();
        response = (OASTicketMessage) api.sendMessageApi(params);
        System.assertEquals(expectedResponse, response);
    }
}