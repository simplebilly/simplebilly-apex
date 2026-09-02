@isTest
private class OASMarketplaceApiApiTest {
    /**
     * Create a new connection (for API-key based platforms)
     *
     * 
     */
    @isTest
    private static void createConnectionApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSCreateConnectionRequest' => ''
        };

        OASClient client;
        OASMarketplaceApiApi api;
        OASMarketplaceConnection response;
        OASMarketplaceConnection expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMarketplaceApiApi(client);

        js = JSON.serialize(OASMarketplaceConnection.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASMarketplaceConnection.getExample();
        response = (OASMarketplaceConnection) api.createConnectionApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Soft-delete a connection
     *
     * 
     */
    @isTest
    private static void deleteConnectionApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'connectionId' => 'null'
        };

        OASClient client;
        OASMarketplaceApiApi api;
        String js = '';

        client = new OASClient();
        api = new OASMarketplaceApiApi(client);
        api.deleteConnectionApi(params);
    }

    /**
     * Get a single connection
     *
     * 
     */
    @isTest
    private static void getConnectionApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'connectionId' => 'null'
        };

        OASClient client;
        OASMarketplaceApiApi api;
        OASMarketplaceConnection response;
        OASMarketplaceConnection expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMarketplaceApiApi(client);

        js = JSON.serialize(OASMarketplaceConnection.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASMarketplaceConnection.getExample();
        response = (OASMarketplaceConnection) api.getConnectionApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get current sync direction configuration for a connection
     *
     * 
     */
    @isTest
    private static void getSyncDirectionApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'connectionId' => 'null'
        };

        OASClient client;
        OASMarketplaceApiApi api;
        String js = '';

        client = new OASClient();
        api = new OASMarketplaceApiApi(client);
        api.getSyncDirectionApi(params);
    }

    /**
     * Get sync logs for a connection
     *
     * 
     */
    @isTest
    private static void getSyncLogsApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'connectionId' => 'null'
        };

        OASClient client;
        OASMarketplaceApiApi api;
        List<OASSyncLog> response;
        List<OASSyncLog> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMarketplaceApiApi(client);

        js = JSON.serialize(new List<OASSyncLog>{OASSyncLog.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSyncLog>{OASSyncLog.getExample()};
        response = (List<OASSyncLog>) api.getSyncLogsApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List connections for the current tenant
     *
     * 
     */
    @isTest
    private static void listConnectionsApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASMarketplaceApiApi api;
        List<OASMarketplaceConnection> response;
        List<OASMarketplaceConnection> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMarketplaceApiApi(client);

        js = JSON.serialize(new List<OASMarketplaceConnection>{OASMarketplaceConnection.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASMarketplaceConnection>{OASMarketplaceConnection.getExample()};
        response = (List<OASMarketplaceConnection>) api.listConnectionsApi();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all supported platforms
     *
     * 
     */
    @isTest
    private static void listPlatformsApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASMarketplaceApiApi api;
        List<OASPlatformInfo> response;
        List<OASPlatformInfo> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMarketplaceApiApi(client);

        js = JSON.serialize(new List<OASPlatformInfo>{OASPlatformInfo.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPlatformInfo>{OASPlatformInfo.getExample()};
        response = (List<OASPlatformInfo>) api.listPlatformsApi();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * OAuth: initiate authorization flow
     *
     * 
     */
    @isTest
    private static void oauthAuthorizeApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSOAuthAuthorizeRequest' => ''
        };

        OASClient client;
        OASMarketplaceApiApi api;
        OASOAuthAuthorizeResponse response;
        OASOAuthAuthorizeResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMarketplaceApiApi(client);

        js = JSON.serialize(OASOAuthAuthorizeResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOAuthAuthorizeResponse.getExample();
        response = (OASOAuthAuthorizeResponse) api.oauthAuthorizeApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * OAuth: handle callback after authorization
     *
     * 
     */
    @isTest
    private static void oauthCallbackApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSOAuthCallbackRequest' => ''
        };

        OASClient client;
        OASMarketplaceApiApi api;
        OASMarketplaceConnection response;
        OASMarketplaceConnection expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMarketplaceApiApi(client);

        js = JSON.serialize(OASMarketplaceConnection.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASMarketplaceConnection.getExample();
        response = (OASMarketplaceConnection) api.oauthCallbackApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Trigger sync for a connection
     *
     * 
     */
    @isTest
    private static void triggerSyncApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'connectionId' => 'null',
            'syncType' => 'null',
            'direction' => 'null'
        };

        OASClient client;
        OASMarketplaceApiApi api;
        OASSyncSummary response;
        OASSyncSummary expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMarketplaceApiApi(client);

        js = JSON.serialize(OASSyncSummary.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSyncSummary.getExample();
        response = (OASSyncSummary) api.triggerSyncApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update a connection
     *
     * 
     */
    @isTest
    private static void updateConnectionApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'connectionId' => 'null',
            'oaSUpdateConnectionRequest' => ''
        };

        OASClient client;
        OASMarketplaceApiApi api;
        OASMarketplaceConnection response;
        OASMarketplaceConnection expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMarketplaceApiApi(client);

        js = JSON.serialize(OASMarketplaceConnection.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASMarketplaceConnection.getExample();
        response = (OASMarketplaceConnection) api.updateConnectionApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update per-entity sync direction configuration for a connection
     *
     * 
     */
    @isTest
    private static void updateSyncDirectionApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'connectionId' => 'null',
            'oaSUpdateSyncDirectionRequest' => ''
        };

        OASClient client;
        OASMarketplaceApiApi api;
        String js = '';

        client = new OASClient();
        api = new OASMarketplaceApiApi(client);
        api.updateSyncDirectionApi(params);
    }

    /**
     * Webhook receiver
     *
     * 
     */
    @isTest
    private static void webhookReceiverApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'platform' => 'null',
            'connectionId' => 'null'
        };

        OASClient client;
        OASMarketplaceApiApi api;
        String js = '';

        client = new OASClient();
        api = new OASMarketplaceApiApi(client);
        api.webhookReceiverApi(params);
    }
}