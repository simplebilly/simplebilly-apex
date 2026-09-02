@isTest
private class OASComplianceTrainingApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createComplianceTrainingTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSComplianceTrainingCreate' => ''
        };

        OASClient client;
        OASComplianceTrainingApi api;
        OASComplianceTraining response;
        OASComplianceTraining expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASComplianceTrainingApi(client);

        js = JSON.serialize(OASComplianceTraining.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASComplianceTraining.getExample();
        response = (OASComplianceTraining) api.createComplianceTraining(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASComplianceTraining.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASComplianceTraining.getExample();
        response = (OASComplianceTraining) api.createComplianceTraining(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASComplianceTraining.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASComplianceTraining.getExample();
        response = (OASComplianceTraining) api.createComplianceTraining(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteComplianceTrainingTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASComplianceTrainingApi api;
        String js = '';

        client = new OASClient();
        api = new OASComplianceTrainingApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteComplianceTraining(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteComplianceTraining(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getComplianceTrainingTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASComplianceTrainingApi api;
        OASComplianceTraining response;
        OASComplianceTraining expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASComplianceTrainingApi(client);

        js = JSON.serialize(OASComplianceTraining.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASComplianceTraining.getExample();
        response = (OASComplianceTraining) api.getComplianceTraining(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASComplianceTraining.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASComplianceTraining.getExample();
        response = (OASComplianceTraining) api.getComplianceTraining(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASComplianceTraining.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASComplianceTraining.getExample();
        response = (OASComplianceTraining) api.getComplianceTraining(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getComplianceTrainingsTest() {
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
        OASComplianceTrainingApi api;
        List<OASComplianceTraining> response;
        List<OASComplianceTraining> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASComplianceTrainingApi(client);

        js = JSON.serialize(new List<OASComplianceTraining>{OASComplianceTraining.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASComplianceTraining>{OASComplianceTraining.getExample()};
        response = (List<OASComplianceTraining>) api.getComplianceTrainings(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASComplianceTraining>{OASComplianceTraining.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASComplianceTraining>{OASComplianceTraining.getExample()};
        response = (List<OASComplianceTraining>) api.getComplianceTrainings(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateComplianceTrainingTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'oaSComplianceTrainingUpdate' => ''
        };

        OASClient client;
        OASComplianceTrainingApi api;
        OASComplianceTraining response;
        OASComplianceTraining expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASComplianceTrainingApi(client);

        js = JSON.serialize(OASComplianceTraining.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASComplianceTraining.getExample();
        response = (OASComplianceTraining) api.updateComplianceTraining(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASComplianceTraining.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASComplianceTraining.getExample();
        response = (OASComplianceTraining) api.updateComplianceTraining(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASComplianceTraining.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASComplianceTraining.getExample();
        response = (OASComplianceTraining) api.updateComplianceTraining(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASComplianceTraining.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASComplianceTraining.getExample();
        response = (OASComplianceTraining) api.updateComplianceTraining(params);
        System.assertEquals(expectedResponse, response);
    }
}