@isTest
private class OASPaymentConditionApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void listPaymentConditionsApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASPaymentConditionApi api;
        List<OASPaymentCondition> response;
        List<OASPaymentCondition> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPaymentConditionApi(client);

        js = JSON.serialize(new List<OASPaymentCondition>{OASPaymentCondition.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPaymentCondition>{OASPaymentCondition.getExample()};
        response = (List<OASPaymentCondition>) api.listPaymentConditionsApi();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASPaymentCondition>{OASPaymentCondition.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPaymentCondition>{OASPaymentCondition.getExample()};
        response = (List<OASPaymentCondition>) api.listPaymentConditionsApi();
        System.assertEquals(expectedResponse, response);
    }
}