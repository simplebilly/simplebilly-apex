@isTest
private class OASUserApiTest {
    /**
     * Change the current user\&#39;s password (requires the current password).
     *
     * 
     */
    @isTest
    private static void changePasswordTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSChangePasswordRequest' => ''
        };

        OASClient client;
        OASUserApi api;
        String js = '';

        client = new OASClient();
        api = new OASUserApi(client);
        api.changePassword(params);
    }

    /**
     * Create a new team within the current tenant
     *
     * 
     */
    @isTest
    private static void createTeamTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSTeamCreate' => ''
        };

        OASClient client;
        OASUserApi api;
        OASApiResponseTeam response;
        OASApiResponseTeam expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASUserApi(client);

        js = JSON.serialize(OASApiResponseTeam.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASApiResponseTeam.getExample();
        response = (OASApiResponseTeam) api.createTeam(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Generate a new API key for the current user
     *
     * 
     */
    @isTest
    private static void generateApiKeyTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUserApi api;
        OASApiResponseString response;
        OASApiResponseString expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASUserApi(client);

        js = JSON.serialize(OASApiResponseString.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASApiResponseString.getExample();
        response = (OASApiResponseString) api.generateApiKey();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Invite a user to the current tenant/organization
     *
     * 
     */
    @isTest
    private static void inviteUserTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSInviteRequest' => ''
        };

        OASClient client;
        OASUserApi api;
        String js = '';

        client = new OASClient();
        api = new OASUserApi(client);
        api.inviteUser(params);
    }

    /**
     * List all teams in the current tenant
     *
     * 
     */
    @isTest
    private static void listTeamsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUserApi api;
        OASApiResponseVecTeam response;
        OASApiResponseVecTeam expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASUserApi(client);

        js = JSON.serialize(OASApiResponseVecTeam.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASApiResponseVecTeam.getExample();
        response = (OASApiResponseVecTeam) api.listTeams();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Remove a user from the current organization
     *
     * 
     */
    @isTest
    private static void removeUserFromOrgTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSRemoveUserRequest' => ''
        };

        OASClient client;
        OASUserApi api;
        String js = '';

        client = new OASClient();
        api = new OASUserApi(client);
        api.removeUserFromOrg(params);
    }

    /**
     * Update the current user\&#39;s profile
     *
     * 
     */
    @isTest
    private static void updateProfileTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSUpdateProfileRequest' => ''
        };

        OASClient client;
        OASUserApi api;
        String js = '';

        client = new OASClient();
        api = new OASUserApi(client);
        api.updateProfile(params);
    }

    /**
     * Get the current user\&#39;s profile
     *
     * 
     */
    @isTest
    private static void userProfileTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUserApi api;
        OASApiResponseUserProfile response;
        OASApiResponseUserProfile expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASUserApi(client);

        js = JSON.serialize(OASApiResponseUserProfile.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASApiResponseUserProfile.getExample();
        response = (OASApiResponseUserProfile) api.userProfile();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all tenants (organizations) the current user belongs to
     *
     * 
     */
    @isTest
    private static void userTenantsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUserApi api;
        OASApiResponseVecUserTenantInfo response;
        OASApiResponseVecUserTenantInfo expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASUserApi(client);

        js = JSON.serialize(OASApiResponseVecUserTenantInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASApiResponseVecUserTenantInfo.getExample();
        response = (OASApiResponseVecUserTenantInfo) api.userTenants();
        System.assertEquals(expectedResponse, response);
    }
}