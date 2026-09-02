@isTest
private class OASZugferdApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void generateZugferdApiTest() {
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
        OASZugferdApi api;
        String js = '';

        client = new OASClient();
        api = new OASZugferdApi(client);
        api.generateZugferdApi(params);
    }
}