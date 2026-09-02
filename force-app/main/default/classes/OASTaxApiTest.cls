@isTest
private class OASTaxApiTest {
    /**
     * Create a tax rate (&#x60;admin:settings&#x60;).
     *
     * 
     */
    @isTest
    private static void createTaxRateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSTaxRateCreate' => ''
        };

        OASClient client;
        OASTaxApi api;
        String js = '';

        client = new OASClient();
        api = new OASTaxApi(client);
        api.createTaxRate(params);
    }

    /**
     * Delete a tax rate by id (&#x60;admin:settings&#x60;).
     *
     * 
     */
    @isTest
    private static void deleteTaxRateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASTaxApi api;
        String js = '';

        client = new OASClient();
        api = new OASTaxApi(client);
        api.deleteTaxRate(params);
    }

    /**
     * List the calling tenant\&#39;s tax rates.
     *
     * 
     */
    @isTest
    private static void listTaxRatesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASTaxApi api;
        String js = '';

        client = new OASClient();
        api = new OASTaxApi(client);
        api.listTaxRates();
    }

    /**
     * Update a tax rate by id (&#x60;admin:settings&#x60;). Replaces all body fields.
     *
     * 
     */
    @isTest
    private static void updateTaxRateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'oaSTaxRateCreate' => ''
        };

        OASClient client;
        OASTaxApi api;
        String js = '';

        client = new OASClient();
        api = new OASTaxApi(client);
        api.updateTaxRate(params);
    }
}