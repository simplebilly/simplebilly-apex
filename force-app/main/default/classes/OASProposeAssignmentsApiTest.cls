@isTest
private class OASProposeAssignmentsApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void proposeAssignmentsApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'minConfidence' => '',
            'customerId' => 'null'
        };

        OASClient client;
        OASProposeAssignmentsApi api;
        List<OASProposedAssignment> response;
        List<OASProposedAssignment> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASProposeAssignmentsApi(client);

        js = JSON.serialize(new List<OASProposedAssignment>{OASProposedAssignment.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASProposedAssignment>{OASProposedAssignment.getExample()};
        response = (List<OASProposedAssignment>) api.proposeAssignmentsApi(params);
        System.assertEquals(expectedResponse, response);
    }
}