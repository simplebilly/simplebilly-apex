@isTest
private class OASSilentPartnerApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createSilentPartnerTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSSilentPartnerCreate' => ''
        };

        OASClient client;
        OASSilentPartnerApi api;
        OASSilentPartner response;
        OASSilentPartner expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSilentPartnerApi(client);

        js = JSON.serialize(OASSilentPartner.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSilentPartner.getExample();
        response = (OASSilentPartner) api.createSilentPartner(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSilentPartner.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSilentPartner.getExample();
        response = (OASSilentPartner) api.createSilentPartner(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSilentPartner.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSilentPartner.getExample();
        response = (OASSilentPartner) api.createSilentPartner(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteSilentPartnerTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASSilentPartnerApi api;
        String js = '';

        client = new OASClient();
        api = new OASSilentPartnerApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteSilentPartner(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteSilentPartner(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getSilentPartnerTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASSilentPartnerApi api;
        OASSilentPartner response;
        OASSilentPartner expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSilentPartnerApi(client);

        js = JSON.serialize(OASSilentPartner.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSilentPartner.getExample();
        response = (OASSilentPartner) api.getSilentPartner(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSilentPartner.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSilentPartner.getExample();
        response = (OASSilentPartner) api.getSilentPartner(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSilentPartner.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSilentPartner.getExample();
        response = (OASSilentPartner) api.getSilentPartner(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getSilentPartnersTest() {
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
        OASSilentPartnerApi api;
        List<OASSilentPartner> response;
        List<OASSilentPartner> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSilentPartnerApi(client);

        js = JSON.serialize(new List<OASSilentPartner>{OASSilentPartner.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSilentPartner>{OASSilentPartner.getExample()};
        response = (List<OASSilentPartner>) api.getSilentPartners(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASSilentPartner>{OASSilentPartner.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSilentPartner>{OASSilentPartner.getExample()};
        response = (List<OASSilentPartner>) api.getSilentPartners(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateSilentPartnerTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'oaSSilentPartnerUpdate' => ''
        };

        OASClient client;
        OASSilentPartnerApi api;
        OASSilentPartner response;
        OASSilentPartner expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSilentPartnerApi(client);

        js = JSON.serialize(OASSilentPartner.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSilentPartner.getExample();
        response = (OASSilentPartner) api.updateSilentPartner(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSilentPartner.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSilentPartner.getExample();
        response = (OASSilentPartner) api.updateSilentPartner(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSilentPartner.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSilentPartner.getExample();
        response = (OASSilentPartner) api.updateSilentPartner(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSilentPartner.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSilentPartner.getExample();
        response = (OASSilentPartner) api.updateSilentPartner(params);
        System.assertEquals(expectedResponse, response);
    }
}