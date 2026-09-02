@isTest
private class OASCouponApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void couponRestoreTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'couponId' => 'null'
        };

        OASClient client;
        OASCouponApi api;
        OASCoupon response;
        OASCoupon expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCouponApi(client);

        js = JSON.serialize(OASCoupon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCoupon.getExample();
        response = (OASCoupon) api.couponRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCoupon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCoupon.getExample();
        response = (OASCoupon) api.couponRestore(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCoupon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCoupon.getExample();
        response = (OASCoupon) api.couponRestore(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void createCouponTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSCouponCreate' => ''
        };

        OASClient client;
        OASCouponApi api;
        OASCoupon response;
        OASCoupon expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCouponApi(client);

        js = JSON.serialize(OASCoupon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCoupon.getExample();
        response = (OASCoupon) api.createCoupon(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCoupon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCoupon.getExample();
        response = (OASCoupon) api.createCoupon(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCoupon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCoupon.getExample();
        response = (OASCoupon) api.createCoupon(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteCouponTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'couponId' => 'null'
        };

        OASClient client;
        OASCouponApi api;
        String js = '';

        client = new OASClient();
        api = new OASCouponApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteCoupon(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteCoupon(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getCouponTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'couponId' => 'null'
        };

        OASClient client;
        OASCouponApi api;
        OASCoupon response;
        OASCoupon expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCouponApi(client);

        js = JSON.serialize(OASCoupon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCoupon.getExample();
        response = (OASCoupon) api.getCoupon(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCoupon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCoupon.getExample();
        response = (OASCoupon) api.getCoupon(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCoupon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCoupon.getExample();
        response = (OASCoupon) api.getCoupon(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listCouponsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'isActive' => '',
            'code' => 'null',
            'discountType' => 'null'
        };

        OASClient client;
        OASCouponApi api;
        List<OASCoupon> response;
        List<OASCoupon> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCouponApi(client);

        js = JSON.serialize(new List<OASCoupon>{OASCoupon.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCoupon>{OASCoupon.getExample()};
        response = (List<OASCoupon>) api.listCoupons(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASCoupon>{OASCoupon.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCoupon>{OASCoupon.getExample()};
        response = (List<OASCoupon>) api.listCoupons(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateCouponTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'couponId' => 'null',
            'oaSCouponUpdate' => ''
        };

        OASClient client;
        OASCouponApi api;
        OASCoupon response;
        OASCoupon expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCouponApi(client);

        js = JSON.serialize(OASCoupon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCoupon.getExample();
        response = (OASCoupon) api.updateCoupon(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCoupon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCoupon.getExample();
        response = (OASCoupon) api.updateCoupon(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCoupon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCoupon.getExample();
        response = (OASCoupon) api.updateCoupon(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCoupon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCoupon.getExample();
        response = (OASCoupon) api.updateCoupon(params);
        System.assertEquals(expectedResponse, response);
    }
}