@isTest
private class OASGewerbesteuerApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void gewerbesteuerApiTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'year' => '',
            'hebesatz' => 'null',
            'gewerbeertrag' => 'null',
            'country' => 'null',
            'gemeindeschluessel' => 'null'
        };

        OASClient client;
        OASGewerbesteuerApi api;
        OASGewerbesteuerErgebnis response;
        OASGewerbesteuerErgebnis expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGewerbesteuerApi(client);

        js = JSON.serialize(OASGewerbesteuerErgebnis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGewerbesteuerErgebnis.getExample();
        response = (OASGewerbesteuerErgebnis) api.gewerbesteuerApi(params);
        System.assertEquals(expectedResponse, response);
    }
}