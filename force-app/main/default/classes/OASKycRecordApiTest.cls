@isTest
private class OASKycRecordApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createKycRecordTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSKycRecordCreate' => ''
        };

        OASClient client;
        OASKycRecordApi api;
        OASKycRecord response;
        OASKycRecord expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASKycRecordApi(client);

        js = JSON.serialize(OASKycRecord.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASKycRecord.getExample();
        response = (OASKycRecord) api.createKycRecord(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASKycRecord.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASKycRecord.getExample();
        response = (OASKycRecord) api.createKycRecord(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASKycRecord.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASKycRecord.getExample();
        response = (OASKycRecord) api.createKycRecord(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteKycRecordTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASKycRecordApi api;
        String js = '';

        client = new OASClient();
        api = new OASKycRecordApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteKycRecord(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteKycRecord(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getKycRecordTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASKycRecordApi api;
        OASKycRecord response;
        OASKycRecord expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASKycRecordApi(client);

        js = JSON.serialize(OASKycRecord.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASKycRecord.getExample();
        response = (OASKycRecord) api.getKycRecord(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASKycRecord.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASKycRecord.getExample();
        response = (OASKycRecord) api.getKycRecord(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASKycRecord.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASKycRecord.getExample();
        response = (OASKycRecord) api.getKycRecord(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getKycRecordsTest() {
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
        OASKycRecordApi api;
        List<OASKycRecord> response;
        List<OASKycRecord> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASKycRecordApi(client);

        js = JSON.serialize(new List<OASKycRecord>{OASKycRecord.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASKycRecord>{OASKycRecord.getExample()};
        response = (List<OASKycRecord>) api.getKycRecords(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASKycRecord>{OASKycRecord.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASKycRecord>{OASKycRecord.getExample()};
        response = (List<OASKycRecord>) api.getKycRecords(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateKycRecordTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'oaSKycRecordUpdate' => ''
        };

        OASClient client;
        OASKycRecordApi api;
        OASKycRecord response;
        OASKycRecord expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASKycRecordApi(client);

        js = JSON.serialize(OASKycRecord.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASKycRecord.getExample();
        response = (OASKycRecord) api.updateKycRecord(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASKycRecord.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASKycRecord.getExample();
        response = (OASKycRecord) api.updateKycRecord(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASKycRecord.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASKycRecord.getExample();
        response = (OASKycRecord) api.updateKycRecord(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASKycRecord.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASKycRecord.getExample();
        response = (OASKycRecord) api.updateKycRecord(params);
        System.assertEquals(expectedResponse, response);
    }
}