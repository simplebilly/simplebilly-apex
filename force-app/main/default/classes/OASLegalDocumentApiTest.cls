@isTest
private class OASLegalDocumentApiTest {
    /**
     * List all legal documents of the tenant. Missing documents are seeded from\nthe default texts (with tenant placeholders replaced) on first access.
     *
     * 
     */
    @isTest
    private static void getLegalDocumentsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASLegalDocumentApi api;
        List<OASLegalDocument> response;
        List<OASLegalDocument> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASLegalDocumentApi(client);

        js = JSON.serialize(new List<OASLegalDocument>{OASLegalDocument.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASLegalDocument>{OASLegalDocument.getExample()};
        response = (List<OASLegalDocument>) api.getLegalDocuments();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASLegalDocument>{OASLegalDocument.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASLegalDocument>{OASLegalDocument.getExample()};
        response = (List<OASLegalDocument>) api.getLegalDocuments();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Restore default texts for all documents (or a single doc_type/lang when\nthe optional filter is given). Returns the full tenant list.
     *
     * 
     */
    @isTest
    private static void resetLegalDocumentsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSLegalDocumentReset' => ''
        };

        OASClient client;
        OASLegalDocumentApi api;
        List<OASLegalDocument> response;
        List<OASLegalDocument> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASLegalDocumentApi(client);

        js = JSON.serialize(new List<OASLegalDocument>{OASLegalDocument.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASLegalDocument>{OASLegalDocument.getExample()};
        response = (List<OASLegalDocument>) api.resetLegalDocuments(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASLegalDocument>{OASLegalDocument.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASLegalDocument>{OASLegalDocument.getExample()};
        response = (List<OASLegalDocument>) api.resetLegalDocuments(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Upsert legal documents per (doc_type, lang). Returns the full tenant list.
     *
     * 
     */
    @isTest
    private static void upsertLegalDocumentsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSLegalDocumentUpsert' => new List<OASLegalDocumentUpsert>{OASLegalDocumentUpsert.getExample()}
        };

        OASClient client;
        OASLegalDocumentApi api;
        List<OASLegalDocument> response;
        List<OASLegalDocument> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASLegalDocumentApi(client);

        js = JSON.serialize(new List<OASLegalDocument>{OASLegalDocument.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASLegalDocument>{OASLegalDocument.getExample()};
        response = (List<OASLegalDocument>) api.upsertLegalDocuments(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASLegalDocument>{OASLegalDocument.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASLegalDocument>{OASLegalDocument.getExample()};
        response = (List<OASLegalDocument>) api.upsertLegalDocuments(params);
        System.assertEquals(expectedResponse, response);
    }
}