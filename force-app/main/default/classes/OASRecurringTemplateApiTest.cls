@isTest
private class OASRecurringTemplateApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createRecurringTemplateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => ''
        };

        OASClient client;
        OASRecurringTemplateApi api;
        OASRecurringTemplate response;
        OASRecurringTemplate expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRecurringTemplateApi(client);

        js = JSON.serialize(OASRecurringTemplate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecurringTemplate.getExample();
        response = (OASRecurringTemplate) api.createRecurringTemplate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecurringTemplate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecurringTemplate.getExample();
        response = (OASRecurringTemplate) api.createRecurringTemplate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecurringTemplate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecurringTemplate.getExample();
        response = (OASRecurringTemplate) api.createRecurringTemplate(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteRecurringTemplateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'templateId' => 'null'
        };

        OASClient client;
        OASRecurringTemplateApi api;
        String js = '';

        client = new OASClient();
        api = new OASRecurringTemplateApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteRecurringTemplate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteRecurringTemplate(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getRecurringTemplateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'templateId' => 'null'
        };

        OASClient client;
        OASRecurringTemplateApi api;
        OASRecurringTemplate response;
        OASRecurringTemplate expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRecurringTemplateApi(client);

        js = JSON.serialize(OASRecurringTemplate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecurringTemplate.getExample();
        response = (OASRecurringTemplate) api.getRecurringTemplate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecurringTemplate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecurringTemplate.getExample();
        response = (OASRecurringTemplate) api.getRecurringTemplate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRecurringTemplate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRecurringTemplate.getExample();
        response = (OASRecurringTemplate) api.getRecurringTemplate(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listRecurringTemplatesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASRecurringTemplateApi api;
        List<OASRecurringTemplate> response;
        List<OASRecurringTemplate> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRecurringTemplateApi(client);

        js = JSON.serialize(new List<OASRecurringTemplate>{OASRecurringTemplate.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASRecurringTemplate>{OASRecurringTemplate.getExample()};
        response = (List<OASRecurringTemplate>) api.listRecurringTemplates();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASRecurringTemplate>{OASRecurringTemplate.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASRecurringTemplate>{OASRecurringTemplate.getExample()};
        response = (List<OASRecurringTemplate>) api.listRecurringTemplates();
        System.assertEquals(expectedResponse, response);
    }
}