@isTest
private class OASPackingApiTest {
    /**
     * Mark packing as complete and transition order to shipped
     *
     * 
     */
    @isTest
    private static void completePackingTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'orderNumber' => 'null',
            'oaSPackingCompleteRequest' => ''
        };

        OASClient client;
        OASPackingApi api;
        OASPackingCompleteResponse response;
        OASPackingCompleteResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPackingApi(client);

        js = JSON.serialize(OASPackingCompleteResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPackingCompleteResponse.getExample();
        response = (OASPackingCompleteResponse) api.completePacking(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPackingCompleteResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPackingCompleteResponse.getExample();
        response = (OASPackingCompleteResponse) api.completePacking(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get the packing queue - orders ready for packing
     *
     * 
     */
    @isTest
    private static void getPackingQueueTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'search' => 'null'
        };

        OASClient client;
        OASPackingApi api;
        OASPackingQueue response;
        OASPackingQueue expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPackingApi(client);

        js = JSON.serialize(OASPackingQueue.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPackingQueue.getExample();
        response = (OASPackingQueue) api.getPackingQueue(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPackingQueue.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPackingQueue.getExample();
        response = (OASPackingQueue) api.getPackingQueue(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Print delivery note (Lieferschein) for an order
     *
     * 
     */
    @isTest
    private static void printDeliveryNoteTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'orderNumber' => 'null'
        };

        OASClient client;
        OASPackingApi api;
        OASPrintDeliveryNoteResponse response;
        OASPrintDeliveryNoteResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPackingApi(client);

        js = JSON.serialize(OASPrintDeliveryNoteResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPrintDeliveryNoteResponse.getExample();
        response = (OASPrintDeliveryNoteResponse) api.printDeliveryNote(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPrintDeliveryNoteResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPrintDeliveryNoteResponse.getExample();
        response = (OASPrintDeliveryNoteResponse) api.printDeliveryNote(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Print shipping label for an order
     *
     * 
     */
    @isTest
    private static void printLabelTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'orderNumber' => 'null'
        };

        OASClient client;
        OASPackingApi api;
        OASPrintLabelResponse response;
        OASPrintLabelResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPackingApi(client);

        js = JSON.serialize(OASPrintLabelResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPrintLabelResponse.getExample();
        response = (OASPrintLabelResponse) api.printLabel(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPrintLabelResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPrintLabelResponse.getExample();
        response = (OASPrintLabelResponse) api.printLabel(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Record video of packing process
     *
     * 
     */
    @isTest
    private static void recordPackingVideoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'orderNumber' => 'null',
            'body' => ''
        };

        OASClient client;
        OASPackingApi api;
        OASPackingVideoResponse response;
        OASPackingVideoResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPackingApi(client);

        js = JSON.serialize(OASPackingVideoResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPackingVideoResponse.getExample();
        response = (OASPackingVideoResponse) api.recordPackingVideo(params);
        System.assertEquals(expectedResponse, response);
    }
}