@isTest
private class OASGezApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void gezApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'jahr' => '',
            'betriebsstaetten' => 'null',
            'kfz' => 2147483648L,
            'hotelzimmer' => 2147483648L,
            'beschaefigte' => 2147483648L
        };

        OASClient client;
        OASGezApi api;
        OASGezReport response;
        OASGezReport expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGezApi(client);

        js = JSON.serialize(OASGezReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGezReport.getExample();
        response = (OASGezReport) api.gezApi(params);
        System.assertEquals(expectedResponse, response);
    }
}