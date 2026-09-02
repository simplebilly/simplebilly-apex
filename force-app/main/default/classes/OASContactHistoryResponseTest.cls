@isTest
private class OASContactHistoryResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASContactHistoryResponse contactHistoryResponse1 = OASContactHistoryResponse.getExample();
        OASContactHistoryResponse contactHistoryResponse2 = contactHistoryResponse1;
        OASContactHistoryResponse contactHistoryResponse3 = new OASContactHistoryResponse();
        OASContactHistoryResponse contactHistoryResponse4 = contactHistoryResponse3;

        System.assert(contactHistoryResponse1.equals(contactHistoryResponse2));
        System.assert(contactHistoryResponse2.equals(contactHistoryResponse1));
        System.assert(contactHistoryResponse1.equals(contactHistoryResponse1));
        System.assert(contactHistoryResponse3.equals(contactHistoryResponse4));
        System.assert(contactHistoryResponse4.equals(contactHistoryResponse3));
        System.assert(contactHistoryResponse3.equals(contactHistoryResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASContactHistoryResponse contactHistoryResponse1 = OASContactHistoryResponse.getExample();
        OASContactHistoryResponse contactHistoryResponse2 = OASContactHistoryResponse.getExample();
        OASContactHistoryResponse contactHistoryResponse3 = new OASContactHistoryResponse();
        OASContactHistoryResponse contactHistoryResponse4 = new OASContactHistoryResponse();

        System.assert(contactHistoryResponse1.equals(contactHistoryResponse2));
        System.assert(contactHistoryResponse2.equals(contactHistoryResponse1));
        System.assert(contactHistoryResponse3.equals(contactHistoryResponse4));
        System.assert(contactHistoryResponse4.equals(contactHistoryResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASContactHistoryResponse contactHistoryResponse1 = OASContactHistoryResponse.getExample();
        OASContactHistoryResponse contactHistoryResponse2 = new OASContactHistoryResponse();

        System.assertEquals(false, contactHistoryResponse1.equals('foo'));
        System.assertEquals(false, contactHistoryResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASContactHistoryResponse contactHistoryResponse1 = OASContactHistoryResponse.getExample();
        OASContactHistoryResponse contactHistoryResponse2 = new OASContactHistoryResponse();
        OASContactHistoryResponse contactHistoryResponse3;

        System.assertEquals(false, contactHistoryResponse1.equals(contactHistoryResponse3));
        System.assertEquals(false, contactHistoryResponse2.equals(contactHistoryResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASContactHistoryResponse contactHistoryResponse1 = OASContactHistoryResponse.getExample();
        OASContactHistoryResponse contactHistoryResponse2 = new OASContactHistoryResponse();

        System.assertEquals(contactHistoryResponse1.hashCode(), contactHistoryResponse1.hashCode());
        System.assertEquals(contactHistoryResponse2.hashCode(), contactHistoryResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASContactHistoryResponse contactHistoryResponse1 = OASContactHistoryResponse.getExample();
        OASContactHistoryResponse contactHistoryResponse2 = OASContactHistoryResponse.getExample();
        OASContactHistoryResponse contactHistoryResponse3 = new OASContactHistoryResponse();
        OASContactHistoryResponse contactHistoryResponse4 = new OASContactHistoryResponse();

        System.assert(contactHistoryResponse1.equals(contactHistoryResponse2));
        System.assert(contactHistoryResponse3.equals(contactHistoryResponse4));
        System.assertEquals(contactHistoryResponse1.hashCode(), contactHistoryResponse2.hashCode());
        System.assertEquals(contactHistoryResponse3.hashCode(), contactHistoryResponse4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASContactHistoryResponse contactHistoryResponse = new OASContactHistoryResponse();
        System.assertEquals(new List<OASCustomerCommunication>(), contactHistoryResponse.items);
        System.assertEquals(null, contactHistoryResponse.contactId);
        System.assertEquals(null, contactHistoryResponse.inboundCount);
        System.assertEquals(null, contactHistoryResponse.outboundCount);
    }
}
