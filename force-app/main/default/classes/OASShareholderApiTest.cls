@isTest
private class OASShareholderApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createShareholderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSShareholderCreate' => ''
        };

        OASClient client;
        OASShareholderApi api;
        OASShareholder response;
        OASShareholder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShareholderApi(client);

        js = JSON.serialize(OASShareholder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShareholder.getExample();
        response = (OASShareholder) api.createShareholder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShareholder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShareholder.getExample();
        response = (OASShareholder) api.createShareholder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShareholder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShareholder.getExample();
        response = (OASShareholder) api.createShareholder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteShareholderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASShareholderApi api;
        String js = '';

        client = new OASClient();
        api = new OASShareholderApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteShareholder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteShareholder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getShareholderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASShareholderApi api;
        OASShareholder response;
        OASShareholder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShareholderApi(client);

        js = JSON.serialize(OASShareholder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShareholder.getExample();
        response = (OASShareholder) api.getShareholder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShareholder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShareholder.getExample();
        response = (OASShareholder) api.getShareholder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShareholder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShareholder.getExample();
        response = (OASShareholder) api.getShareholder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getShareholdersTest() {
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
        OASShareholderApi api;
        List<OASShareholder> response;
        List<OASShareholder> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShareholderApi(client);

        js = JSON.serialize(new List<OASShareholder>{OASShareholder.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASShareholder>{OASShareholder.getExample()};
        response = (List<OASShareholder>) api.getShareholders(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASShareholder>{OASShareholder.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASShareholder>{OASShareholder.getExample()};
        response = (List<OASShareholder>) api.getShareholders(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateShareholderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'oaSShareholderUpdate' => ''
        };

        OASClient client;
        OASShareholderApi api;
        OASShareholder response;
        OASShareholder expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShareholderApi(client);

        js = JSON.serialize(OASShareholder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShareholder.getExample();
        response = (OASShareholder) api.updateShareholder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShareholder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShareholder.getExample();
        response = (OASShareholder) api.updateShareholder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShareholder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShareholder.getExample();
        response = (OASShareholder) api.updateShareholder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShareholder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShareholder.getExample();
        response = (OASShareholder) api.updateShareholder(params);
        System.assertEquals(expectedResponse, response);
    }
}