@isTest
private class OASDpaStatusTest {
    @isTest
    private static void equalsSameInstance() {
        OASDpaStatus dpaStatus1 = OASDpaStatus.getExample();
        OASDpaStatus dpaStatus2 = dpaStatus1;
        OASDpaStatus dpaStatus3 = new OASDpaStatus();
        OASDpaStatus dpaStatus4 = dpaStatus3;

        System.assert(dpaStatus1.equals(dpaStatus2));
        System.assert(dpaStatus2.equals(dpaStatus1));
        System.assert(dpaStatus1.equals(dpaStatus1));
        System.assert(dpaStatus3.equals(dpaStatus4));
        System.assert(dpaStatus4.equals(dpaStatus3));
        System.assert(dpaStatus3.equals(dpaStatus3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDpaStatus dpaStatus1 = OASDpaStatus.getExample();
        OASDpaStatus dpaStatus2 = OASDpaStatus.getExample();
        OASDpaStatus dpaStatus3 = new OASDpaStatus();
        OASDpaStatus dpaStatus4 = new OASDpaStatus();

        System.assert(dpaStatus1.equals(dpaStatus2));
        System.assert(dpaStatus2.equals(dpaStatus1));
        System.assert(dpaStatus3.equals(dpaStatus4));
        System.assert(dpaStatus4.equals(dpaStatus3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDpaStatus dpaStatus1 = OASDpaStatus.getExample();
        OASDpaStatus dpaStatus2 = new OASDpaStatus();

        System.assertEquals(false, dpaStatus1.equals('foo'));
        System.assertEquals(false, dpaStatus2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDpaStatus dpaStatus1 = OASDpaStatus.getExample();
        OASDpaStatus dpaStatus2 = new OASDpaStatus();
        OASDpaStatus dpaStatus3;

        System.assertEquals(false, dpaStatus1.equals(dpaStatus3));
        System.assertEquals(false, dpaStatus2.equals(dpaStatus3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDpaStatus dpaStatus1 = OASDpaStatus.getExample();
        OASDpaStatus dpaStatus2 = new OASDpaStatus();

        System.assertEquals(dpaStatus1.hashCode(), dpaStatus1.hashCode());
        System.assertEquals(dpaStatus2.hashCode(), dpaStatus2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDpaStatus dpaStatus1 = OASDpaStatus.getExample();
        OASDpaStatus dpaStatus2 = OASDpaStatus.getExample();
        OASDpaStatus dpaStatus3 = new OASDpaStatus();
        OASDpaStatus dpaStatus4 = new OASDpaStatus();

        System.assert(dpaStatus1.equals(dpaStatus2));
        System.assert(dpaStatus3.equals(dpaStatus4));
        System.assertEquals(dpaStatus1.hashCode(), dpaStatus2.hashCode());
        System.assertEquals(dpaStatus3.hashCode(), dpaStatus4.hashCode());
    }
}
