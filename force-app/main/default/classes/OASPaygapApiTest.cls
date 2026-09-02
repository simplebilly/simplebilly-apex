@isTest
private class OASPaygapApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void paygapAuskunftApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'employeeId' => 'null'
        };

        OASClient client;
        OASPaygapApi api;
        OASPayGapInfoResponse response;
        OASPayGapInfoResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPaygapApi(client);

        js = JSON.serialize(OASPayGapInfoResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayGapInfoResponse.getExample();
        response = (OASPayGapInfoResponse) api.paygapAuskunftApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPayGapInfoResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayGapInfoResponse.getExample();
        response = (OASPayGapInfoResponse) api.paygapAuskunftApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void paygapExportApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASPaygapApi api;
        OASPayGapExportResponse response;
        OASPayGapExportResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPaygapApi(client);

        js = JSON.serialize(OASPayGapExportResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayGapExportResponse.getExample();
        response = (OASPayGapExportResponse) api.paygapExportApi();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void paygapReportApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASPaygapApi api;
        OASPayGapReport response;
        OASPayGapReport expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPaygapApi(client);

        js = JSON.serialize(OASPayGapReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayGapReport.getExample();
        response = (OASPayGapReport) api.paygapReportApi();
        System.assertEquals(expectedResponse, response);
    }
}