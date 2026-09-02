@isTest
private class OASCustomerGroupApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void addGroupMembersTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'customerGroupId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASCustomerGroupApi api;
        OASCustomerGroup response;
        OASCustomerGroup expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomerGroupApi(client);

        js = JSON.serialize(OASCustomerGroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerGroup.getExample();
        response = (OASCustomerGroup) api.addGroupMembers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomerGroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerGroup.getExample();
        response = (OASCustomerGroup) api.addGroupMembers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomerGroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerGroup.getExample();
        response = (OASCustomerGroup) api.addGroupMembers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomerGroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerGroup.getExample();
        response = (OASCustomerGroup) api.addGroupMembers(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void createCustomerGroupTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSCustomerGroupCreate' => ''
        };

        OASClient client;
        OASCustomerGroupApi api;
        OASCustomerGroup response;
        OASCustomerGroup expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomerGroupApi(client);

        js = JSON.serialize(OASCustomerGroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerGroup.getExample();
        response = (OASCustomerGroup) api.createCustomerGroup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomerGroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerGroup.getExample();
        response = (OASCustomerGroup) api.createCustomerGroup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomerGroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerGroup.getExample();
        response = (OASCustomerGroup) api.createCustomerGroup(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteCustomerGroupTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'customerGroupId' => 'null'
        };

        OASClient client;
        OASCustomerGroupApi api;
        String js = '';

        client = new OASClient();
        api = new OASCustomerGroupApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteCustomerGroup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteCustomerGroup(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getCustomerGroupTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'customerGroupId' => 'null'
        };

        OASClient client;
        OASCustomerGroupApi api;
        OASCustomerGroup response;
        OASCustomerGroup expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomerGroupApi(client);

        js = JSON.serialize(OASCustomerGroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerGroup.getExample();
        response = (OASCustomerGroup) api.getCustomerGroup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomerGroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerGroup.getExample();
        response = (OASCustomerGroup) api.getCustomerGroup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomerGroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerGroup.getExample();
        response = (OASCustomerGroup) api.getCustomerGroup(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listCustomerGroupsTest() {
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
        OASCustomerGroupApi api;
        List<OASCustomerGroup> response;
        List<OASCustomerGroup> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomerGroupApi(client);

        js = JSON.serialize(new List<OASCustomerGroup>{OASCustomerGroup.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCustomerGroup>{OASCustomerGroup.getExample()};
        response = (List<OASCustomerGroup>) api.listCustomerGroups(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASCustomerGroup>{OASCustomerGroup.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCustomerGroup>{OASCustomerGroup.getExample()};
        response = (List<OASCustomerGroup>) api.listCustomerGroups(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateCustomerGroupTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'customerGroupId' => 'null',
            'oaSCustomerGroupUpdate' => ''
        };

        OASClient client;
        OASCustomerGroupApi api;
        OASCustomerGroup response;
        OASCustomerGroup expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomerGroupApi(client);

        js = JSON.serialize(OASCustomerGroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerGroup.getExample();
        response = (OASCustomerGroup) api.updateCustomerGroup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomerGroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerGroup.getExample();
        response = (OASCustomerGroup) api.updateCustomerGroup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomerGroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerGroup.getExample();
        response = (OASCustomerGroup) api.updateCustomerGroup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCustomerGroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomerGroup.getExample();
        response = (OASCustomerGroup) api.updateCustomerGroup(params);
        System.assertEquals(expectedResponse, response);
    }
}