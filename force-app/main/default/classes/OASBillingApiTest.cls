@isTest
private class OASBillingApiTest {
    /**
     * All canonical plans (free/starter/business/enterprise) — the single\nsource of truth lives in &#x60;crate::saasy::plans&#x60;, matching marketing.
     *
     * 
     */
    @isTest
    private static void getPlansTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASBillingApi api;
        OASApiResponseVecPlan response;
        OASApiResponseVecPlan expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBillingApi(client);

        js = JSON.serialize(OASApiResponseVecPlan.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASApiResponseVecPlan.getExample();
        response = (OASApiResponseVecPlan) api.getPlans();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Effective limits + current usage for the calling tenant.
     *
     * 
     */
    @isTest
    private static void getQuotaApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASBillingApi api;
        String js = '';

        client = new OASClient();
        api = new OASBillingApi(client);
        api.getQuotaApi();
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getSubscriptionApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASBillingApi api;
        OASApiResponseSubscriptionOverview response;
        OASApiResponseSubscriptionOverview expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBillingApi(client);

        js = JSON.serialize(OASApiResponseSubscriptionOverview.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASApiResponseSubscriptionOverview.getExample();
        response = (OASApiResponseSubscriptionOverview) api.getSubscriptionApi();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getUsageApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'meter' => 'null'
        };

        OASClient client;
        OASBillingApi api;
        String js = '';

        client = new OASClient();
        api = new OASBillingApi(client);
        api.getUsageApi(params);
    }

    /**
     * Paddle Billing subscription webhook. Verifies the &#x60;Paddle-Signature&#x60;\nheader (HMAC-SHA256 over &#x60;&quot;{ts}:{raw_body}&quot;&#x60; with the webhook secret),\nthen updates &#x60;billing_info&#x60; and &#x60;tenants.plan&#x60; for the tenant identified\nby the subscription &#x60;custom_data&#x60; (JSON &#x60;{&quot;tenant_id&quot;: &quot;...&quot;}&#x60; or a bare\ntenant UUID).
     *
     * 
     */
    @isTest
    private static void paddleSubscriptionWebhookTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASBillingApi api;
        String js = '';

        client = new OASClient();
        api = new OASBillingApi(client);
        api.paddleSubscriptionWebhook();
    }

    /**
     * Write the per-tenant quota override (&#x60;admin:settings&#x60;). An empty object\nclears the override.
     *
     * 
     */
    @isTest
    private static void putQuotaApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSQuotaOverride' => ''
        };

        OASClient client;
        OASBillingApi api;
        String js = '';

        client = new OASClient();
        api = new OASBillingApi(client);
        api.putQuotaApi(params);
    }
}