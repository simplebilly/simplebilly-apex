@isTest
private class OASAttachmentApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void attachmentRestoreTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASAttachmentApi api;
        OASAttachment response;
        OASAttachment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAttachmentApi(client);

        js = JSON.serialize(OASAttachment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAttachment.getExample();
        response = (OASAttachment) api.attachmentRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAttachment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAttachment.getExample();
        response = (OASAttachment) api.attachmentRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAttachment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAttachment.getExample();
        response = (OASAttachment) api.attachmentRestore(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void createAttachmentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSAttachmentCreate' => ''
        };

        OASClient client;
        OASAttachmentApi api;
        OASAttachment response;
        OASAttachment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAttachmentApi(client);

        js = JSON.serialize(OASAttachment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAttachment.getExample();
        response = (OASAttachment) api.createAttachment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAttachment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAttachment.getExample();
        response = (OASAttachment) api.createAttachment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAttachment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAttachment.getExample();
        response = (OASAttachment) api.createAttachment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteAttachmentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASAttachmentApi api;
        String js = '';

        client = new OASClient();
        api = new OASAttachmentApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteAttachment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteAttachment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getAttachmentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASAttachmentApi api;
        OASAttachment response;
        OASAttachment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAttachmentApi(client);

        js = JSON.serialize(OASAttachment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAttachment.getExample();
        response = (OASAttachment) api.getAttachment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAttachment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAttachment.getExample();
        response = (OASAttachment) api.getAttachment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAttachment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAttachment.getExample();
        response = (OASAttachment) api.getAttachment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listAttachmentsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'contactId' => 'null'
        };

        OASClient client;
        OASAttachmentApi api;
        List<OASAttachment> response;
        List<OASAttachment> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAttachmentApi(client);

        js = JSON.serialize(new List<OASAttachment>{OASAttachment.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASAttachment>{OASAttachment.getExample()};
        response = (List<OASAttachment>) api.listAttachments(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASAttachment>{OASAttachment.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASAttachment>{OASAttachment.getExample()};
        response = (List<OASAttachment>) api.listAttachments(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Persist client-side OCR output for an attachment.
     *
     * 
     */
    @isTest
    private static void saveAttachmentOcrTextTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'attachmentId' => 'null',
            'oaSOcrTextRequest' => ''
        };

        OASClient client;
        OASAttachmentApi api;
        OASAttachment response;
        OASAttachment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAttachmentApi(client);

        js = JSON.serialize(OASAttachment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAttachment.getExample();
        response = (OASAttachment) api.saveAttachmentOcrText(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAttachment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAttachment.getExample();
        response = (OASAttachment) api.saveAttachmentOcrText(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAttachment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAttachment.getExample();
        response = (OASAttachment) api.saveAttachmentOcrText(params);
        System.assertEquals(expectedResponse, response);
    }
}