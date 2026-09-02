@isTest
private class OASProductAttributeApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void createProductAttributeTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSProductAttributeCreate' => ''
        };

        OASClient client;
        OASProductAttributeApi api;
        OASProductAttribute response;
        OASProductAttribute expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductAttributeApi(client);

        js = JSON.serialize(OASProductAttribute.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductAttribute.getExample();
        response = (OASProductAttribute) api.createProductAttribute(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductAttribute.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductAttribute.getExample();
        response = (OASProductAttribute) api.createProductAttribute(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductAttribute.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductAttribute.getExample();
        response = (OASProductAttribute) api.createProductAttribute(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void deleteProductAttributeTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'attributeId' => 'null'
        };

        OASClient client;
        OASProductAttributeApi api;
        String js = '';

        client = new OASClient();
        api = new OASProductAttributeApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteProductAttribute(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.deleteProductAttribute(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getProductAttributeTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'attributeId' => 'null'
        };

        OASClient client;
        OASProductAttributeApi api;
        OASProductAttribute response;
        OASProductAttribute expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductAttributeApi(client);

        js = JSON.serialize(OASProductAttribute.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductAttribute.getExample();
        response = (OASProductAttribute) api.getProductAttribute(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductAttribute.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductAttribute.getExample();
        response = (OASProductAttribute) api.getProductAttribute(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductAttribute.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductAttribute.getExample();
        response = (OASProductAttribute) api.getProductAttribute(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void listProductAttributesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'page' => '',
            'pageSize' => '',
            'productId' => 'null',
            'isFilterable' => '',
            'search' => 'null'
        };

        OASClient client;
        OASProductAttributeApi api;
        List<OASProductAttribute> response;
        List<OASProductAttribute> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductAttributeApi(client);

        js = JSON.serialize(new List<OASProductAttribute>{OASProductAttribute.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProductAttribute>{OASProductAttribute.getExample()};
        response = (List<OASProductAttribute>) api.listProductAttributes(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASProductAttribute>{OASProductAttribute.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProductAttribute>{OASProductAttribute.getExample()};
        response = (List<OASProductAttribute>) api.listProductAttributes(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void updateProductAttributeTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'attributeId' => 'null',
            'oaSProductAttributeUpdate' => ''
        };

        OASClient client;
        OASProductAttributeApi api;
        OASProductAttribute response;
        OASProductAttribute expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProductAttributeApi(client);

        js = JSON.serialize(OASProductAttribute.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductAttribute.getExample();
        response = (OASProductAttribute) api.updateProductAttribute(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductAttribute.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductAttribute.getExample();
        response = (OASProductAttribute) api.updateProductAttribute(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductAttribute.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductAttribute.getExample();
        response = (OASProductAttribute) api.updateProductAttribute(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductAttribute.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductAttribute.getExample();
        response = (OASProductAttribute) api.updateProductAttribute(params);
        System.assertEquals(expectedResponse, response);
    }
}