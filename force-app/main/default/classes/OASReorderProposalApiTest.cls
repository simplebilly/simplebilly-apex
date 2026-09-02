@isTest
private class OASReorderProposalApiTest {
    /**
     * Convert a reorder proposal into a draft purchase order.
     *
     * Returns the created purchase order id. Suggested line items are generated\nwith the current reorder quantity per product.
     */
    @isTest
    private static void applyReorderProposalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'configuredOnly' => '',
            'warehouseId' => 'null'
        };

        OASClient client;
        OASReorderProposalApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASReorderProposalApi(client);

        js = JSON.serialize(oas_any_type_not_mapped.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = oas_any_type_not_mapped.getExample();
        response = (oas_any_type_not_mapped) api.applyReorderProposal(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(oas_any_type_not_mapped.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = oas_any_type_not_mapped.getExample();
        response = (oas_any_type_not_mapped) api.applyReorderProposal(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void getReorderProposalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'configuredOnly' => '',
            'warehouseId' => 'null'
        };

        OASClient client;
        OASReorderProposalApi api;
        OASReorderProposalResponse response;
        OASReorderProposalResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASReorderProposalApi(client);

        js = JSON.serialize(OASReorderProposalResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReorderProposalResponse.getExample();
        response = (OASReorderProposalResponse) api.getReorderProposal(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASReorderProposalResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASReorderProposalResponse.getExample();
        response = (OASReorderProposalResponse) api.getReorderProposal(params);
        System.assertEquals(expectedResponse, response);
    }
}