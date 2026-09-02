@isTest
private class OASDeliverableResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeliverableResponse deliverableResponse1 = OASDeliverableResponse.getExample();
        OASDeliverableResponse deliverableResponse2 = deliverableResponse1;
        OASDeliverableResponse deliverableResponse3 = new OASDeliverableResponse();
        OASDeliverableResponse deliverableResponse4 = deliverableResponse3;

        System.assert(deliverableResponse1.equals(deliverableResponse2));
        System.assert(deliverableResponse2.equals(deliverableResponse1));
        System.assert(deliverableResponse1.equals(deliverableResponse1));
        System.assert(deliverableResponse3.equals(deliverableResponse4));
        System.assert(deliverableResponse4.equals(deliverableResponse3));
        System.assert(deliverableResponse3.equals(deliverableResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeliverableResponse deliverableResponse1 = OASDeliverableResponse.getExample();
        OASDeliverableResponse deliverableResponse2 = OASDeliverableResponse.getExample();
        OASDeliverableResponse deliverableResponse3 = new OASDeliverableResponse();
        OASDeliverableResponse deliverableResponse4 = new OASDeliverableResponse();

        System.assert(deliverableResponse1.equals(deliverableResponse2));
        System.assert(deliverableResponse2.equals(deliverableResponse1));
        System.assert(deliverableResponse3.equals(deliverableResponse4));
        System.assert(deliverableResponse4.equals(deliverableResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeliverableResponse deliverableResponse1 = OASDeliverableResponse.getExample();
        OASDeliverableResponse deliverableResponse2 = new OASDeliverableResponse();

        System.assertEquals(false, deliverableResponse1.equals('foo'));
        System.assertEquals(false, deliverableResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeliverableResponse deliverableResponse1 = OASDeliverableResponse.getExample();
        OASDeliverableResponse deliverableResponse2 = new OASDeliverableResponse();
        OASDeliverableResponse deliverableResponse3;

        System.assertEquals(false, deliverableResponse1.equals(deliverableResponse3));
        System.assertEquals(false, deliverableResponse2.equals(deliverableResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeliverableResponse deliverableResponse1 = OASDeliverableResponse.getExample();
        OASDeliverableResponse deliverableResponse2 = new OASDeliverableResponse();

        System.assertEquals(deliverableResponse1.hashCode(), deliverableResponse1.hashCode());
        System.assertEquals(deliverableResponse2.hashCode(), deliverableResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeliverableResponse deliverableResponse1 = OASDeliverableResponse.getExample();
        OASDeliverableResponse deliverableResponse2 = OASDeliverableResponse.getExample();
        OASDeliverableResponse deliverableResponse3 = new OASDeliverableResponse();
        OASDeliverableResponse deliverableResponse4 = new OASDeliverableResponse();

        System.assert(deliverableResponse1.equals(deliverableResponse2));
        System.assert(deliverableResponse3.equals(deliverableResponse4));
        System.assertEquals(deliverableResponse1.hashCode(), deliverableResponse2.hashCode());
        System.assertEquals(deliverableResponse3.hashCode(), deliverableResponse4.hashCode());
    }
}
