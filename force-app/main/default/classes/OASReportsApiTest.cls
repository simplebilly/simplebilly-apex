@isTest
private class OASReportsApiTest {
    /**
     * Bilanz (Balance Sheet)
     *
     * 
     */
    @isTest
    private static void bilanzReportApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => '',
            'month' => '',
            'dateFrom' => 'null',
            'dateTo' => 'null',
            'page' => '',
            'pageSize' => ''
        };

        OASClient client;
        OASReportsApi api;
        OASBilanzReport response;
        OASBilanzReport expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASReportsApi(client);

        js = JSON.serialize(OASBilanzReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBilanzReport.getExample();
        response = (OASBilanzReport) api.bilanzReportApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Gewinn- und Verlustrechnung (P&amp;L statement)
     *
     * 
     */
    @isTest
    private static void guvReportApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => '',
            'month' => '',
            'dateFrom' => 'null',
            'dateTo' => 'null',
            'page' => '',
            'pageSize' => ''
        };

        OASClient client;
        OASReportsApi api;
        OASGuVReport response;
        OASGuVReport expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASReportsApi(client);

        js = JSON.serialize(OASGuVReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGuVReport.getExample();
        response = (OASGuVReport) api.guvReportApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Kontenansicht (Account Overview)
     *
     * 
     */
    @isTest
    private static void kontenansichtReportApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => '',
            'month' => '',
            'dateFrom' => 'null',
            'dateTo' => 'null',
            'page' => '',
            'pageSize' => ''
        };

        OASClient client;
        OASReportsApi api;
        OASKontoReport response;
        OASKontoReport expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASReportsApi(client);

        js = JSON.serialize(OASKontoReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASKontoReport.getExample();
        response = (OASKontoReport) api.kontenansichtReportApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Umsatzsteuer-Voranmeldung (VAT report)
     *
     * 
     */
    @isTest
    private static void umsatzsteuerReportApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => '',
            'month' => '',
            'dateFrom' => 'null',
            'dateTo' => 'null',
            'page' => '',
            'pageSize' => ''
        };

        OASClient client;
        OASReportsApi api;
        OASUmsatzsteuerReport response;
        OASUmsatzsteuerReport expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASReportsApi(client);

        js = JSON.serialize(OASUmsatzsteuerReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUmsatzsteuerReport.getExample();
        response = (OASUmsatzsteuerReport) api.umsatzsteuerReportApi(params);
        System.assertEquals(expectedResponse, response);
    }
}