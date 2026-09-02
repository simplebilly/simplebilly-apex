@isTest
private class OASWebhooksApiTest {
    /**
     * Create a webhook subscription (outbound hook).
     *
     * 
     */
    @isTest
    private static void createSubscriptionTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSCreateSubscriptionRequest' => ''
        };

        OASClient client;
        OASWebhooksApi api;
        OASWebhookSubscription response;
        OASWebhookSubscription expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASWebhooksApi(client);

        js = JSON.serialize(OASWebhookSubscription.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWebhookSubscription.getExample();
        response = (OASWebhookSubscription) api.createSubscription(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Delete a webhook subscription.
     *
     * 
     */
    @isTest
    private static void deleteSubscriptionTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'subscriptionId' => 'null'
        };

        OASClient client;
        OASWebhooksApi api;
        String js = '';

        client = new OASClient();
        api = new OASWebhooksApi(client);
        api.deleteSubscription(params);
    }

    /**
     * Manually fire an event against matching hooks (for testing/flows).
     *
     * 
     */
    @isTest
    private static void emitApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSEmitEventRequest' => ''
        };

        OASClient client;
        OASWebhooksApi api;
        String js = '';

        client = new OASClient();
        api = new OASWebhooksApi(client);
        api.emitApi(params);
    }

    /**
     * List webhook events (inbound + outbound log).
     *
     * 
     */
    @isTest
    private static void listEventTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASWebhooksApi api;
        List<OASWebhookEvent> response;
        List<OASWebhookEvent> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASWebhooksApi(client);

        js = JSON.serialize(new List<OASWebhookEvent>{OASWebhookEvent.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASWebhookEvent>{OASWebhookEvent.getExample()};
        response = (List<OASWebhookEvent>) api.listEvent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List webhook subscriptions for the tenant.
     *
     * 
     */
    @isTest
    private static void listSubscriptionsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASWebhooksApi api;
        List<OASWebhookSubscription> response;
        List<OASWebhookSubscription> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASWebhooksApi(client);

        js = JSON.serialize(new List<OASWebhookSubscription>{OASWebhookSubscription.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASWebhookSubscription>{OASWebhookSubscription.getExample()};
        response = (List<OASWebhookSubscription>) api.listSubscriptions();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update a webhook subscription.
     *
     * 
     */
    @isTest
    private static void updateSubscriptionTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'subscriptionId' => 'null',
            'oaSUpdateSubscriptionRequest' => ''
        };

        OASClient client;
        OASWebhooksApi api;
        OASWebhookSubscription response;
        OASWebhookSubscription expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASWebhooksApi(client);

        js = JSON.serialize(OASWebhookSubscription.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWebhookSubscription.getExample();
        response = (OASWebhookSubscription) api.updateSubscription(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASWebhookSubscription.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWebhookSubscription.getExample();
        response = (OASWebhookSubscription) api.updateSubscription(params);
        System.assertEquals(expectedResponse, response);
    }
}