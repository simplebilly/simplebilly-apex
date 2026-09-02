@isTest
private class OASStilleApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void stilleExportApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => ''
        };

        OASClient client;
        OASStilleApi api;
        OASStilleExportResponse response;
        OASStilleExportResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStilleApi(client);

        js = JSON.serialize(OASStilleExportResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASStilleExportResponse.getExample();
        response = (OASStilleExportResponse) api.stilleExportApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void stilleReportApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => ''
        };

        OASClient client;
        OASStilleApi api;
        OASStilleReport response;
        OASStilleReport expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStilleApi(client);

        js = JSON.serialize(OASStilleReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASStilleReport.getExample();
        response = (OASStilleReport) api.stilleReportApi(params);
        System.assertEquals(expectedResponse, response);
    }
}