@isTest
private class OASEbilanzApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void ebilanzReportApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => '',
            'dateFrom' => 'null',
            'dateTo' => 'null'
        };

        OASClient client;
        OASEbilanzApi api;
        OASEBilanzReport response;
        OASEBilanzReport expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEbilanzApi(client);

        js = JSON.serialize(OASEBilanzReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEBilanzReport.getExample();
        response = (OASEBilanzReport) api.ebilanzReportApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void ebilanzXbrlExportApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => '',
            'dateFrom' => 'null',
            'dateTo' => 'null'
        };

        OASClient client;
        OASEbilanzApi api;
        String js = '';

        client = new OASClient();
        api = new OASEbilanzApi(client);
        api.ebilanzXbrlExportApi(params);
    }
}