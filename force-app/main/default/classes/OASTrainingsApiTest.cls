@isTest
private class OASTrainingsApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void getMyTrainingsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASTrainingsApi api;
        List<OASMyTrainingItem> response;
        List<OASMyTrainingItem> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASTrainingsApi(client);

        js = JSON.serialize(new List<OASMyTrainingItem>{OASMyTrainingItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASMyTrainingItem>{OASMyTrainingItem.getExample()};
        response = (List<OASMyTrainingItem>) api.getMyTrainings();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASMyTrainingItem>{OASMyTrainingItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASMyTrainingItem>{OASMyTrainingItem.getExample()};
        response = (List<OASMyTrainingItem>) api.getMyTrainings();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getTrainingContentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'code' => 'null'
        };

        OASClient client;
        OASTrainingsApi api;
        OASTrainingContent response;
        OASTrainingContent expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASTrainingsApi(client);

        js = JSON.serialize(OASTrainingContent.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTrainingContent.getExample();
        response = (OASTrainingContent) api.getTrainingContent(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTrainingContent.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTrainingContent.getExample();
        response = (OASTrainingContent) api.getTrainingContent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getTrainingOverviewTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASTrainingsApi api;
        List<OASHrTrainingOverview> response;
        List<OASHrTrainingOverview> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASTrainingsApi(client);

        js = JSON.serialize(new List<OASHrTrainingOverview>{OASHrTrainingOverview.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASHrTrainingOverview>{OASHrTrainingOverview.getExample()};
        response = (List<OASHrTrainingOverview>) api.getTrainingOverview();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void submitTrainingResultTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSSubmitResultDto' => ''
        };

        OASClient client;
        OASTrainingsApi api;
        OASSubmitResultResponse response;
        OASSubmitResultResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASTrainingsApi(client);

        js = JSON.serialize(OASSubmitResultResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSubmitResultResponse.getExample();
        response = (OASSubmitResultResponse) api.submitTrainingResult(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSubmitResultResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSubmitResultResponse.getExample();
        response = (OASSubmitResultResponse) api.submitTrainingResult(params);
        System.assertEquals(expectedResponse, response);
    }
}