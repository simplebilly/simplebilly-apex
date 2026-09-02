@isTest
private class OASShippingRuleApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createShippingRuleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSShippingRuleCreate' => ''
        };

        OASClient client;
        OASShippingRuleApi api;
        OASShippingRule response;
        OASShippingRule expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShippingRuleApi(client);

        js = JSON.serialize(OASShippingRule.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingRule.getExample();
        response = (OASShippingRule) api.createShippingRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShippingRule.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingRule.getExample();
        response = (OASShippingRule) api.createShippingRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShippingRule.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingRule.getExample();
        response = (OASShippingRule) api.createShippingRule(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteShippingRuleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'ruleId' => 'null'
        };

        OASClient client;
        OASShippingRuleApi api;
        String js = '';

        client = new OASClient();
        api = new OASShippingRuleApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteShippingRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteShippingRule(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getShippingRuleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'ruleId' => 'null'
        };

        OASClient client;
        OASShippingRuleApi api;
        OASShippingRule response;
        OASShippingRule expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShippingRuleApi(client);

        js = JSON.serialize(OASShippingRule.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingRule.getExample();
        response = (OASShippingRule) api.getShippingRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShippingRule.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingRule.getExample();
        response = (OASShippingRule) api.getShippingRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShippingRule.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingRule.getExample();
        response = (OASShippingRule) api.getShippingRule(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listShippingRulesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'country' => 'null'
        };

        OASClient client;
        OASShippingRuleApi api;
        List<OASShippingRule> response;
        List<OASShippingRule> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShippingRuleApi(client);

        js = JSON.serialize(new List<OASShippingRule>{OASShippingRule.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASShippingRule>{OASShippingRule.getExample()};
        response = (List<OASShippingRule>) api.listShippingRules(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASShippingRule>{OASShippingRule.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASShippingRule>{OASShippingRule.getExample()};
        response = (List<OASShippingRule>) api.listShippingRules(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateShippingRuleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'ruleId' => 'null',
            'oaSShippingRuleUpdate' => ''
        };

        OASClient client;
        OASShippingRuleApi api;
        OASShippingRule response;
        OASShippingRule expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShippingRuleApi(client);

        js = JSON.serialize(OASShippingRule.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingRule.getExample();
        response = (OASShippingRule) api.updateShippingRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShippingRule.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingRule.getExample();
        response = (OASShippingRule) api.updateShippingRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShippingRule.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingRule.getExample();
        response = (OASShippingRule) api.updateShippingRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShippingRule.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShippingRule.getExample();
        response = (OASShippingRule) api.updateShippingRule(params);
        System.assertEquals(expectedResponse, response);
    }
}