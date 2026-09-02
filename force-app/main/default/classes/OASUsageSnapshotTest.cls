@isTest
private class OASUsageSnapshotTest {
    @isTest
    private static void equalsSameInstance() {
        OASUsageSnapshot usageSnapshot1 = OASUsageSnapshot.getExample();
        OASUsageSnapshot usageSnapshot2 = usageSnapshot1;
        OASUsageSnapshot usageSnapshot3 = new OASUsageSnapshot();
        OASUsageSnapshot usageSnapshot4 = usageSnapshot3;

        System.assert(usageSnapshot1.equals(usageSnapshot2));
        System.assert(usageSnapshot2.equals(usageSnapshot1));
        System.assert(usageSnapshot1.equals(usageSnapshot1));
        System.assert(usageSnapshot3.equals(usageSnapshot4));
        System.assert(usageSnapshot4.equals(usageSnapshot3));
        System.assert(usageSnapshot3.equals(usageSnapshot3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUsageSnapshot usageSnapshot1 = OASUsageSnapshot.getExample();
        OASUsageSnapshot usageSnapshot2 = OASUsageSnapshot.getExample();
        OASUsageSnapshot usageSnapshot3 = new OASUsageSnapshot();
        OASUsageSnapshot usageSnapshot4 = new OASUsageSnapshot();

        System.assert(usageSnapshot1.equals(usageSnapshot2));
        System.assert(usageSnapshot2.equals(usageSnapshot1));
        System.assert(usageSnapshot3.equals(usageSnapshot4));
        System.assert(usageSnapshot4.equals(usageSnapshot3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUsageSnapshot usageSnapshot1 = OASUsageSnapshot.getExample();
        OASUsageSnapshot usageSnapshot2 = new OASUsageSnapshot();

        System.assertEquals(false, usageSnapshot1.equals('foo'));
        System.assertEquals(false, usageSnapshot2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUsageSnapshot usageSnapshot1 = OASUsageSnapshot.getExample();
        OASUsageSnapshot usageSnapshot2 = new OASUsageSnapshot();
        OASUsageSnapshot usageSnapshot3;

        System.assertEquals(false, usageSnapshot1.equals(usageSnapshot3));
        System.assertEquals(false, usageSnapshot2.equals(usageSnapshot3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUsageSnapshot usageSnapshot1 = OASUsageSnapshot.getExample();
        OASUsageSnapshot usageSnapshot2 = new OASUsageSnapshot();

        System.assertEquals(usageSnapshot1.hashCode(), usageSnapshot1.hashCode());
        System.assertEquals(usageSnapshot2.hashCode(), usageSnapshot2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUsageSnapshot usageSnapshot1 = OASUsageSnapshot.getExample();
        OASUsageSnapshot usageSnapshot2 = OASUsageSnapshot.getExample();
        OASUsageSnapshot usageSnapshot3 = new OASUsageSnapshot();
        OASUsageSnapshot usageSnapshot4 = new OASUsageSnapshot();

        System.assert(usageSnapshot1.equals(usageSnapshot2));
        System.assert(usageSnapshot3.equals(usageSnapshot4));
        System.assertEquals(usageSnapshot1.hashCode(), usageSnapshot2.hashCode());
        System.assertEquals(usageSnapshot3.hashCode(), usageSnapshot4.hashCode());
    }
}
