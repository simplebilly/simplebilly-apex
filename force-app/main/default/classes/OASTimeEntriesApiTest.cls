@isTest
private class OASTimeEntriesApiTest {
    /**
     * Clock in for the authenticated user (resolved via their employee profile).
     *
     * 
     */
    @isTest
    private static void clockInTimeEntryTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSTimeEntryClockIn' => ''
        };

        OASClient client;
        OASTimeEntriesApi api;
        OASTimeEntryDto response;
        OASTimeEntryDto expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASTimeEntriesApi(client);

        js = JSON.serialize(OASTimeEntryDto.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTimeEntryDto.getExample();
        response = (OASTimeEntryDto) api.clockInTimeEntry(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTimeEntryDto.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTimeEntryDto.getExample();
        response = (OASTimeEntryDto) api.clockInTimeEntry(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTimeEntryDto.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTimeEntryDto.getExample();
        response = (OASTimeEntryDto) api.clockInTimeEntry(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Clock out an entry: the entry\&#39;s owner, or anyone with &#x60;time_entries:write&#x60;.
     *
     * 
     */
    @isTest
    private static void clockOutTimeEntryTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null',
            'oaSTimeEntryClockOut' => ''
        };

        OASClient client;
        OASTimeEntriesApi api;
        OASTimeEntryDto response;
        OASTimeEntryDto expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASTimeEntriesApi(client);

        js = JSON.serialize(OASTimeEntryDto.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTimeEntryDto.getExample();
        response = (OASTimeEntryDto) api.clockOutTimeEntry(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTimeEntryDto.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTimeEntryDto.getExample();
        response = (OASTimeEntryDto) api.clockOutTimeEntry(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTimeEntryDto.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTimeEntryDto.getExample();
        response = (OASTimeEntryDto) api.clockOutTimeEntry(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTimeEntryDto.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTimeEntryDto.getExample();
        response = (OASTimeEntryDto) api.clockOutTimeEntry(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASTimeEntryDto.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTimeEntryDto.getExample();
        response = (OASTimeEntryDto) api.clockOutTimeEntry(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Labor-cost report: worked hours aggregated per employee / order / day,\nvalued at the employee\&#39;s hourly cost rate.
     *
     * 
     */
    @isTest
    private static void getLaborCostsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'r_from' => Date.newInstance(1960, 2, 17),
            'to' => Date.newInstance(1960, 2, 17),
            'groupBy' => 'null'
        };

        OASClient client;
        OASTimeEntriesApi api;
        List<OASLaborCostRow> response;
        List<OASLaborCostRow> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASTimeEntriesApi(client);

        js = JSON.serialize(new List<OASLaborCostRow>{OASLaborCostRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASLaborCostRow>{OASLaborCostRow.getExample()};
        response = (List<OASLaborCostRow>) api.getLaborCosts(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASLaborCostRow>{OASLaborCostRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASLaborCostRow>{OASLaborCostRow.getExample()};
        response = (List<OASLaborCostRow>) api.getLaborCosts(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASLaborCostRow>{OASLaborCostRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASLaborCostRow>{OASLaborCostRow.getExample()};
        response = (List<OASLaborCostRow>) api.getLaborCosts(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List time entries with optional date-range / active / employee filters.
     *
     * 
     */
    @isTest
    private static void listTimeEntriesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'r_from' => Date.newInstance(1960, 2, 17),
            'to' => Date.newInstance(1960, 2, 17),
            'active' => '',
            'employeeId' => 'null'
        };

        OASClient client;
        OASTimeEntriesApi api;
        List<OASTimeEntryDto> response;
        List<OASTimeEntryDto> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASTimeEntriesApi(client);

        js = JSON.serialize(new List<OASTimeEntryDto>{OASTimeEntryDto.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTimeEntryDto>{OASTimeEntryDto.getExample()};
        response = (List<OASTimeEntryDto>) api.listTimeEntries(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASTimeEntryDto>{OASTimeEntryDto.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTimeEntryDto>{OASTimeEntryDto.getExample()};
        response = (List<OASTimeEntryDto>) api.listTimeEntries(params);
        System.assertEquals(expectedResponse, response);
    }
}