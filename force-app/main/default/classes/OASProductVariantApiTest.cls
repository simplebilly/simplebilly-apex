@isTest
private class OASProductVariantApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createProductVariantTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSProductVariant' => ''
        };

        OASClient client;
        OASProductVariantApi api;
        OASProductVariant response;
        OASProductVariant expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductVariantApi(client);

        js = JSON.serialize(OASProductVariant.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductVariant.getExample();
        response = (OASProductVariant) api.createProductVariant(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductVariant.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductVariant.getExample();
        response = (OASProductVariant) api.createProductVariant(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductVariant.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductVariant.getExample();
        response = (OASProductVariant) api.createProductVariant(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteProductVariantTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'variantId' => 'null'
        };

        OASClient client;
        OASProductVariantApi api;
        String js = '';

        client = new OASClient();
        api = new OASProductVariantApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteProductVariant(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteProductVariant(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void generateProductVariantsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSGenerateVariantsRequest' => ''
        };

        OASClient client;
        OASProductVariantApi api;
        List<OASProductVariant> response;
        List<OASProductVariant> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductVariantApi(client);

        js = JSON.serialize(new List<OASProductVariant>{OASProductVariant.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProductVariant>{OASProductVariant.getExample()};
        response = (List<OASProductVariant>) api.generateProductVariants(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASProductVariant>{OASProductVariant.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProductVariant>{OASProductVariant.getExample()};
        response = (List<OASProductVariant>) api.generateProductVariants(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASProductVariant>{OASProductVariant.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProductVariant>{OASProductVariant.getExample()};
        response = (List<OASProductVariant>) api.generateProductVariants(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getProductVariantTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'variantId' => 'null'
        };

        OASClient client;
        OASProductVariantApi api;
        OASProductVariant response;
        OASProductVariant expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductVariantApi(client);

        js = JSON.serialize(OASProductVariant.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductVariant.getExample();
        response = (OASProductVariant) api.getProductVariant(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductVariant.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductVariant.getExample();
        response = (OASProductVariant) api.getProductVariant(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductVariant.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductVariant.getExample();
        response = (OASProductVariant) api.getProductVariant(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listProductVariantsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'productId' => 'null',
            'isActive' => ''
        };

        OASClient client;
        OASProductVariantApi api;
        List<OASProductVariant> response;
        List<OASProductVariant> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductVariantApi(client);

        js = JSON.serialize(new List<OASProductVariant>{OASProductVariant.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProductVariant>{OASProductVariant.getExample()};
        response = (List<OASProductVariant>) api.listProductVariants(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASProductVariant>{OASProductVariant.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProductVariant>{OASProductVariant.getExample()};
        response = (List<OASProductVariant>) api.listProductVariants(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateProductVariantTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'variantId' => 'null',
            'body' => ''
        };

        OASClient client;
        OASProductVariantApi api;
        OASProductVariant response;
        OASProductVariant expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductVariantApi(client);

        js = JSON.serialize(OASProductVariant.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductVariant.getExample();
        response = (OASProductVariant) api.updateProductVariant(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductVariant.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductVariant.getExample();
        response = (OASProductVariant) api.updateProductVariant(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductVariant.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductVariant.getExample();
        response = (OASProductVariant) api.updateProductVariant(params);
        System.assertEquals(expectedResponse, response);
    }
}