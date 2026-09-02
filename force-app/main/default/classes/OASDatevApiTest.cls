@isTest
private class OASDatevApiTest {
    /**
     * Export bookkeeping data as DATEV CSV
     *
     * 
     */
    @isTest
    private static void datevExportApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'accountSchema' => 'null',
            'dateFrom' => 'null',
            'dateTo' => 'null',
            'page' => '',
            'pageSize' => ''
        };

        OASClient client;
        OASDatevApi api;
        OASDatevExportResponse response;
        OASDatevExportResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDatevApi(client);

        js = JSON.serialize(OASDatevExportResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDatevExportResponse.getExample();
        response = (OASDatevExportResponse) api.datevExportApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Exported_datev_bookings: returns formed bookings for review
     *
     * 
     */
    @isTest
    private static void datevPreviewApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'accountSchema' => 'null',
            'dateFrom' => 'null',
            'dateTo' => 'null',
            'page' => '',
            'pageSize' => ''
        };

        OASClient client;
        OASDatevApi api;
        List<OASDatevBookingPreview> response;
        List<OASDatevBookingPreview> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDatevApi(client);

        js = JSON.serialize(new List<OASDatevBookingPreview>{OASDatevBookingPreview.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDatevBookingPreview>{OASDatevBookingPreview.getExample()};
        response = (List<OASDatevBookingPreview>) api.datevPreviewApi(params);
        System.assertEquals(expectedResponse, response);
    }
}