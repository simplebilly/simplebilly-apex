@isTest
private class OASVoucherApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createVoucherTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSVoucherCreate' => ''
        };

        OASClient client;
        OASVoucherApi api;
        OASVoucher response;
        OASVoucher expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASVoucherApi(client);

        js = JSON.serialize(OASVoucher.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVoucher.getExample();
        response = (OASVoucher) api.createVoucher(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVoucher.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVoucher.getExample();
        response = (OASVoucher) api.createVoucher(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVoucher.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVoucher.getExample();
        response = (OASVoucher) api.createVoucher(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteVoucherTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'voucherId' => 'null'
        };

        OASClient client;
        OASVoucherApi api;
        String js = '';

        client = new OASClient();
        api = new OASVoucherApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteVoucher(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteVoucher(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getVoucherTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'voucherId' => 'null'
        };

        OASClient client;
        OASVoucherApi api;
        OASVoucher response;
        OASVoucher expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASVoucherApi(client);

        js = JSON.serialize(OASVoucher.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVoucher.getExample();
        response = (OASVoucher) api.getVoucher(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVoucher.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVoucher.getExample();
        response = (OASVoucher) api.getVoucher(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVoucher.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVoucher.getExample();
        response = (OASVoucher) api.getVoucher(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listVouchersTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'voucherType' => 'null',
            'voucherStatus' => 'null',
            'contactName' => 'null',
            'dateFrom' => Date.newInstance(1960, 2, 17),
            'dateTo' => Date.newInstance(1960, 2, 17)
        };

        OASClient client;
        OASVoucherApi api;
        List<OASVoucher> response;
        List<OASVoucher> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASVoucherApi(client);

        js = JSON.serialize(new List<OASVoucher>{OASVoucher.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASVoucher>{OASVoucher.getExample()};
        response = (List<OASVoucher>) api.listVouchers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASVoucher>{OASVoucher.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASVoucher>{OASVoucher.getExample()};
        response = (List<OASVoucher>) api.listVouchers(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateVoucherTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'voucherId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASVoucherApi api;
        OASVoucher response;
        OASVoucher expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASVoucherApi(client);

        js = JSON.serialize(OASVoucher.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVoucher.getExample();
        response = (OASVoucher) api.updateVoucher(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVoucher.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVoucher.getExample();
        response = (OASVoucher) api.updateVoucher(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVoucher.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVoucher.getExample();
        response = (OASVoucher) api.updateVoucher(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVoucher.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVoucher.getExample();
        response = (OASVoucher) api.updateVoucher(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void voucherRestoreTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'voucherId' => 'null'
        };

        OASClient client;
        OASVoucherApi api;
        OASVoucher response;
        OASVoucher expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASVoucherApi(client);

        js = JSON.serialize(OASVoucher.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVoucher.getExample();
        response = (OASVoucher) api.voucherRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVoucher.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVoucher.getExample();
        response = (OASVoucher) api.voucherRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVoucher.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVoucher.getExample();
        response = (OASVoucher) api.voucherRestore(params);
        System.assertEquals(expectedResponse, response);
    }
}