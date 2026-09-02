@isTest
private class OASDeliveryNoteApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createDeliveryNoteTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSDeliveryNoteCreate' => ''
        };

        OASClient client;
        OASDeliveryNoteApi api;
        OASDeliveryNote response;
        OASDeliveryNote expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryNoteApi(client);

        js = JSON.serialize(OASDeliveryNote.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryNote.getExample();
        response = (OASDeliveryNote) api.createDeliveryNote(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryNote.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryNote.getExample();
        response = (OASDeliveryNote) api.createDeliveryNote(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryNote.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryNote.getExample();
        response = (OASDeliveryNote) api.createDeliveryNote(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteDeliveryNoteTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'deliveryNoteId' => 'null'
        };

        OASClient client;
        OASDeliveryNoteApi api;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryNoteApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteDeliveryNote(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteDeliveryNote(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deliverynoteRestoreTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'deliveryNoteId' => 'null'
        };

        OASClient client;
        OASDeliveryNoteApi api;
        OASDeliveryNote response;
        OASDeliveryNote expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryNoteApi(client);

        js = JSON.serialize(OASDeliveryNote.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryNote.getExample();
        response = (OASDeliveryNote) api.deliverynoteRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryNote.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryNote.getExample();
        response = (OASDeliveryNote) api.deliverynoteRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryNote.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryNote.getExample();
        response = (OASDeliveryNote) api.deliverynoteRestore(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void downloadDeliveryNotePdfTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'deliveryNoteId' => 'null'
        };

        OASClient client;
        OASDeliveryNoteApi api;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryNoteApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.downloadDeliveryNotePdf(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.downloadDeliveryNotePdf(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getDeliveryNoteTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'deliveryNoteId' => 'null'
        };

        OASClient client;
        OASDeliveryNoteApi api;
        OASDeliveryNote response;
        OASDeliveryNote expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryNoteApi(client);

        js = JSON.serialize(OASDeliveryNote.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryNote.getExample();
        response = (OASDeliveryNote) api.getDeliveryNote(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryNote.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryNote.getExample();
        response = (OASDeliveryNote) api.getDeliveryNote(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryNote.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryNote.getExample();
        response = (OASDeliveryNote) api.getDeliveryNote(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listDeliveryNotesTest() {
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
        OASDeliveryNoteApi api;
        List<OASDeliveryNote> response;
        List<OASDeliveryNote> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryNoteApi(client);

        js = JSON.serialize(new List<OASDeliveryNote>{OASDeliveryNote.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDeliveryNote>{OASDeliveryNote.getExample()};
        response = (List<OASDeliveryNote>) api.listDeliveryNotes(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASDeliveryNote>{OASDeliveryNote.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDeliveryNote>{OASDeliveryNote.getExample()};
        response = (List<OASDeliveryNote>) api.listDeliveryNotes(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void pursueDeliveryNoteTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'deliveryNoteId' => 'null'
        };

        OASClient client;
        OASDeliveryNoteApi api;
        OASInvoice response;
        OASInvoice expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryNoteApi(client);

        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.pursueDeliveryNote(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.pursueDeliveryNote(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInvoice.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInvoice.getExample();
        response = (OASInvoice) api.pursueDeliveryNote(params);
        System.assertEquals(expectedResponse, response);
    }
}