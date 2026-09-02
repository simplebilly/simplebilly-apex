@isTest
private class OASContactTimelineResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASContactTimelineResponse contactTimelineResponse1 = OASContactTimelineResponse.getExample();
        OASContactTimelineResponse contactTimelineResponse2 = contactTimelineResponse1;
        OASContactTimelineResponse contactTimelineResponse3 = new OASContactTimelineResponse();
        OASContactTimelineResponse contactTimelineResponse4 = contactTimelineResponse3;

        System.assert(contactTimelineResponse1.equals(contactTimelineResponse2));
        System.assert(contactTimelineResponse2.equals(contactTimelineResponse1));
        System.assert(contactTimelineResponse1.equals(contactTimelineResponse1));
        System.assert(contactTimelineResponse3.equals(contactTimelineResponse4));
        System.assert(contactTimelineResponse4.equals(contactTimelineResponse3));
        System.assert(contactTimelineResponse3.equals(contactTimelineResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASContactTimelineResponse contactTimelineResponse1 = OASContactTimelineResponse.getExample();
        OASContactTimelineResponse contactTimelineResponse2 = OASContactTimelineResponse.getExample();
        OASContactTimelineResponse contactTimelineResponse3 = new OASContactTimelineResponse();
        OASContactTimelineResponse contactTimelineResponse4 = new OASContactTimelineResponse();

        System.assert(contactTimelineResponse1.equals(contactTimelineResponse2));
        System.assert(contactTimelineResponse2.equals(contactTimelineResponse1));
        System.assert(contactTimelineResponse3.equals(contactTimelineResponse4));
        System.assert(contactTimelineResponse4.equals(contactTimelineResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASContactTimelineResponse contactTimelineResponse1 = OASContactTimelineResponse.getExample();
        OASContactTimelineResponse contactTimelineResponse2 = new OASContactTimelineResponse();

        System.assertEquals(false, contactTimelineResponse1.equals('foo'));
        System.assertEquals(false, contactTimelineResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASContactTimelineResponse contactTimelineResponse1 = OASContactTimelineResponse.getExample();
        OASContactTimelineResponse contactTimelineResponse2 = new OASContactTimelineResponse();
        OASContactTimelineResponse contactTimelineResponse3;

        System.assertEquals(false, contactTimelineResponse1.equals(contactTimelineResponse3));
        System.assertEquals(false, contactTimelineResponse2.equals(contactTimelineResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASContactTimelineResponse contactTimelineResponse1 = OASContactTimelineResponse.getExample();
        OASContactTimelineResponse contactTimelineResponse2 = new OASContactTimelineResponse();

        System.assertEquals(contactTimelineResponse1.hashCode(), contactTimelineResponse1.hashCode());
        System.assertEquals(contactTimelineResponse2.hashCode(), contactTimelineResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASContactTimelineResponse contactTimelineResponse1 = OASContactTimelineResponse.getExample();
        OASContactTimelineResponse contactTimelineResponse2 = OASContactTimelineResponse.getExample();
        OASContactTimelineResponse contactTimelineResponse3 = new OASContactTimelineResponse();
        OASContactTimelineResponse contactTimelineResponse4 = new OASContactTimelineResponse();

        System.assert(contactTimelineResponse1.equals(contactTimelineResponse2));
        System.assert(contactTimelineResponse3.equals(contactTimelineResponse4));
        System.assertEquals(contactTimelineResponse1.hashCode(), contactTimelineResponse2.hashCode());
        System.assertEquals(contactTimelineResponse3.hashCode(), contactTimelineResponse4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASContactTimelineResponse contactTimelineResponse = new OASContactTimelineResponse();
        System.assertEquals(new List<OASTimelineEvent>(), contactTimelineResponse.events);
        System.assertEquals(null, contactTimelineResponse.contactId);
    }
}
