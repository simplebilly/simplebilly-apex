@isTest
private class OASPriceTierApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createPriceTierTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSPriceTierCreate' => ''
        };

        OASClient client;
        OASPriceTierApi api;
        OASPriceTier response;
        OASPriceTier expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPriceTierApi(client);

        js = JSON.serialize(OASPriceTier.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPriceTier.getExample();
        response = (OASPriceTier) api.createPriceTier(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPriceTier.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPriceTier.getExample();
        response = (OASPriceTier) api.createPriceTier(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPriceTier.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPriceTier.getExample();
        response = (OASPriceTier) api.createPriceTier(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deletePriceTierTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'priceTierId' => 'null'
        };

        OASClient client;
        OASPriceTierApi api;
        String js = '';

        client = new OASClient();
        api = new OASPriceTierApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deletePriceTier(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deletePriceTier(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getPriceTierTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'priceTierId' => 'null'
        };

        OASClient client;
        OASPriceTierApi api;
        OASPriceTier response;
        OASPriceTier expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPriceTierApi(client);

        js = JSON.serialize(OASPriceTier.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPriceTier.getExample();
        response = (OASPriceTier) api.getPriceTier(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPriceTier.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPriceTier.getExample();
        response = (OASPriceTier) api.getPriceTier(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPriceTier.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPriceTier.getExample();
        response = (OASPriceTier) api.getPriceTier(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getResolvedPriceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'productId' => 'null',
            'quantity' => 2147483648L,
            'contactId' => 'null'
        };

        OASClient client;
        OASPriceTierApi api;
        OASResolvedPriceResponse response;
        OASResolvedPriceResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPriceTierApi(client);

        js = JSON.serialize(OASResolvedPriceResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResolvedPriceResponse.getExample();
        response = (OASResolvedPriceResponse) api.getResolvedPrice(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASResolvedPriceResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResolvedPriceResponse.getExample();
        response = (OASResolvedPriceResponse) api.getResolvedPrice(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listPriceTiersTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'productId' => 'null',
            'customerGroupId' => 'null'
        };

        OASClient client;
        OASPriceTierApi api;
        List<OASPriceTier> response;
        List<OASPriceTier> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPriceTierApi(client);

        js = JSON.serialize(new List<OASPriceTier>{OASPriceTier.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPriceTier>{OASPriceTier.getExample()};
        response = (List<OASPriceTier>) api.listPriceTiers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASPriceTier>{OASPriceTier.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPriceTier>{OASPriceTier.getExample()};
        response = (List<OASPriceTier>) api.listPriceTiers(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updatePriceTierTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'priceTierId' => 'null',
            'oaSPriceTierUpdate' => ''
        };

        OASClient client;
        OASPriceTierApi api;
        OASPriceTier response;
        OASPriceTier expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPriceTierApi(client);

        js = JSON.serialize(OASPriceTier.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPriceTier.getExample();
        response = (OASPriceTier) api.updatePriceTier(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPriceTier.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPriceTier.getExample();
        response = (OASPriceTier) api.updatePriceTier(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPriceTier.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPriceTier.getExample();
        response = (OASPriceTier) api.updatePriceTier(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPriceTier.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPriceTier.getExample();
        response = (OASPriceTier) api.updatePriceTier(params);
        System.assertEquals(expectedResponse, response);
    }
}