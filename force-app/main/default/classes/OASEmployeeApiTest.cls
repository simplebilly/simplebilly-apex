@isTest
private class OASEmployeeApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createEmployeeTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSEmployeeCreate' => ''
        };

        OASClient client;
        OASEmployeeApi api;
        OASEmployee response;
        OASEmployee expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEmployeeApi(client);

        js = JSON.serialize(OASEmployee.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmployee.getExample();
        response = (OASEmployee) api.createEmployee(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEmployee.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmployee.getExample();
        response = (OASEmployee) api.createEmployee(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEmployee.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmployee.getExample();
        response = (OASEmployee) api.createEmployee(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteEmployeeTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASEmployeeApi api;
        String js = '';

        client = new OASClient();
        api = new OASEmployeeApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteEmployee(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteEmployee(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void employeeRestoreTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASEmployeeApi api;
        OASEmployee response;
        OASEmployee expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEmployeeApi(client);

        js = JSON.serialize(OASEmployee.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmployee.getExample();
        response = (OASEmployee) api.employeeRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEmployee.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmployee.getExample();
        response = (OASEmployee) api.employeeRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEmployee.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmployee.getExample();
        response = (OASEmployee) api.employeeRestore(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getEmployeeTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASEmployeeApi api;
        OASEmployee response;
        OASEmployee expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEmployeeApi(client);

        js = JSON.serialize(OASEmployee.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmployee.getExample();
        response = (OASEmployee) api.getEmployee(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEmployee.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmployee.getExample();
        response = (OASEmployee) api.getEmployee(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEmployee.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmployee.getExample();
        response = (OASEmployee) api.getEmployee(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getEmployeePayrollSummaryTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'year' => ''
        };

        OASClient client;
        OASEmployeeApi api;
        OASPayrollSummary response;
        OASPayrollSummary expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEmployeeApi(client);

        js = JSON.serialize(OASPayrollSummary.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayrollSummary.getExample();
        response = (OASPayrollSummary) api.getEmployeePayrollSummary(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPayrollSummary.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayrollSummary.getExample();
        response = (OASPayrollSummary) api.getEmployeePayrollSummary(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPayrollSummary.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPayrollSummary.getExample();
        response = (OASPayrollSummary) api.getEmployeePayrollSummary(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getEmployeesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => 1,
            'pageSize' => '',
            'search' => 'null',
            'includeDeleted' => ''
        };

        OASClient client;
        OASEmployeeApi api;
        List<OASEmployee> response;
        List<OASEmployee> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEmployeeApi(client);

        js = JSON.serialize(new List<OASEmployee>{OASEmployee.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASEmployee>{OASEmployee.getExample()};
        response = (List<OASEmployee>) api.getEmployees(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASEmployee>{OASEmployee.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASEmployee>{OASEmployee.getExample()};
        response = (List<OASEmployee>) api.getEmployees(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateEmployeeTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'oaSEmployeeUpdate' => ''
        };

        OASClient client;
        OASEmployeeApi api;
        OASEmployee response;
        OASEmployee expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEmployeeApi(client);

        js = JSON.serialize(OASEmployee.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmployee.getExample();
        response = (OASEmployee) api.updateEmployee(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEmployee.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmployee.getExample();
        response = (OASEmployee) api.updateEmployee(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEmployee.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmployee.getExample();
        response = (OASEmployee) api.updateEmployee(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEmployee.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmployee.getExample();
        response = (OASEmployee) api.updateEmployee(params);
        System.assertEquals(expectedResponse, response);
    }
}