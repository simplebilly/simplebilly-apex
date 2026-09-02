@isTest
private class OASShipmentApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createShipmentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSShipment' => ''
        };

        OASClient client;
        OASShipmentApi api;
        OASShipment response;
        OASShipment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShipmentApi(client);

        js = JSON.serialize(OASShipment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShipment.getExample();
        response = (OASShipment) api.createShipment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShipment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShipment.getExample();
        response = (OASShipment) api.createShipment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShipment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShipment.getExample();
        response = (OASShipment) api.createShipment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Create a real shipment for an order: calls the configured carrier\&#39;s label\nAPI, stores the returned tracking/label on a new shipment row, and marks\nthe order as shipped.
     *
     * 
     */
    @isTest
    private static void createShipmentFromOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'orderNumber' => 'null',
            'oaSCreateShipmentRequest' => ''
        };

        OASClient client;
        OASShipmentApi api;
        OASShipment response;
        OASShipment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShipmentApi(client);

        js = JSON.serialize(OASShipment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShipment.getExample();
        response = (OASShipment) api.createShipmentFromOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShipment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShipment.getExample();
        response = (OASShipment) api.createShipmentFromOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShipment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShipment.getExample();
        response = (OASShipment) api.createShipmentFromOrder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteShipmentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'shipmentId' => 'null'
        };

        OASClient client;
        OASShipmentApi api;
        String js = '';

        client = new OASClient();
        api = new OASShipmentApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteShipment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteShipment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getShipmentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'shipmentId' => 'null'
        };

        OASClient client;
        OASShipmentApi api;
        OASShipment response;
        OASShipment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShipmentApi(client);

        js = JSON.serialize(OASShipment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShipment.getExample();
        response = (OASShipment) api.getShipment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShipment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShipment.getExample();
        response = (OASShipment) api.getShipment(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShipment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShipment.getExample();
        response = (OASShipment) api.getShipment(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listShipmentsTest() {
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
        OASShipmentApi api;
        List<OASShipment> response;
        List<OASShipment> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShipmentApi(client);

        js = JSON.serialize(new List<OASShipment>{OASShipment.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASShipment>{OASShipment.getExample()};
        response = (List<OASShipment>) api.listShipments(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASShipment>{OASShipment.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASShipment>{OASShipment.getExample()};
        response = (List<OASShipment>) api.listShipments(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASShipment>{OASShipment.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASShipment>{OASShipment.getExample()};
        response = (List<OASShipment>) api.listShipments(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Customer-facing tracking lookup: order number + email → shipment status and\nlive carrier events. No auth (public storefront API).
     *
     * 
     */
    @isTest
    private static void trackOrderPublicTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSTrackOrderRequest' => ''
        };

        OASClient client;
        OASShipmentApi api;
        OASTrackOrderResponse response;
        OASTrackOrderResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShipmentApi(client);

        js = JSON.serialize(OASTrackOrderResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTrackOrderResponse.getExample();
        response = (OASTrackOrderResponse) api.trackOrderPublic(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTrackOrderResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTrackOrderResponse.getExample();
        response = (OASTrackOrderResponse) api.trackOrderPublic(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTrackOrderResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTrackOrderResponse.getExample();
        response = (OASTrackOrderResponse) api.trackOrderPublic(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void trackShipmentApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'shipmentId' => 'null'
        };

        OASClient client;
        OASShipmentApi api;
        OASTrackingInfo response;
        OASTrackingInfo expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShipmentApi(client);

        js = JSON.serialize(OASTrackingInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTrackingInfo.getExample();
        response = (OASTrackingInfo) api.trackShipmentApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTrackingInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTrackingInfo.getExample();
        response = (OASTrackingInfo) api.trackShipmentApi(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTrackingInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTrackingInfo.getExample();
        response = (OASTrackingInfo) api.trackShipmentApi(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateShipmentStatusTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'shipmentId' => 'null',
            'oaSShipmentStatusUpdate' => ''
        };

        OASClient client;
        OASShipmentApi api;
        OASShipment response;
        OASShipment expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASShipmentApi(client);

        js = JSON.serialize(OASShipment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShipment.getExample();
        response = (OASShipment) api.updateShipmentStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShipment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShipment.getExample();
        response = (OASShipment) api.updateShipmentStatus(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASShipment.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASShipment.getExample();
        response = (OASShipment) api.updateShipmentStatus(params);
        System.assertEquals(expectedResponse, response);
    }
}