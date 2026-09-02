@isTest
private class OASSupplierConditionApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createSupplierConditionTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSSupplierConditionCreate' => ''
        };

        OASClient client;
        OASSupplierConditionApi api;
        OASSupplierCondition response;
        OASSupplierCondition expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSupplierConditionApi(client);

        js = JSON.serialize(OASSupplierCondition.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierCondition.getExample();
        response = (OASSupplierCondition) api.createSupplierCondition(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSupplierCondition.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierCondition.getExample();
        response = (OASSupplierCondition) api.createSupplierCondition(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSupplierCondition.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierCondition.getExample();
        response = (OASSupplierCondition) api.createSupplierCondition(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteSupplierConditionTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'supplierConditionId' => 'null'
        };

        OASClient client;
        OASSupplierConditionApi api;
        String js = '';

        client = new OASClient();
        api = new OASSupplierConditionApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteSupplierCondition(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteSupplierCondition(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getSupplierConditionTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'supplierConditionId' => 'null'
        };

        OASClient client;
        OASSupplierConditionApi api;
        OASSupplierCondition response;
        OASSupplierCondition expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSupplierConditionApi(client);

        js = JSON.serialize(OASSupplierCondition.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierCondition.getExample();
        response = (OASSupplierCondition) api.getSupplierCondition(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSupplierCondition.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierCondition.getExample();
        response = (OASSupplierCondition) api.getSupplierCondition(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSupplierCondition.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierCondition.getExample();
        response = (OASSupplierCondition) api.getSupplierCondition(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listSupplierConditionsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'supplierContactId' => 'null',
            'search' => 'null'
        };

        OASClient client;
        OASSupplierConditionApi api;
        List<OASSupplierCondition> response;
        List<OASSupplierCondition> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSupplierConditionApi(client);

        js = JSON.serialize(new List<OASSupplierCondition>{OASSupplierCondition.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSupplierCondition>{OASSupplierCondition.getExample()};
        response = (List<OASSupplierCondition>) api.listSupplierConditions(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASSupplierCondition>{OASSupplierCondition.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSupplierCondition>{OASSupplierCondition.getExample()};
        response = (List<OASSupplierCondition>) api.listSupplierConditions(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateSupplierConditionTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'supplierConditionId' => 'null',
            'oaSSupplierConditionUpdate' => ''
        };

        OASClient client;
        OASSupplierConditionApi api;
        OASSupplierCondition response;
        OASSupplierCondition expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSupplierConditionApi(client);

        js = JSON.serialize(OASSupplierCondition.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierCondition.getExample();
        response = (OASSupplierCondition) api.updateSupplierCondition(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSupplierCondition.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierCondition.getExample();
        response = (OASSupplierCondition) api.updateSupplierCondition(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSupplierCondition.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierCondition.getExample();
        response = (OASSupplierCondition) api.updateSupplierCondition(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSupplierCondition.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSupplierCondition.getExample();
        response = (OASSupplierCondition) api.updateSupplierCondition(params);
        System.assertEquals(expectedResponse, response);
    }
}