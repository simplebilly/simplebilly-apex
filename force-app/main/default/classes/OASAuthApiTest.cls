@isTest
private class OASAuthApiTest {
    /**
     * Accept an invite: create the account (or reuse an existing one) and join\nthe inviting tenant. The invite token proves control of the mailbox.
     *
     * 
     */
    @isTest
    private static void acceptInviteTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSAcceptInviteRequest' => ''
        };

        OASClient client;
        OASAuthApi api;
        String js = '';

        client = new OASClient();
        api = new OASAuthApi(client);
        api.acceptInvite(params);
    }

    /**
     * Send a password reset email to the user
     *
     * 
     */
    @isTest
    private static void forgotPasswordTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSForgotPasswordRequest' => ''
        };

        OASClient client;
        OASAuthApi api;
        String js = '';

        client = new OASClient();
        api = new OASAuthApi(client);
        api.forgotPassword(params);
    }

    /**
     * Authenticate a user with email + password (optional TOTP)
     *
     * 
     */
    @isTest
    private static void loginTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSLoginRequest' => ''
        };

        OASClient client;
        OASAuthApi api;
        OASAuthResponse response;
        OASAuthResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAuthApi(client);

        js = JSON.serialize(OASAuthResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAuthResponse.getExample();
        response = (OASAuthResponse) api.login(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Log out the current user (kills the assay session)
     *
     * 
     */
    @isTest
    private static void logoutTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASAuthApi api;
        String js = '';

        client = new OASClient();
        api = new OASAuthApi(client);
        api.logout();
    }

    /**
     * Request a magic link login (sends an email with a one-time link)
     *
     * 
     */
    @isTest
    private static void magicLinkLoginTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSMagicLinkRequest' => ''
        };

        OASClient client;
        OASAuthApi api;
        String js = '';

        client = new OASClient();
        api = new OASAuthApi(client);
        api.magicLinkLogin(params);
    }

    /**
     * Verify a magic link token and log the user in
     *
     * 
     */
    @isTest
    private static void magicLinkVerifyTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSMagicLinkVerifyRequest' => ''
        };

        OASClient client;
        OASAuthApi api;
        OASAuthResponse response;
        OASAuthResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAuthApi(client);

        js = JSON.serialize(OASAuthResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAuthResponse.getExample();
        response = (OASAuthResponse) api.magicLinkVerify(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Register a new user account
     *
     * 
     */
    @isTest
    private static void registerTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSRegisterRequest' => ''
        };

        OASClient client;
        OASAuthApi api;
        OASAuthResponse response;
        OASAuthResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAuthApi(client);

        js = JSON.serialize(OASAuthResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAuthResponse.getExample();
        response = (OASAuthResponse) api.register(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Reset the user\&#39;s password using a reset token
     *
     * 
     */
    @isTest
    private static void resetPasswordTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSResetPasswordRequest' => ''
        };

        OASClient client;
        OASAuthApi api;
        String js = '';

        client = new OASClient();
        api = new OASAuthApi(client);
        api.resetPassword(params);
    }

    /**
     * Enable TOTP two-factor authentication by verifying a code
     *
     * 
     */
    @isTest
    private static void totpEnableTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSTotpEnableRequest' => ''
        };

        OASClient client;
        OASAuthApi api;
        String js = '';

        client = new OASClient();
        api = new OASAuthApi(client);
        api.totpEnable(params);
    }

    /**
     * Set up TOTP two-factor authentication (generates secret + backup codes)
     *
     * 
     */
    @isTest
    private static void totpSetupTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASAuthApi api;
        OASTotpSetupResponse response;
        OASTotpSetupResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAuthApi(client);

        js = JSON.serialize(OASTotpSetupResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTotpSetupResponse.getExample();
        response = (OASTotpSetupResponse) api.totpSetup();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Verify a user\&#39;s email address using a verification token
     *
     * 
     */
    @isTest
    private static void verifyEmailTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSVerifyEmailRequest' => ''
        };

        OASClient client;
        OASAuthApi api;
        String js = '';

        client = new OASClient();
        api = new OASAuthApi(client);
        api.verifyEmail(params);
    }
}