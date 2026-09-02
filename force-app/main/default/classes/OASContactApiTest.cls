@isTest
private class OASContactApiTest {
    /**
     * Serve JSON Schema for client-side validation
     *
     * 
     */
    @isTest
    private static void contactSchemaTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASContactApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASContactApi(client);
        api.contactSchema();
    }

    /**
     * Get the full per-contact timeline (Xentral §4.6/4.7).
     *
     * Aggregates communications, quotations, orders, invoices and uploaded\ndocuments for a contact, merged into a single reverse-chronological feed.
     */
    @isTest
    private static void contactTimelineTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'contactId' => 'null'
        };

        OASClient client;
        OASContactApi api;
        OASContactTimelineResponse response;
        OASContactTimelineResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASContactApi(client);

        js = JSON.serialize(OASContactTimelineResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASContactTimelineResponse.getExample();
        response = (OASContactTimelineResponse) api.contactTimeline(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASContactTimelineResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASContactTimelineResponse.getExample();
        response = (OASContactTimelineResponse) api.contactTimeline(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASContactTimelineResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASContactTimelineResponse.getExample();
        response = (OASContactTimelineResponse) api.contactTimeline(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Create contact
     *
     * 
     */
    @isTest
    private static void createContactTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => ''
        };

        OASClient client;
        OASContactApi api;
        OASContact response;
        OASContact expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASContactApi(client);

        js = JSON.serialize(OASContact.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASContact.getExample();
        response = (OASContact) api.createContact(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Soft-delete contact
     *
     * 
     */
    @isTest
    private static void deleteContactTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'contactId' => 'null'
        };

        OASClient client;
        OASContactApi api;
        String js = '';

        client = new OASClient();
        api = new OASContactApi(client);
        api.deleteContact(params);
    }

    /**
     * Get single contact
     *
     * 
     */
    @isTest
    private static void getContactTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'contactId' => 'null'
        };

        OASClient client;
        OASContactApi api;
        OASContact response;
        OASContact expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASContactApi(client);

        js = JSON.serialize(OASContact.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASContact.getExample();
        response = (OASContact) api.getContact(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List contacts with search, type filter, and pagination
     *
     * 
     */
    @isTest
    private static void listContactsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'search' => 'null',
            'contactType' => 'null',
            'tag' => 'null'
        };

        OASClient client;
        OASContactApi api;
        List<OASContact> response;
        List<OASContact> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASContactApi(client);

        js = JSON.serialize(new List<OASContact>{OASContact.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASContact>{OASContact.getExample()};
        response = (List<OASContact>) api.listContacts(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Sales volume per contact
     *
     * 
     */
    @isTest
    private static void salesVolumeTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'search' => 'null',
            'contactType' => 'null',
            'tag' => 'null'
        };

        OASClient client;
        OASContactApi api;
        OASSalesVolumeReport response;
        OASSalesVolumeReport expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASContactApi(client);

        js = JSON.serialize(OASSalesVolumeReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSalesVolumeReport.getExample();
        response = (OASSalesVolumeReport) api.salesVolume(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update contact
     *
     * 
     */
    @isTest
    private static void updateContactTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'contactId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASContactApi api;
        OASContact response;
        OASContact expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASContactApi(client);

        js = JSON.serialize(OASContact.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASContact.getExample();
        response = (OASContact) api.updateContact(params);
        System.assertEquals(expectedResponse, response);
    }
}