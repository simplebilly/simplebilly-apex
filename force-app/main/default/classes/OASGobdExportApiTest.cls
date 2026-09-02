@isTest
private class OASGobdExportApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void buchhalterCsvApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'dateFrom' => 'null',
            'dateTo' => 'null'
        };

        OASClient client;
        OASGobdExportApi api;
        OASGoBDExportResponse response;
        OASGoBDExportResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGobdExportApi(client);

        js = JSON.serialize(OASGoBDExportResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGoBDExportResponse.getExample();
        response = (OASGoBDExportResponse) api.buchhalterCsvApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GoBD/GDPdU export. Default: ZIP archive (&#x60;index.xml&#x60; + CSV tables, IDEA\nformat). &#x60;?format&#x3D;csv&#x60; returns the legacy single-journal CSV as JSON.
     *
     * 
     */
    @isTest
    private static void gobdExportApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => '',
            'format' => zip
        };

        OASClient client;
        OASGobdExportApi api;
        String js = '';

        client = new OASClient();
        api = new OASGobdExportApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.gobdExportApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.gobdExportApi(params);
        System.assertEquals(expectedResponse, response);
    }
}