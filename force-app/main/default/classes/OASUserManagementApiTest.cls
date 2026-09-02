@isTest
private class OASUserManagementApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void getUserTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'userId' => 'null'
        };

        OASClient client;
        OASUserManagementApi api;
        OASTenantUser response;
        OASTenantUser expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASUserManagementApi(client);

        js = JSON.serialize(OASTenantUser.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTenantUser.getExample();
        response = (OASTenantUser) api.getUser(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listUsersTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUserManagementApi api;
        List<OASTenantUser> response;
        List<OASTenantUser> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASUserManagementApi(client);

        js = JSON.serialize(new List<OASTenantUser>{OASTenantUser.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTenantUser>{OASTenantUser.getExample()};
        response = (List<OASTenantUser>) api.listUsers();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void removeUserTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'userId' => 'null'
        };

        OASClient client;
        OASUserManagementApi api;
        String js = '';

        client = new OASClient();
        api = new OASUserManagementApi(client);
        api.removeUser(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateUserPermissionsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'userId' => 'null',
            'oaSUpdatePermissionsPayload' => ''
        };

        OASClient client;
        OASUserManagementApi api;
        String js = '';

        client = new OASClient();
        api = new OASUserManagementApi(client);
        api.updateUserPermissions(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateUserRoleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'userId' => 'null',
            'oaSUpdateRolePayload' => ''
        };

        OASClient client;
        OASUserManagementApi api;
        String js = '';

        client = new OASClient();
        api = new OASUserManagementApi(client);
        api.updateUserRole(params);
    }
}