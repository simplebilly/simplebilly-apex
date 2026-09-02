@isTest
private class OASGewinnverwendungApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void gewinnverwendungApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => ''
        };

        OASClient client;
        OASGewinnverwendungApi api;
        OASGewinnverwendungsReport response;
        OASGewinnverwendungsReport expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGewinnverwendungApi(client);

        js = JSON.serialize(OASGewinnverwendungsReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGewinnverwendungsReport.getExample();
        response = (OASGewinnverwendungsReport) api.gewinnverwendungApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void gewinnverwendungExportApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => ''
        };

        OASClient client;
        OASGewinnverwendungApi api;
        OASGewinnverwendungsExportResponse response;
        OASGewinnverwendungsExportResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGewinnverwendungApi(client);

        js = JSON.serialize(OASGewinnverwendungsExportResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGewinnverwendungsExportResponse.getExample();
        response = (OASGewinnverwendungsExportResponse) api.gewinnverwendungExportApi(params);
        System.assertEquals(expectedResponse, response);
    }
}