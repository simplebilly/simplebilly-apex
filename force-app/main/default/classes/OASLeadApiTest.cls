@isTest
private class OASLeadApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void listLeadsApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'status' => 'null',
            'source' => 'null',
            'search' => 'null',
            'page' => '',
            'pageSize' => ''
        };

        OASClient client;
        OASLeadApi api;
        List<OASLead> response;
        List<OASLead> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASLeadApi(client);

        js = JSON.serialize(new List<OASLead>{OASLead.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASLead>{OASLead.getExample()};
        response = (List<OASLead>) api.listLeadsApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateLeadApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'leadId' => 'null',
            'oaSLeadUpdate' => ''
        };

        OASClient client;
        OASLeadApi api;
        OASLead response;
        OASLead expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASLeadApi(client);

        js = JSON.serialize(OASLead.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASLead.getExample();
        response = (OASLead) api.updateLeadApi(params);
        System.assertEquals(expectedResponse, response);
    }
}