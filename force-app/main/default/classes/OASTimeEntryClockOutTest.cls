@isTest
private class OASTimeEntryClockOutTest {
    @isTest
    private static void equalsSameInstance() {
        OASTimeEntryClockOut timeEntryClockOut1 = OASTimeEntryClockOut.getExample();
        OASTimeEntryClockOut timeEntryClockOut2 = timeEntryClockOut1;
        OASTimeEntryClockOut timeEntryClockOut3 = new OASTimeEntryClockOut();
        OASTimeEntryClockOut timeEntryClockOut4 = timeEntryClockOut3;

        System.assert(timeEntryClockOut1.equals(timeEntryClockOut2));
        System.assert(timeEntryClockOut2.equals(timeEntryClockOut1));
        System.assert(timeEntryClockOut1.equals(timeEntryClockOut1));
        System.assert(timeEntryClockOut3.equals(timeEntryClockOut4));
        System.assert(timeEntryClockOut4.equals(timeEntryClockOut3));
        System.assert(timeEntryClockOut3.equals(timeEntryClockOut3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTimeEntryClockOut timeEntryClockOut1 = OASTimeEntryClockOut.getExample();
        OASTimeEntryClockOut timeEntryClockOut2 = OASTimeEntryClockOut.getExample();
        OASTimeEntryClockOut timeEntryClockOut3 = new OASTimeEntryClockOut();
        OASTimeEntryClockOut timeEntryClockOut4 = new OASTimeEntryClockOut();

        System.assert(timeEntryClockOut1.equals(timeEntryClockOut2));
        System.assert(timeEntryClockOut2.equals(timeEntryClockOut1));
        System.assert(timeEntryClockOut3.equals(timeEntryClockOut4));
        System.assert(timeEntryClockOut4.equals(timeEntryClockOut3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTimeEntryClockOut timeEntryClockOut1 = OASTimeEntryClockOut.getExample();
        OASTimeEntryClockOut timeEntryClockOut2 = new OASTimeEntryClockOut();

        System.assertEquals(false, timeEntryClockOut1.equals('foo'));
        System.assertEquals(false, timeEntryClockOut2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTimeEntryClockOut timeEntryClockOut1 = OASTimeEntryClockOut.getExample();
        OASTimeEntryClockOut timeEntryClockOut2 = new OASTimeEntryClockOut();
        OASTimeEntryClockOut timeEntryClockOut3;

        System.assertEquals(false, timeEntryClockOut1.equals(timeEntryClockOut3));
        System.assertEquals(false, timeEntryClockOut2.equals(timeEntryClockOut3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTimeEntryClockOut timeEntryClockOut1 = OASTimeEntryClockOut.getExample();
        OASTimeEntryClockOut timeEntryClockOut2 = new OASTimeEntryClockOut();

        System.assertEquals(timeEntryClockOut1.hashCode(), timeEntryClockOut1.hashCode());
        System.assertEquals(timeEntryClockOut2.hashCode(), timeEntryClockOut2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTimeEntryClockOut timeEntryClockOut1 = OASTimeEntryClockOut.getExample();
        OASTimeEntryClockOut timeEntryClockOut2 = OASTimeEntryClockOut.getExample();
        OASTimeEntryClockOut timeEntryClockOut3 = new OASTimeEntryClockOut();
        OASTimeEntryClockOut timeEntryClockOut4 = new OASTimeEntryClockOut();

        System.assert(timeEntryClockOut1.equals(timeEntryClockOut2));
        System.assert(timeEntryClockOut3.equals(timeEntryClockOut4));
        System.assertEquals(timeEntryClockOut1.hashCode(), timeEntryClockOut2.hashCode());
        System.assertEquals(timeEntryClockOut3.hashCode(), timeEntryClockOut4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTimeEntryClockOut timeEntryClockOut = new OASTimeEntryClockOut();
        Map<String, String> x-property-mappings = timeEntryClockOut.getx-property-mappings();
        System.assertEquals('clockOut', x-property-mappings.get('clock_out'));
    }
}
