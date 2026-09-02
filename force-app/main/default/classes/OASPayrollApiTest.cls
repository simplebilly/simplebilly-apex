@isTest
private class OASPayrollApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void payrollApproveTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASPayrollApi api;
        OASPayrollRunApi response;
        OASPayrollRunApi expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPayrollApi(client);

        js = JSON.serialize(OASPayrollRunApi.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayrollRunApi.getExample();
        response = (OASPayrollRunApi) api.payrollApprove(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void payrollAutopayTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'body' => ''
        };

        OASClient client;
        OASPayrollApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPayrollApi(client);
        api.payrollAutopay(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void payrollCalculateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASPayrollApi api;
        OASPayrollRunApi response;
        OASPayrollRunApi expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPayrollApi(client);

        js = JSON.serialize(OASPayrollRunApi.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayrollRunApi.getExample();
        response = (OASPayrollRunApi) api.payrollCalculate(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void payrollCreateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSPayrollCreatePayload' => ''
        };

        OASClient client;
        OASPayrollApi api;
        OASPayrollRunApi response;
        OASPayrollRunApi expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPayrollApi(client);

        js = JSON.serialize(OASPayrollRunApi.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayrollRunApi.getExample();
        response = (OASPayrollRunApi) api.payrollCreate(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void payrollDeleteTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASPayrollApi api;
        String js = '';

        client = new OASClient();
        api = new OASPayrollApi(client);
        api.payrollDelete(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void payrollElsterExportTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASPayrollApi api;
        String js = '';

        client = new OASClient();
        api = new OASPayrollApi(client);
        api.payrollElsterExport(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void payrollEmailTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASPayrollApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPayrollApi(client);
        api.payrollEmail(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void payrollEntryPdfTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'entryId' => 'null'
        };

        OASClient client;
        OASPayrollApi api;
        String js = '';

        client = new OASClient();
        api = new OASPayrollApi(client);
        api.payrollEntryPdf(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void payrollGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASPayrollApi api;
        OASPayrollRunApi response;
        OASPayrollRunApi expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPayrollApi(client);

        js = JSON.serialize(OASPayrollRunApi.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayrollRunApi.getExample();
        response = (OASPayrollRunApi) api.payrollGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void payrollListTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => '',
            'status' => 'null'
        };

        OASClient client;
        OASPayrollApi api;
        List<OASPayrollRunApi> response;
        List<OASPayrollRunApi> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPayrollApi(client);

        js = JSON.serialize(new List<OASPayrollRunApi>{OASPayrollRunApi.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPayrollRunApi>{OASPayrollRunApi.getExample()};
        response = (List<OASPayrollRunApi>) api.payrollList(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void payrollPayTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'oaSPayrollPayPayload' => ''
        };

        OASClient client;
        OASPayrollApi api;
        OASPayrollRunApi response;
        OASPayrollRunApi expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPayrollApi(client);

        js = JSON.serialize(OASPayrollRunApi.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayrollRunApi.getExample();
        response = (OASPayrollRunApi) api.payrollPay(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void payrollPdfTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASPayrollApi api;
        String js = '';

        client = new OASClient();
        api = new OASPayrollApi(client);
        api.payrollPdf(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void payrollSummaryTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => ''
        };

        OASClient client;
        OASPayrollApi api;
        OASYearlyPayrollSummary response;
        OASYearlyPayrollSummary expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPayrollApi(client);

        js = JSON.serialize(OASYearlyPayrollSummary.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASYearlyPayrollSummary.getExample();
        response = (OASYearlyPayrollSummary) api.payrollSummary(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void payrollSvMeldungenTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASPayrollApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPayrollApi(client);
        api.payrollSvMeldungen(params);
    }
}