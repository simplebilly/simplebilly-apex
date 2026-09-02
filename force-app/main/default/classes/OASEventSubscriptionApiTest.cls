@isTest
private class OASEventSubscriptionApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createEventSubscriptionTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => ''
        };

        OASClient client;
        OASEventSubscriptionApi api;
        OASEventSubscription response;
        OASEventSubscription expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEventSubscriptionApi(client);

        js = JSON.serialize(OASEventSubscription.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEventSubscription.getExample();
        response = (OASEventSubscription) api.createEventSubscription(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEventSubscription.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEventSubscription.getExample();
        response = (OASEventSubscription) api.createEventSubscription(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEventSubscription.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEventSubscription.getExample();
        response = (OASEventSubscription) api.createEventSubscription(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteEventSubscriptionTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'subscriptionId' => 'null'
        };

        OASClient client;
        OASEventSubscriptionApi api;
        String js = '';

        client = new OASClient();
        api = new OASEventSubscriptionApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteEventSubscription(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteEventSubscription(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listEventSubscriptionsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASEventSubscriptionApi api;
        List<OASEventSubscription> response;
        List<OASEventSubscription> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEventSubscriptionApi(client);

        js = JSON.serialize(new List<OASEventSubscription>{OASEventSubscription.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASEventSubscription>{OASEventSubscription.getExample()};
        response = (List<OASEventSubscription>) api.listEventSubscriptions();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASEventSubscription>{OASEventSubscription.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASEventSubscription>{OASEventSubscription.getExample()};
        response = (List<OASEventSubscription>) api.listEventSubscriptions();
        System.assertEquals(expectedResponse, response);
    }
}