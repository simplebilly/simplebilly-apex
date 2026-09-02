@isTest
private class OASTimelineEventTest {
    @isTest
    private static void equalsSameInstance() {
        OASTimelineEvent timelineEvent1 = OASTimelineEvent.getExample();
        OASTimelineEvent timelineEvent2 = timelineEvent1;
        OASTimelineEvent timelineEvent3 = new OASTimelineEvent();
        OASTimelineEvent timelineEvent4 = timelineEvent3;

        System.assert(timelineEvent1.equals(timelineEvent2));
        System.assert(timelineEvent2.equals(timelineEvent1));
        System.assert(timelineEvent1.equals(timelineEvent1));
        System.assert(timelineEvent3.equals(timelineEvent4));
        System.assert(timelineEvent4.equals(timelineEvent3));
        System.assert(timelineEvent3.equals(timelineEvent3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTimelineEvent timelineEvent1 = OASTimelineEvent.getExample();
        OASTimelineEvent timelineEvent2 = OASTimelineEvent.getExample();
        OASTimelineEvent timelineEvent3 = new OASTimelineEvent();
        OASTimelineEvent timelineEvent4 = new OASTimelineEvent();

        System.assert(timelineEvent1.equals(timelineEvent2));
        System.assert(timelineEvent2.equals(timelineEvent1));
        System.assert(timelineEvent3.equals(timelineEvent4));
        System.assert(timelineEvent4.equals(timelineEvent3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTimelineEvent timelineEvent1 = OASTimelineEvent.getExample();
        OASTimelineEvent timelineEvent2 = new OASTimelineEvent();

        System.assertEquals(false, timelineEvent1.equals('foo'));
        System.assertEquals(false, timelineEvent2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTimelineEvent timelineEvent1 = OASTimelineEvent.getExample();
        OASTimelineEvent timelineEvent2 = new OASTimelineEvent();
        OASTimelineEvent timelineEvent3;

        System.assertEquals(false, timelineEvent1.equals(timelineEvent3));
        System.assertEquals(false, timelineEvent2.equals(timelineEvent3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTimelineEvent timelineEvent1 = OASTimelineEvent.getExample();
        OASTimelineEvent timelineEvent2 = new OASTimelineEvent();

        System.assertEquals(timelineEvent1.hashCode(), timelineEvent1.hashCode());
        System.assertEquals(timelineEvent2.hashCode(), timelineEvent2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTimelineEvent timelineEvent1 = OASTimelineEvent.getExample();
        OASTimelineEvent timelineEvent2 = OASTimelineEvent.getExample();
        OASTimelineEvent timelineEvent3 = new OASTimelineEvent();
        OASTimelineEvent timelineEvent4 = new OASTimelineEvent();

        System.assert(timelineEvent1.equals(timelineEvent2));
        System.assert(timelineEvent3.equals(timelineEvent4));
        System.assertEquals(timelineEvent1.hashCode(), timelineEvent2.hashCode());
        System.assertEquals(timelineEvent3.hashCode(), timelineEvent4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTimelineEvent timelineEvent = new OASTimelineEvent();
        Map<String, String> x-property-mappings = timelineEvent.getx-property-mappings();
        System.assertEquals('r_date', x-property-mappings.get('date'));
    }
}
