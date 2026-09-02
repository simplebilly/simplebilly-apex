@isTest
private class OASEmissionsApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createEmissionEntryApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSCreateEmissionEntry' => ''
        };

        OASClient client;
        OASEmissionsApi api;
        OASEmissionEntry response;
        OASEmissionEntry expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEmissionsApi(client);

        js = JSON.serialize(OASEmissionEntry.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmissionEntry.getExample();
        response = (OASEmissionEntry) api.createEmissionEntryApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEmissionEntry.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmissionEntry.getExample();
        response = (OASEmissionEntry) api.createEmissionEntryApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void createEmissionTargetApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSCreateEmissionTarget' => ''
        };

        OASClient client;
        OASEmissionsApi api;
        OASEmissionTarget response;
        OASEmissionTarget expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEmissionsApi(client);

        js = JSON.serialize(OASEmissionTarget.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmissionTarget.getExample();
        response = (OASEmissionTarget) api.createEmissionTargetApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEmissionTarget.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmissionTarget.getExample();
        response = (OASEmissionTarget) api.createEmissionTargetApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteEmissionEntryApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASEmissionsApi api;
        String js = '';

        client = new OASClient();
        api = new OASEmissionsApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteEmissionEntryApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteEmissionTargetApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASEmissionsApi api;
        String js = '';

        client = new OASClient();
        api = new OASEmissionsApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteEmissionTargetApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void emissionsEntriesApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => ''
        };

        OASClient client;
        OASEmissionsApi api;
        List<OASEmissionEntry> response;
        List<OASEmissionEntry> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEmissionsApi(client);

        js = JSON.serialize(new List<OASEmissionEntry>{OASEmissionEntry.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASEmissionEntry>{OASEmissionEntry.getExample()};
        response = (List<OASEmissionEntry>) api.emissionsEntriesApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void emissionsExportApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => ''
        };

        OASClient client;
        OASEmissionsApi api;
        OASEmissionsExportResponse response;
        OASEmissionsExportResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEmissionsApi(client);

        js = JSON.serialize(OASEmissionsExportResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmissionsExportResponse.getExample();
        response = (OASEmissionsExportResponse) api.emissionsExportApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void emissionsFactorsApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASEmissionsApi api;
        List<OASEmissionFactorResponse> response;
        List<OASEmissionFactorResponse> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEmissionsApi(client);

        js = JSON.serialize(new List<OASEmissionFactorResponse>{OASEmissionFactorResponse.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASEmissionFactorResponse>{OASEmissionFactorResponse.getExample()};
        response = (List<OASEmissionFactorResponse>) api.emissionsFactorsApi();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void emissionsReportApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => ''
        };

        OASClient client;
        OASEmissionsApi api;
        OASEmissionsReport response;
        OASEmissionsReport expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEmissionsApi(client);

        js = JSON.serialize(OASEmissionsReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmissionsReport.getExample();
        response = (OASEmissionsReport) api.emissionsReportApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void emissionsTargetsApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASEmissionsApi api;
        List<OASEmissionTarget> response;
        List<OASEmissionTarget> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEmissionsApi(client);

        js = JSON.serialize(new List<OASEmissionTarget>{OASEmissionTarget.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASEmissionTarget>{OASEmissionTarget.getExample()};
        response = (List<OASEmissionTarget>) api.emissionsTargetsApi();
        System.assertEquals(expectedResponse, response);
    }
}