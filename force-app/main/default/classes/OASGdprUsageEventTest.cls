@isTest
private class OASGdprUsageEventTest {
    @isTest
    private static void equalsSameInstance() {
        OASGdprUsageEvent gdprUsageEvent1 = OASGdprUsageEvent.getExample();
        OASGdprUsageEvent gdprUsageEvent2 = gdprUsageEvent1;
        OASGdprUsageEvent gdprUsageEvent3 = new OASGdprUsageEvent();
        OASGdprUsageEvent gdprUsageEvent4 = gdprUsageEvent3;

        System.assert(gdprUsageEvent1.equals(gdprUsageEvent2));
        System.assert(gdprUsageEvent2.equals(gdprUsageEvent1));
        System.assert(gdprUsageEvent1.equals(gdprUsageEvent1));
        System.assert(gdprUsageEvent3.equals(gdprUsageEvent4));
        System.assert(gdprUsageEvent4.equals(gdprUsageEvent3));
        System.assert(gdprUsageEvent3.equals(gdprUsageEvent3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGdprUsageEvent gdprUsageEvent1 = OASGdprUsageEvent.getExample();
        OASGdprUsageEvent gdprUsageEvent2 = OASGdprUsageEvent.getExample();
        OASGdprUsageEvent gdprUsageEvent3 = new OASGdprUsageEvent();
        OASGdprUsageEvent gdprUsageEvent4 = new OASGdprUsageEvent();

        System.assert(gdprUsageEvent1.equals(gdprUsageEvent2));
        System.assert(gdprUsageEvent2.equals(gdprUsageEvent1));
        System.assert(gdprUsageEvent3.equals(gdprUsageEvent4));
        System.assert(gdprUsageEvent4.equals(gdprUsageEvent3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGdprUsageEvent gdprUsageEvent1 = OASGdprUsageEvent.getExample();
        OASGdprUsageEvent gdprUsageEvent2 = new OASGdprUsageEvent();

        System.assertEquals(false, gdprUsageEvent1.equals('foo'));
        System.assertEquals(false, gdprUsageEvent2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGdprUsageEvent gdprUsageEvent1 = OASGdprUsageEvent.getExample();
        OASGdprUsageEvent gdprUsageEvent2 = new OASGdprUsageEvent();
        OASGdprUsageEvent gdprUsageEvent3;

        System.assertEquals(false, gdprUsageEvent1.equals(gdprUsageEvent3));
        System.assertEquals(false, gdprUsageEvent2.equals(gdprUsageEvent3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGdprUsageEvent gdprUsageEvent1 = OASGdprUsageEvent.getExample();
        OASGdprUsageEvent gdprUsageEvent2 = new OASGdprUsageEvent();

        System.assertEquals(gdprUsageEvent1.hashCode(), gdprUsageEvent1.hashCode());
        System.assertEquals(gdprUsageEvent2.hashCode(), gdprUsageEvent2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGdprUsageEvent gdprUsageEvent1 = OASGdprUsageEvent.getExample();
        OASGdprUsageEvent gdprUsageEvent2 = OASGdprUsageEvent.getExample();
        OASGdprUsageEvent gdprUsageEvent3 = new OASGdprUsageEvent();
        OASGdprUsageEvent gdprUsageEvent4 = new OASGdprUsageEvent();

        System.assert(gdprUsageEvent1.equals(gdprUsageEvent2));
        System.assert(gdprUsageEvent3.equals(gdprUsageEvent4));
        System.assertEquals(gdprUsageEvent1.hashCode(), gdprUsageEvent2.hashCode());
        System.assertEquals(gdprUsageEvent3.hashCode(), gdprUsageEvent4.hashCode());
    }
}
