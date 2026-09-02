@isTest
private class OASNotificationsApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteNotificationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASNotificationsApi api;
        String js = '';

        client = new OASClient();
        api = new OASNotificationsApi(client);
        api.deleteNotification(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listNotificationsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASNotificationsApi api;
        List<OASNotificationDto> response;
        List<OASNotificationDto> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASNotificationsApi(client);

        js = JSON.serialize(new List<OASNotificationDto>{OASNotificationDto.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASNotificationDto>{OASNotificationDto.getExample()};
        response = (List<OASNotificationDto>) api.listNotifications();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void markAllReadTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASNotificationsApi api;
        Long response;
        Long expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASNotificationsApi(client);
        api.markAllRead();
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void markAsReadTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASNotificationsApi api;
        String js = '';

        client = new OASClient();
        api = new OASNotificationsApi(client);
        api.markAsRead(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void unreadCountTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASNotificationsApi api;
        Long response;
        Long expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASNotificationsApi(client);
        api.unreadCount();
    }
}