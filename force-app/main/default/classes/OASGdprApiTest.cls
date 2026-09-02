@isTest
private class OASGdprApiTest {
    /**
     * Record DPA acceptance: sets dpa_accepted_at/by/version on the tenant\nsettings row (created with company-type defaults if missing).
     *
     * 
     */
    @isTest
    private static void acceptDpaTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSDpaAcceptRequest' => ''
        };

        OASClient client;
        OASGdprApi api;
        OASDpaStatus response;
        OASDpaStatus expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGdprApi(client);

        js = JSON.serialize(OASDpaStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDpaStatus.getExample();
        response = (OASDpaStatus) api.acceptDpa(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDpaStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDpaStatus.getExample();
        response = (OASDpaStatus) api.acceptDpa(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Erase ALL personal data of the tenant (TOS §11: deletion 90 days after\ntermination).
     *
     * Anonymizes every contact, anonymizes personal fields on bookkeeping\nrecords (orders/invoices/payments keep amounts and dates for GoBD),\nremoves the tenant linkage of the (global, saasy-framework) users and\nmarks the erasure on &#x60;tenant_settings.gdpr_erased_at&#x60;. No row is\nphysically deleted. The audit triggers on the touched tables record\nwho/when.
     */
    @isTest
    private static void accountErasureTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASGdprApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGdprApi(client);

        js = JSON.serialize(oas_any_type_not_mapped.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = oas_any_type_not_mapped.getExample();
        response = (oas_any_type_not_mapped) api.accountErasure();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Anonymize + soft-delete a contact: personal attributes are cleared, the\nrecord itself is kept for GoBD retention (Art. 17(3)(e) DSGVO). The audit\ntrigger on &#x60;contacts&#x60; already records who/when.
     *
     * 
     */
    @isTest
    private static void erasureContactTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'contactId' => 'null'
        };

        OASClient client;
        OASGdprApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGdprApi(client);

        js = JSON.serialize(oas_any_type_not_mapped.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = oas_any_type_not_mapped.getExample();
        response = (oas_any_type_not_mapped) api.erasureContact(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Art. 15 data-subject access export for a contact.
     *
     * Returns the contact itself plus the tenant-scoped rows linked to it.\n\n## Relations\nThe &#x60;customers&#x60;/&#x60;orders&#x60;/&#x60;invoices&#x60;/&#x60;payments&#x60; tables have no FK to\n&#x60;contacts&#x60;; they are linked through the &#x60;customer_id&#x60; column, which per\nthe app\&#39;s conventions holds one of:\n- the admin customer\&#39;s &#x60;customer_id&#x60; (a UUID, often the same value as\n  the contact\&#39;s &#x60;contact_id&#x60;/&#x60;customer_number&#x60;),\n- the buyer\&#39;s email for shop orders, or\n- the marketplace\&#39;s external customer id for plugin orders.\n\nThe export therefore matches the contact\&#39;s identifiers (&#x60;contact_id&#x60;,\n&#x60;customer_number&#x60;, &#x60;external_id&#x60;, &#x60;email&#x60;) plus any resolved customer ids\nagainst &#x60;customer_id&#x60;. &#x60;delivery_notes&#x60; and &#x60;customer_communications&#x60;\nreference contacts directly via &#x60;contact_id&#x60;. Soft-deleted rows are\nincluded (their data is still processed and retained for GoBD).\nRelations that genuinely do not exist for a contact stay empty but the\nkey is always present.
     */
    @isTest
    private static void exportContactDataTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'contactId' => 'null'
        };

        OASClient client;
        OASGdprApi api;
        oas_any_type_not_mapped response;
        oas_any_type_not_mapped expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGdprApi(client);

        js = JSON.serialize(oas_any_type_not_mapped.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = oas_any_type_not_mapped.getExample();
        response = (oas_any_type_not_mapped) api.exportContactData(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Export the current user\&#39;s personal data (GDPR Art. 15/20).
     *
     * No admin permission required: a user always exports their own data.
     */
    @isTest
    private static void exportGdprTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASGdprApi api;
        OASApiResponseGdprExport response;
        OASApiResponseGdprExport expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGdprApi(client);

        js = JSON.serialize(OASApiResponseGdprExport.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASApiResponseGdprExport.getExample();
        response = (OASApiResponseGdprExport) api.exportGdpr();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Current DPA acceptance status (from tenant_settings).
     *
     * 
     */
    @isTest
    private static void getDpaTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASGdprApi api;
        OASDpaStatus response;
        OASDpaStatus expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGdprApi(client);

        js = JSON.serialize(OASDpaStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDpaStatus.getExample();
        response = (OASDpaStatus) api.getDpa();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDpaStatus.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDpaStatus.getExample();
        response = (OASDpaStatus) api.getDpa();
        System.assertEquals(expectedResponse, response);
    }
}