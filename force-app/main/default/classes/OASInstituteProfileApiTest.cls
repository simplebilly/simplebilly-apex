@isTest
private class OASInstituteProfileApiTest {
    /**
     * Current institute profile (created with defaults when missing).
     *
     * 
     */
    @isTest
    private static void getInstituteProfileTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASInstituteProfileApi api;
        OASInstituteProfile response;
        OASInstituteProfile expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASInstituteProfileApi(client);

        js = JSON.serialize(OASInstituteProfile.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInstituteProfile.getExample();
        response = (OASInstituteProfile) api.getInstituteProfile();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInstituteProfile.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInstituteProfile.getExample();
        response = (OASInstituteProfile) api.getInstituteProfile();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update the institute profile (institute_type and/or kapitalmarktorientiert).
     *
     * 
     */
    @isTest
    private static void updateInstituteProfileTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSInstituteProfileUpdate' => ''
        };

        OASClient client;
        OASInstituteProfileApi api;
        OASInstituteProfile response;
        OASInstituteProfile expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASInstituteProfileApi(client);

        js = JSON.serialize(OASInstituteProfile.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInstituteProfile.getExample();
        response = (OASInstituteProfile) api.updateInstituteProfile(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInstituteProfile.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInstituteProfile.getExample();
        response = (OASInstituteProfile) api.updateInstituteProfile(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASInstituteProfile.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASInstituteProfile.getExample();
        response = (OASInstituteProfile) api.updateInstituteProfile(params);
        System.assertEquals(expectedResponse, response);
    }
}