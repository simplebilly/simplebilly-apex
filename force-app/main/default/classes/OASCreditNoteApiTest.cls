@isTest
private class OASCreditNoteApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createCreditNoteTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => ''
        };

        OASClient client;
        OASCreditNoteApi api;
        OASInvoice response;
        OASInvoice expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCreditNoteApi(client);

        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.createCreditNote(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.createCreditNote(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.createCreditNote(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void downloadCreditNotePdfTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'creditNoteId' => 'null'
        };

        OASClient client;
        OASCreditNoteApi api;
        String js = '';

        client = new OASClient();
        api = new OASCreditNoteApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.downloadCreditNotePdf(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.downloadCreditNotePdf(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getCreditNoteTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'creditNoteId' => 'null'
        };

        OASClient client;
        OASCreditNoteApi api;
        OASInvoice response;
        OASInvoice expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCreditNoteApi(client);

        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.getCreditNote(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.getCreditNote(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.getCreditNote(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listCreditNotesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => 1,
            'pageSize' => '',
            'search' => 'null',
            'includeDeleted' => ''
        };

        OASClient client;
        OASCreditNoteApi api;
        List<OASInvoice> response;
        List<OASInvoice> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCreditNoteApi(client);

        js = JSON.serialize(new List<OASInvoice>{OASInvoice.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASInvoice>{OASInvoice.getExample()};
        response = (List<OASInvoice>) api.listCreditNotes(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASInvoice>{OASInvoice.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASInvoice>{OASInvoice.getExample()};
        response = (List<OASInvoice>) api.listCreditNotes(params);
        System.assertEquals(expectedResponse, response);
    }
}