@isTest
private class OASTimeEntryClockInTest {
    @isTest
    private static void equalsSameInstance() {
        OASTimeEntryClockIn timeEntryClockIn1 = OASTimeEntryClockIn.getExample();
        OASTimeEntryClockIn timeEntryClockIn2 = timeEntryClockIn1;
        OASTimeEntryClockIn timeEntryClockIn3 = new OASTimeEntryClockIn();
        OASTimeEntryClockIn timeEntryClockIn4 = timeEntryClockIn3;

        System.assert(timeEntryClockIn1.equals(timeEntryClockIn2));
        System.assert(timeEntryClockIn2.equals(timeEntryClockIn1));
        System.assert(timeEntryClockIn1.equals(timeEntryClockIn1));
        System.assert(timeEntryClockIn3.equals(timeEntryClockIn4));
        System.assert(timeEntryClockIn4.equals(timeEntryClockIn3));
        System.assert(timeEntryClockIn3.equals(timeEntryClockIn3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTimeEntryClockIn timeEntryClockIn1 = OASTimeEntryClockIn.getExample();
        OASTimeEntryClockIn timeEntryClockIn2 = OASTimeEntryClockIn.getExample();
        OASTimeEntryClockIn timeEntryClockIn3 = new OASTimeEntryClockIn();
        OASTimeEntryClockIn timeEntryClockIn4 = new OASTimeEntryClockIn();

        System.assert(timeEntryClockIn1.equals(timeEntryClockIn2));
        System.assert(timeEntryClockIn2.equals(timeEntryClockIn1));
        System.assert(timeEntryClockIn3.equals(timeEntryClockIn4));
        System.assert(timeEntryClockIn4.equals(timeEntryClockIn3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTimeEntryClockIn timeEntryClockIn1 = OASTimeEntryClockIn.getExample();
        OASTimeEntryClockIn timeEntryClockIn2 = new OASTimeEntryClockIn();

        System.assertEquals(false, timeEntryClockIn1.equals('foo'));
        System.assertEquals(false, timeEntryClockIn2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTimeEntryClockIn timeEntryClockIn1 = OASTimeEntryClockIn.getExample();
        OASTimeEntryClockIn timeEntryClockIn2 = new OASTimeEntryClockIn();
        OASTimeEntryClockIn timeEntryClockIn3;

        System.assertEquals(false, timeEntryClockIn1.equals(timeEntryClockIn3));
        System.assertEquals(false, timeEntryClockIn2.equals(timeEntryClockIn3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTimeEntryClockIn timeEntryClockIn1 = OASTimeEntryClockIn.getExample();
        OASTimeEntryClockIn timeEntryClockIn2 = new OASTimeEntryClockIn();

        System.assertEquals(timeEntryClockIn1.hashCode(), timeEntryClockIn1.hashCode());
        System.assertEquals(timeEntryClockIn2.hashCode(), timeEntryClockIn2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTimeEntryClockIn timeEntryClockIn1 = OASTimeEntryClockIn.getExample();
        OASTimeEntryClockIn timeEntryClockIn2 = OASTimeEntryClockIn.getExample();
        OASTimeEntryClockIn timeEntryClockIn3 = new OASTimeEntryClockIn();
        OASTimeEntryClockIn timeEntryClockIn4 = new OASTimeEntryClockIn();

        System.assert(timeEntryClockIn1.equals(timeEntryClockIn2));
        System.assert(timeEntryClockIn3.equals(timeEntryClockIn4));
        System.assertEquals(timeEntryClockIn1.hashCode(), timeEntryClockIn2.hashCode());
        System.assertEquals(timeEntryClockIn3.hashCode(), timeEntryClockIn4.hashCode());
    }
}
