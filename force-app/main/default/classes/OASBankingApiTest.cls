@isTest
private class OASBankingApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void bankLookupApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'iban' => 'null'
        };

        OASClient client;
        OASBankingApi api;
        OASBankLookup response;
        OASBankLookup expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBankingApi(client);

        js = JSON.serialize(OASBankLookup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBankLookup.getExample();
        response = (OASBankLookup) api.bankLookupApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void bankTransactionsApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASBankingApi api;
        String js = '';

        client = new OASClient();
        api = new OASBankingApi(client);
        api.bankTransactionsApi();
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void hebesatzLookupApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'gemeindeschluessel' => 'null',
            'plz' => 'null',
            'name' => 'null',
            'stichtag' => 'null',
            'countryCode' => 'null'
        };

        OASClient client;
        OASBankingApi api;
        List<OASHebesatzLookup> response;
        List<OASHebesatzLookup> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBankingApi(client);

        js = JSON.serialize(new List<OASHebesatzLookup>{OASHebesatzLookup.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASHebesatzLookup>{OASHebesatzLookup.getExample()};
        response = (List<OASHebesatzLookup>) api.hebesatzLookupApi(params);
        System.assertEquals(expectedResponse, response);
    }
}