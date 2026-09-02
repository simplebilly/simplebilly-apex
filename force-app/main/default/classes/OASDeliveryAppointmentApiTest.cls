@isTest
private class OASDeliveryAppointmentApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createDeliveryAppointmentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSDeliveryAppointmentCreate' => ''
        };

        OASClient client;
        OASDeliveryAppointmentApi api;
        OASDeliveryAppointment response;
        OASDeliveryAppointment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryAppointmentApi(client);

        js = JSON.serialize(OASDeliveryAppointment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryAppointment.getExample();
        response = (OASDeliveryAppointment) api.createDeliveryAppointment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryAppointment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryAppointment.getExample();
        response = (OASDeliveryAppointment) api.createDeliveryAppointment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryAppointment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryAppointment.getExample();
        response = (OASDeliveryAppointment) api.createDeliveryAppointment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteDeliveryAppointmentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'appointmentId' => 'null'
        };

        OASClient client;
        OASDeliveryAppointmentApi api;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryAppointmentApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteDeliveryAppointment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteDeliveryAppointment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getDeliveryAppointmentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'appointmentId' => 'null'
        };

        OASClient client;
        OASDeliveryAppointmentApi api;
        OASDeliveryAppointment response;
        OASDeliveryAppointment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryAppointmentApi(client);

        js = JSON.serialize(OASDeliveryAppointment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryAppointment.getExample();
        response = (OASDeliveryAppointment) api.getDeliveryAppointment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryAppointment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryAppointment.getExample();
        response = (OASDeliveryAppointment) api.getDeliveryAppointment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryAppointment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryAppointment.getExample();
        response = (OASDeliveryAppointment) api.getDeliveryAppointment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Supplier/carrier checks appointment status (public, no auth). The\nappointment is only revealed when email AND token match.
     *
     * 
     */
    @isTest
    private static void getPublicDeliveryAppointmentStatusTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'appointmentId' => 'null',
            'email' => 'null',
            'token' => 'null'
        };

        OASClient client;
        OASDeliveryAppointmentApi api;
        OASPublicDeliveryAppointmentStatusRe response;
        OASPublicDeliveryAppointmentStatusRe expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryAppointmentApi(client);

        js = JSON.serialize(OASPublicDeliveryAppointmentStatusRe.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPublicDeliveryAppointmentStatusRe.getExample();
        response = (OASPublicDeliveryAppointmentStatusRe) api.getPublicDeliveryAppointmentStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPublicDeliveryAppointmentStatusRe.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPublicDeliveryAppointmentStatusRe.getExample();
        response = (OASPublicDeliveryAppointmentStatusRe) api.getPublicDeliveryAppointmentStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPublicDeliveryAppointmentStatusRe.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPublicDeliveryAppointmentStatusRe.getExample();
        response = (OASPublicDeliveryAppointmentStatusRe) api.getPublicDeliveryAppointmentStatus(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listDeliveryAppointmentsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'status' => 'null',
            'warehouseId' => 'null',
            'r_from' => Date.newInstance(1960, 2, 17),
            'to' => Date.newInstance(1960, 2, 17)
        };

        OASClient client;
        OASDeliveryAppointmentApi api;
        List<OASDeliveryAppointment> response;
        List<OASDeliveryAppointment> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryAppointmentApi(client);

        js = JSON.serialize(new List<OASDeliveryAppointment>{OASDeliveryAppointment.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDeliveryAppointment>{OASDeliveryAppointment.getExample()};
        response = (List<OASDeliveryAppointment>) api.listDeliveryAppointments(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASDeliveryAppointment>{OASDeliveryAppointment.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDeliveryAppointment>{OASDeliveryAppointment.getExample()};
        response = (List<OASDeliveryAppointment>) api.listDeliveryAppointments(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Supplier/carrier requests an inbound delivery slot (public, no auth).\nThe tenant is derived from the warehouse found by &#x60;code&#x60; — never from\nthe request.
     *
     * 
     */
    @isTest
    private static void requestPublicDeliveryAppointmentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSPublicDeliveryAppointmentRequest' => ''
        };

        OASClient client;
        OASDeliveryAppointmentApi api;
        OASPublicDeliveryAppointmentResponse response;
        OASPublicDeliveryAppointmentResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryAppointmentApi(client);

        js = JSON.serialize(OASPublicDeliveryAppointmentResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPublicDeliveryAppointmentResponse.getExample();
        response = (OASPublicDeliveryAppointmentResponse) api.requestPublicDeliveryAppointment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPublicDeliveryAppointmentResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPublicDeliveryAppointmentResponse.getExample();
        response = (OASPublicDeliveryAppointmentResponse) api.requestPublicDeliveryAppointment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPublicDeliveryAppointmentResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPublicDeliveryAppointmentResponse.getExample();
        response = (OASPublicDeliveryAppointmentResponse) api.requestPublicDeliveryAppointment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateDeliveryAppointmentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'appointmentId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASDeliveryAppointmentApi api;
        OASDeliveryAppointment response;
        OASDeliveryAppointment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryAppointmentApi(client);

        js = JSON.serialize(OASDeliveryAppointment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryAppointment.getExample();
        response = (OASDeliveryAppointment) api.updateDeliveryAppointment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryAppointment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryAppointment.getExample();
        response = (OASDeliveryAppointment) api.updateDeliveryAppointment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryAppointment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryAppointment.getExample();
        response = (OASDeliveryAppointment) api.updateDeliveryAppointment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryAppointment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryAppointment.getExample();
        response = (OASDeliveryAppointment) api.updateDeliveryAppointment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateDeliveryAppointmentStatusTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'appointmentId' => 'null',
            'oaSAppointmentStatusUpdate' => ''
        };

        OASClient client;
        OASDeliveryAppointmentApi api;
        OASDeliveryAppointment response;
        OASDeliveryAppointment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDeliveryAppointmentApi(client);

        js = JSON.serialize(OASDeliveryAppointment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryAppointment.getExample();
        response = (OASDeliveryAppointment) api.updateDeliveryAppointmentStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryAppointment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryAppointment.getExample();
        response = (OASDeliveryAppointment) api.updateDeliveryAppointmentStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryAppointment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryAppointment.getExample();
        response = (OASDeliveryAppointment) api.updateDeliveryAppointmentStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeliveryAppointment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeliveryAppointment.getExample();
        response = (OASDeliveryAppointment) api.updateDeliveryAppointmentStatus(params);
        System.assertEquals(expectedResponse, response);
    }
}