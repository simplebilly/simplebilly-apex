@isTest
private class OASSupportTicketApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createTicketApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSCreateTicketRequest' => ''
        };

        OASClient client;
        OASSupportTicketApi api;
        OASSupportTicket response;
        OASSupportTicket expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSupportTicketApi(client);

        js = JSON.serialize(OASSupportTicket.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupportTicket.getExample();
        response = (OASSupportTicket) api.createTicketApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteTicketApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'ticketId' => 'null'
        };

        OASClient client;
        OASSupportTicketApi api;
        String js = '';

        client = new OASClient();
        api = new OASSupportTicketApi(client);
        api.deleteTicketApi(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getTicketApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'ticketId' => 'null'
        };

        OASClient client;
        OASSupportTicketApi api;
        OASSupportTicket response;
        OASSupportTicket expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSupportTicketApi(client);

        js = JSON.serialize(OASSupportTicket.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupportTicket.getExample();
        response = (OASSupportTicket) api.getTicketApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listTicketsApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'status' => 'null',
            'priority' => 'null',
            'assignedTo' => 'null',
            'channelType' => 'null',
            'customerId' => 'null',
            'search' => 'null',
            'page' => '',
            'pageSize' => ''
        };

        OASClient client;
        OASSupportTicketApi api;
        List<OASSupportTicket> response;
        List<OASSupportTicket> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSupportTicketApi(client);

        js = JSON.serialize(new List<OASSupportTicket>{OASSupportTicket.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSupportTicket>{OASSupportTicket.getExample()};
        response = (List<OASSupportTicket>) api.listTicketsApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateTicketApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'ticketId' => 'null',
            'oaSSupportTicketUpdate' => ''
        };

        OASClient client;
        OASSupportTicketApi api;
        OASSupportTicket response;
        OASSupportTicket expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSupportTicketApi(client);

        js = JSON.serialize(OASSupportTicket.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupportTicket.getExample();
        response = (OASSupportTicket) api.updateTicketApi(params);
        System.assertEquals(expectedResponse, response);
    }
}