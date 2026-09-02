@isTest
private class OASCreateSepaDirectDebitApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createSepaDirectDebitApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'creditorName' => 'null',
            'creditorIban' => 'null',
            'creditorId' => 'null',
            'mandateId' => 'null',
            'mandateDate' => 'null',
            'debtorName' => 'null',
            'debtorIban' => 'null',
            'amount' => 'null',
            'collectionDate' => 'null',
            'creditorBic' => 'null',
            'debtorBic' => 'null',
            'description' => 'null'
        };

        OASClient client;
        OASCreateSepaDirectDebitApi api;
        OASSepaDirectDebitResponse response;
        OASSepaDirectDebitResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCreateSepaDirectDebitApi(client);

        js = JSON.serialize(OASSepaDirectDebitResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSepaDirectDebitResponse.getExample();
        response = (OASSepaDirectDebitResponse) api.createSepaDirectDebitApi(params);
        System.assertEquals(expectedResponse, response);
    }
}