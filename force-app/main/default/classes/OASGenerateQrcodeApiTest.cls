@isTest
private class OASGenerateQrcodeApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void generateQrcodeApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'iban' => 'null',
            'id' => 'null',
            'holderName' => 'null',
            'bic' => 'null',
            'amount' => 'null',
            'reference' => 'null',
            'purpose' => 'null'
        };

        OASClient client;
        OASGenerateQrcodeApi api;
        OASQRCodeResponse response;
        OASQRCodeResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGenerateQrcodeApi(client);

        js = JSON.serialize(OASQRCodeResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQRCodeResponse.getExample();
        response = (OASQRCodeResponse) api.generateQrcodeApi(params);
        System.assertEquals(expectedResponse, response);
    }
}