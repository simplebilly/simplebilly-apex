@isTest
private class OASCreateTicketRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreateTicketRequest createTicketRequest1 = OASCreateTicketRequest.getExample();
        OASCreateTicketRequest createTicketRequest2 = createTicketRequest1;
        OASCreateTicketRequest createTicketRequest3 = new OASCreateTicketRequest();
        OASCreateTicketRequest createTicketRequest4 = createTicketRequest3;

        System.assert(createTicketRequest1.equals(createTicketRequest2));
        System.assert(createTicketRequest2.equals(createTicketRequest1));
        System.assert(createTicketRequest1.equals(createTicketRequest1));
        System.assert(createTicketRequest3.equals(createTicketRequest4));
        System.assert(createTicketRequest4.equals(createTicketRequest3));
        System.assert(createTicketRequest3.equals(createTicketRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateTicketRequest createTicketRequest1 = OASCreateTicketRequest.getExample();
        OASCreateTicketRequest createTicketRequest2 = OASCreateTicketRequest.getExample();
        OASCreateTicketRequest createTicketRequest3 = new OASCreateTicketRequest();
        OASCreateTicketRequest createTicketRequest4 = new OASCreateTicketRequest();

        System.assert(createTicketRequest1.equals(createTicketRequest2));
        System.assert(createTicketRequest2.equals(createTicketRequest1));
        System.assert(createTicketRequest3.equals(createTicketRequest4));
        System.assert(createTicketRequest4.equals(createTicketRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateTicketRequest createTicketRequest1 = OASCreateTicketRequest.getExample();
        OASCreateTicketRequest createTicketRequest2 = new OASCreateTicketRequest();

        System.assertEquals(false, createTicketRequest1.equals('foo'));
        System.assertEquals(false, createTicketRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateTicketRequest createTicketRequest1 = OASCreateTicketRequest.getExample();
        OASCreateTicketRequest createTicketRequest2 = new OASCreateTicketRequest();
        OASCreateTicketRequest createTicketRequest3;

        System.assertEquals(false, createTicketRequest1.equals(createTicketRequest3));
        System.assertEquals(false, createTicketRequest2.equals(createTicketRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateTicketRequest createTicketRequest1 = OASCreateTicketRequest.getExample();
        OASCreateTicketRequest createTicketRequest2 = new OASCreateTicketRequest();

        System.assertEquals(createTicketRequest1.hashCode(), createTicketRequest1.hashCode());
        System.assertEquals(createTicketRequest2.hashCode(), createTicketRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateTicketRequest createTicketRequest1 = OASCreateTicketRequest.getExample();
        OASCreateTicketRequest createTicketRequest2 = OASCreateTicketRequest.getExample();
        OASCreateTicketRequest createTicketRequest3 = new OASCreateTicketRequest();
        OASCreateTicketRequest createTicketRequest4 = new OASCreateTicketRequest();

        System.assert(createTicketRequest1.equals(createTicketRequest2));
        System.assert(createTicketRequest3.equals(createTicketRequest4));
        System.assertEquals(createTicketRequest1.hashCode(), createTicketRequest2.hashCode());
        System.assertEquals(createTicketRequest3.hashCode(), createTicketRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateTicketRequest createTicketRequest = new OASCreateTicketRequest();
        Map<String, String> x-property-mappings = createTicketRequest.getx-property-mappings();
        System.assertEquals('channelId', x-property-mappings.get('channel_id'));
        System.assertEquals('channelType', x-property-mappings.get('channel_type'));
        System.assertEquals('customerEmail', x-property-mappings.get('customer_email'));
        System.assertEquals('customerId', x-property-mappings.get('customer_id'));
        System.assertEquals('customerName', x-property-mappings.get('customer_name'));
        System.assertEquals('externalId', x-property-mappings.get('external_id'));
        System.assertEquals('messageBody', x-property-mappings.get('message_body'));
        System.assertEquals('orderRef', x-property-mappings.get('order_ref'));
    }
}
