@isTest
private class OASPosApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void posBillingTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASPosApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPosApi(client);
        api.posBilling();
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void posCreateOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => ''
        };

        OASClient client;
        OASPosApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPosApi(client);
        api.posCreateOrder(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void posCreateRegisterTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSPosRegisterCreate' => ''
        };

        OASClient client;
        OASPosApi api;
        OASPosRegister response;
        OASPosRegister expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPosApi(client);

        js = JSON.serialize(OASPosRegister.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPosRegister.getExample();
        response = (OASPosRegister) api.posCreateRegister(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void posCreateTableTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSPosTableCreate' => ''
        };

        OASClient client;
        OASPosApi api;
        OASPosTable response;
        OASPosTable expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPosApi(client);

        js = JSON.serialize(OASPosTable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPosTable.getExample();
        response = (OASPosTable) api.posCreateTable(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void posDisableRegisterTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASPosApi api;
        OASPosRegister response;
        OASPosRegister expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPosApi(client);

        js = JSON.serialize(OASPosRegister.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPosRegister.getExample();
        response = (OASPosRegister) api.posDisableRegister(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void posFreeTableTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASPosApi api;
        OASPosTable response;
        OASPosTable expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPosApi(client);

        js = JSON.serialize(OASPosTable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPosTable.getExample();
        response = (OASPosTable) api.posFreeTable(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void posKasseClosingTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => ''
        };

        OASClient client;
        OASPosApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPosApi(client);
        api.posKasseClosing(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void posKasseEntriesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASPosApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPosApi(client);
        api.posKasseEntries();
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void posKasseExportTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASPosApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPosApi(client);
        api.posKasseExport();
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void posKassePayInOutTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => ''
        };

        OASClient client;
        OASPosApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPosApi(client);
        api.posKassePayInOut(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void posListOrdersTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'status' => 'null'
        };

        OASClient client;
        OASPosApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPosApi(client);
        api.posListOrders(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void posListProductsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'q' => 'null'
        };

        OASClient client;
        OASPosApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPosApi(client);
        api.posListProducts(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void posListRegistersTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASPosApi api;
        List<OASPosRegister> response;
        List<OASPosRegister> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPosApi(client);

        js = JSON.serialize(new List<OASPosRegister>{OASPosRegister.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPosRegister>{OASPosRegister.getExample()};
        response = (List<OASPosRegister>) api.posListRegisters();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void posListTablesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASPosApi api;
        List<OASPosTable> response;
        List<OASPosTable> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPosApi(client);

        js = JSON.serialize(new List<OASPosTable>{OASPosTable.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPosTable>{OASPosTable.getExample()};
        response = (List<OASPosTable>) api.posListTables();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void posOrderPrintTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'orderNumber' => 'null'
        };

        OASClient client;
        OASPosApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPosApi(client);
        api.posOrderPrint(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void posOrderReceiptTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'orderNumber' => 'null'
        };

        OASClient client;
        OASPosApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPosApi(client);
        api.posOrderReceipt(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void posPayOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'orderNumber' => 'null',
            'body' => ''
        };

        OASClient client;
        OASPosApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPosApi(client);
        api.posPayOrder(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void posSumupCheckoutTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => ''
        };

        OASClient client;
        OASPosApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPosApi(client);
        api.posSumupCheckout(params);
    }
}