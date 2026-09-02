@isTest
private class OASBookkeepingApiTest {
    /**
     * Allocate a payment to an invoice
     *
     * 
     */
    @isTest
    private static void allocatePaymentApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSAllocatePaymentRequest' => ''
        };

        OASClient client;
        OASBookkeepingApi api;
        String js = '';

        client = new OASClient();
        api = new OASBookkeepingApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.allocatePaymentApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.allocatePaymentApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get BWA (Betriebswirtschaftliche Auswertung) report
     *
     * 
     */
    @isTest
    private static void bwaReportApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => '',
            'month' => ''
        };

        OASClient client;
        OASBookkeepingApi api;
        OASBWAReport response;
        OASBWAReport expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBookkeepingApi(client);

        js = JSON.serialize(OASBWAReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBWAReport.getExample();
        response = (OASBWAReport) api.bwaReportApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void elsterStatusApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASBookkeepingApi api;
        OASElsterStatus response;
        OASElsterStatus expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBookkeepingApi(client);

        js = JSON.serialize(OASElsterStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASElsterStatus.getExample();
        response = (OASElsterStatus) api.elsterStatusApi();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void elsterValidateApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'zeitraum' => 'null'
        };

        OASClient client;
        OASBookkeepingApi api;
        String js = '';

        client = new OASClient();
        api = new OASBookkeepingApi(client);
        api.elsterValidateApi(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void elsterXmlApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'zeitraum' => 'null'
        };

        OASClient client;
        OASBookkeepingApi api;
        String js = '';

        client = new OASClient();
        api = new OASBookkeepingApi(client);
        api.elsterXmlApi(params);
    }

    /**
     * GET /api/v1/bookkeeping/cashflow\nReturns operating, investing, and financing cashflow for the given period.
     *
     * 
     */
    @isTest
    private static void getCashflowTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => '',
            'month' => ''
        };

        OASClient client;
        OASBookkeepingApi api;
        OASCashflowReport response;
        OASCashflowReport expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBookkeepingApi(client);

        js = JSON.serialize(OASCashflowReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCashflowReport.getExample();
        response = (OASCashflowReport) api.getCashflow(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCashflowReport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCashflowReport.getExample();
        response = (OASCashflowReport) api.getCashflow(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GET /api/v1/bookkeeping/liquidity\nReturns current liquidity position with ratios.
     *
     * 
     */
    @isTest
    private static void getLiquidityTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASBookkeepingApi api;
        OASLiquidityPosition response;
        OASLiquidityPosition expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBookkeepingApi(client);

        js = JSON.serialize(OASLiquidityPosition.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASLiquidityPosition.getExample();
        response = (OASLiquidityPosition) api.getLiquidity();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASLiquidityPosition.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASLiquidityPosition.getExample();
        response = (OASLiquidityPosition) api.getLiquidity();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get open invoices for a customer
     *
     * 
     */
    @isTest
    private static void getOpenInvoicesApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'customerId' => 'null'
        };

        OASClient client;
        OASBookkeepingApi api;
        List<OASInvoice> response;
        List<OASInvoice> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBookkeepingApi(client);

        js = JSON.serialize(new List<OASInvoice>{OASInvoice.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASInvoice>{OASInvoice.getExample()};
        response = (List<OASInvoice>) api.getOpenInvoicesApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASInvoice>{OASInvoice.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASInvoice>{OASInvoice.getExample()};
        response = (List<OASInvoice>) api.getOpenInvoicesApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GET /api/v1/bookkeeping/verfahrensdokumentation\nReturns the complete compliance catalog of all documented modules.
     *
     * 
     */
    @isTest
    private static void getVerfahrensdokumentationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASBookkeepingApi api;
        OASVerfahrensdokumentation response;
        OASVerfahrensdokumentation expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBookkeepingApi(client);

        js = JSON.serialize(OASVerfahrensdokumentation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVerfahrensdokumentation.getExample();
        response = (OASVerfahrensdokumentation) api.getVerfahrensdokumentation();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASVerfahrensdokumentation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASVerfahrensdokumentation.getExample();
        response = (OASVerfahrensdokumentation) api.getVerfahrensdokumentation();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void runDunningApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASBookkeepingApi api;
        OASDunningResult response;
        OASDunningResult expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBookkeepingApi(client);

        js = JSON.serialize(OASDunningResult.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDunningResult.getExample();
        response = (OASDunningResult) api.runDunningApi();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDunningResult.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDunningResult.getExample();
        response = (OASDunningResult) api.runDunningApi();
        System.assertEquals(expectedResponse, response);
    }
}