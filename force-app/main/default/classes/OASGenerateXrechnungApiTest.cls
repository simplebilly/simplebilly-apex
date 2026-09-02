@isTest
private class OASGenerateXrechnungApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void generateXrechnungApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'supplierName' => 'null',
            'supplierStreet' => 'null',
            'supplierCity' => 'null',
            'supplierZip' => 'null',
            'supplierCountry' => 'null',
            'supplierVatId' => 'null'
        };

        OASClient client;
        OASGenerateXrechnungApi api;
        OASXRechnungResponse response;
        OASXRechnungResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGenerateXrechnungApi(client);

        js = JSON.serialize(OASXRechnungResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASXRechnungResponse.getExample();
        response = (OASXRechnungResponse) api.generateXrechnungApi(params);
        System.assertEquals(expectedResponse, response);
    }
}