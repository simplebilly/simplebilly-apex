@isTest
private class OASAttachmentVersionApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createAttachmentVersionTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'attachmentId' => 'null',
            'oaSNewVersionRequest' => ''
        };

        OASClient client;
        OASAttachmentVersionApi api;
        OASAttachmentVersion response;
        OASAttachmentVersion expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAttachmentVersionApi(client);

        js = JSON.serialize(OASAttachmentVersion.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAttachmentVersion.getExample();
        response = (OASAttachmentVersion) api.createAttachmentVersion(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAttachmentVersion.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAttachmentVersion.getExample();
        response = (OASAttachmentVersion) api.createAttachmentVersion(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAttachmentVersion.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAttachmentVersion.getExample();
        response = (OASAttachmentVersion) api.createAttachmentVersion(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAttachmentVersion.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAttachmentVersion.getExample();
        response = (OASAttachmentVersion) api.createAttachmentVersion(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listAttachmentVersionsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'attachmentId' => 'null'
        };

        OASClient client;
        OASAttachmentVersionApi api;
        List<OASAttachmentVersion> response;
        List<OASAttachmentVersion> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAttachmentVersionApi(client);

        js = JSON.serialize(new List<OASAttachmentVersion>{OASAttachmentVersion.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASAttachmentVersion>{OASAttachmentVersion.getExample()};
        response = (List<OASAttachmentVersion>) api.listAttachmentVersions(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASAttachmentVersion>{OASAttachmentVersion.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASAttachmentVersion>{OASAttachmentVersion.getExample()};
        response = (List<OASAttachmentVersion>) api.listAttachmentVersions(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASAttachmentVersion>{OASAttachmentVersion.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASAttachmentVersion>{OASAttachmentVersion.getExample()};
        response = (List<OASAttachmentVersion>) api.listAttachmentVersions(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void restoreAttachmentVersionTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'attachmentId' => 'null',
            'versionId' => 'null'
        };

        OASClient client;
        OASAttachmentVersionApi api;
        OASAttachment response;
        OASAttachment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAttachmentVersionApi(client);

        js = JSON.serialize(OASAttachment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAttachment.getExample();
        response = (OASAttachment) api.restoreAttachmentVersion(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAttachment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAttachment.getExample();
        response = (OASAttachment) api.restoreAttachmentVersion(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAttachment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAttachment.getExample();
        response = (OASAttachment) api.restoreAttachmentVersion(params);
        System.assertEquals(expectedResponse, response);
    }
}