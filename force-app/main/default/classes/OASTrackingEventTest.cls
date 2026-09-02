@isTest
private class OASTrackingEventTest {
    @isTest
    private static void equalsSameInstance() {
        OASTrackingEvent trackingEvent1 = OASTrackingEvent.getExample();
        OASTrackingEvent trackingEvent2 = trackingEvent1;
        OASTrackingEvent trackingEvent3 = new OASTrackingEvent();
        OASTrackingEvent trackingEvent4 = trackingEvent3;

        System.assert(trackingEvent1.equals(trackingEvent2));
        System.assert(trackingEvent2.equals(trackingEvent1));
        System.assert(trackingEvent1.equals(trackingEvent1));
        System.assert(trackingEvent3.equals(trackingEvent4));
        System.assert(trackingEvent4.equals(trackingEvent3));
        System.assert(trackingEvent3.equals(trackingEvent3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTrackingEvent trackingEvent1 = OASTrackingEvent.getExample();
        OASTrackingEvent trackingEvent2 = OASTrackingEvent.getExample();
        OASTrackingEvent trackingEvent3 = new OASTrackingEvent();
        OASTrackingEvent trackingEvent4 = new OASTrackingEvent();

        System.assert(trackingEvent1.equals(trackingEvent2));
        System.assert(trackingEvent2.equals(trackingEvent1));
        System.assert(trackingEvent3.equals(trackingEvent4));
        System.assert(trackingEvent4.equals(trackingEvent3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTrackingEvent trackingEvent1 = OASTrackingEvent.getExample();
        OASTrackingEvent trackingEvent2 = new OASTrackingEvent();

        System.assertEquals(false, trackingEvent1.equals('foo'));
        System.assertEquals(false, trackingEvent2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTrackingEvent trackingEvent1 = OASTrackingEvent.getExample();
        OASTrackingEvent trackingEvent2 = new OASTrackingEvent();
        OASTrackingEvent trackingEvent3;

        System.assertEquals(false, trackingEvent1.equals(trackingEvent3));
        System.assertEquals(false, trackingEvent2.equals(trackingEvent3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTrackingEvent trackingEvent1 = OASTrackingEvent.getExample();
        OASTrackingEvent trackingEvent2 = new OASTrackingEvent();

        System.assertEquals(trackingEvent1.hashCode(), trackingEvent1.hashCode());
        System.assertEquals(trackingEvent2.hashCode(), trackingEvent2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTrackingEvent trackingEvent1 = OASTrackingEvent.getExample();
        OASTrackingEvent trackingEvent2 = OASTrackingEvent.getExample();
        OASTrackingEvent trackingEvent3 = new OASTrackingEvent();
        OASTrackingEvent trackingEvent4 = new OASTrackingEvent();

        System.assert(trackingEvent1.equals(trackingEvent2));
        System.assert(trackingEvent3.equals(trackingEvent4));
        System.assertEquals(trackingEvent1.hashCode(), trackingEvent2.hashCode());
        System.assertEquals(trackingEvent3.hashCode(), trackingEvent4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTrackingEvent trackingEvent = new OASTrackingEvent();
        Map<String, String> x-property-mappings = trackingEvent.getx-property-mappings();
        System.assertEquals('r_date', x-property-mappings.get('date'));
    }
}
