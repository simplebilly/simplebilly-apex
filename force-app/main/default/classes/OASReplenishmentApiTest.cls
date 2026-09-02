@isTest
private class OASReplenishmentApiTest {
    /**
     * Create one draft stock transfer per (source → target) pair carrying all\nsuggested product lines for that pair.
     *
     * 
     */
    @isTest
    private static void applyReplenishmentsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'targetWarehouseId' => 'null',
            'sourceWarehouseId' => 'null'
        };

        OASClient client;
        OASReplenishmentApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASReplenishmentApi(client);

        js = JSON.serialize(oas_any_type_not_mapped.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = oas_any_type_not_mapped.getExample();
        response = (oas_any_type_not_mapped) api.applyReplenishments(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(oas_any_type_not_mapped.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = oas_any_type_not_mapped.getExample();
        response = (oas_any_type_not_mapped) api.applyReplenishments(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getReplenishmentsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'targetWarehouseId' => 'null',
            'sourceWarehouseId' => 'null'
        };

        OASClient client;
        OASReplenishmentApi api;
        OASReplenishmentResponse response;
        OASReplenishmentResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASReplenishmentApi(client);

        js = JSON.serialize(OASReplenishmentResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReplenishmentResponse.getExample();
        response = (OASReplenishmentResponse) api.getReplenishments(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASReplenishmentResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReplenishmentResponse.getExample();
        response = (OASReplenishmentResponse) api.getReplenishments(params);
        System.assertEquals(expectedResponse, response);
    }
}