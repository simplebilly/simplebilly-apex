@isTest
private class OASEmailTemplateApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createEmailTemplateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSEmailTemplateCreate' => ''
        };

        OASClient client;
        OASEmailTemplateApi api;
        OASEmailTemplate response;
        OASEmailTemplate expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEmailTemplateApi(client);

        js = JSON.serialize(OASEmailTemplate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmailTemplate.getExample();
        response = (OASEmailTemplate) api.createEmailTemplate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEmailTemplate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmailTemplate.getExample();
        response = (OASEmailTemplate) api.createEmailTemplate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEmailTemplate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmailTemplate.getExample();
        response = (OASEmailTemplate) api.createEmailTemplate(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteEmailTemplateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'emailTemplateId' => 'null'
        };

        OASClient client;
        OASEmailTemplateApi api;
        String js = '';

        client = new OASClient();
        api = new OASEmailTemplateApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteEmailTemplate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteEmailTemplate(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getEmailTemplateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'emailTemplateId' => 'null'
        };

        OASClient client;
        OASEmailTemplateApi api;
        OASEmailTemplate response;
        OASEmailTemplate expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEmailTemplateApi(client);

        js = JSON.serialize(OASEmailTemplate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmailTemplate.getExample();
        response = (OASEmailTemplate) api.getEmailTemplate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEmailTemplate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmailTemplate.getExample();
        response = (OASEmailTemplate) api.getEmailTemplate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEmailTemplate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmailTemplate.getExample();
        response = (OASEmailTemplate) api.getEmailTemplate(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listEmailTemplatesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'status' => 'null',
            'search' => 'null'
        };

        OASClient client;
        OASEmailTemplateApi api;
        List<OASEmailTemplate> response;
        List<OASEmailTemplate> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEmailTemplateApi(client);

        js = JSON.serialize(new List<OASEmailTemplate>{OASEmailTemplate.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASEmailTemplate>{OASEmailTemplate.getExample()};
        response = (List<OASEmailTemplate>) api.listEmailTemplates(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASEmailTemplate>{OASEmailTemplate.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASEmailTemplate>{OASEmailTemplate.getExample()};
        response = (List<OASEmailTemplate>) api.listEmailTemplates(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void renderEmailTemplateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'emailTemplateId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASEmailTemplateApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEmailTemplateApi(client);

        js = JSON.serialize(oas_any_type_not_mapped.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = oas_any_type_not_mapped.getExample();
        response = (oas_any_type_not_mapped) api.renderEmailTemplate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(oas_any_type_not_mapped.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = oas_any_type_not_mapped.getExample();
        response = (oas_any_type_not_mapped) api.renderEmailTemplate(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateEmailTemplateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'emailTemplateId' => 'null',
            'oaSEmailTemplateUpdate' => ''
        };

        OASClient client;
        OASEmailTemplateApi api;
        OASEmailTemplate response;
        OASEmailTemplate expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEmailTemplateApi(client);

        js = JSON.serialize(OASEmailTemplate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmailTemplate.getExample();
        response = (OASEmailTemplate) api.updateEmailTemplate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEmailTemplate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmailTemplate.getExample();
        response = (OASEmailTemplate) api.updateEmailTemplate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEmailTemplate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmailTemplate.getExample();
        response = (OASEmailTemplate) api.updateEmailTemplate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASEmailTemplate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASEmailTemplate.getExample();
        response = (OASEmailTemplate) api.updateEmailTemplate(params);
        System.assertEquals(expectedResponse, response);
    }
}