@isTest
private class OASActivityUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASActivityUpdate activityUpdate1 = OASActivityUpdate.getExample();
        OASActivityUpdate activityUpdate2 = activityUpdate1;
        OASActivityUpdate activityUpdate3 = new OASActivityUpdate();
        OASActivityUpdate activityUpdate4 = activityUpdate3;

        System.assert(activityUpdate1.equals(activityUpdate2));
        System.assert(activityUpdate2.equals(activityUpdate1));
        System.assert(activityUpdate1.equals(activityUpdate1));
        System.assert(activityUpdate3.equals(activityUpdate4));
        System.assert(activityUpdate4.equals(activityUpdate3));
        System.assert(activityUpdate3.equals(activityUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASActivityUpdate activityUpdate1 = OASActivityUpdate.getExample();
        OASActivityUpdate activityUpdate2 = OASActivityUpdate.getExample();
        OASActivityUpdate activityUpdate3 = new OASActivityUpdate();
        OASActivityUpdate activityUpdate4 = new OASActivityUpdate();

        System.assert(activityUpdate1.equals(activityUpdate2));
        System.assert(activityUpdate2.equals(activityUpdate1));
        System.assert(activityUpdate3.equals(activityUpdate4));
        System.assert(activityUpdate4.equals(activityUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASActivityUpdate activityUpdate1 = OASActivityUpdate.getExample();
        OASActivityUpdate activityUpdate2 = new OASActivityUpdate();

        System.assertEquals(false, activityUpdate1.equals('foo'));
        System.assertEquals(false, activityUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASActivityUpdate activityUpdate1 = OASActivityUpdate.getExample();
        OASActivityUpdate activityUpdate2 = new OASActivityUpdate();
        OASActivityUpdate activityUpdate3;

        System.assertEquals(false, activityUpdate1.equals(activityUpdate3));
        System.assertEquals(false, activityUpdate2.equals(activityUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASActivityUpdate activityUpdate1 = OASActivityUpdate.getExample();
        OASActivityUpdate activityUpdate2 = new OASActivityUpdate();

        System.assertEquals(activityUpdate1.hashCode(), activityUpdate1.hashCode());
        System.assertEquals(activityUpdate2.hashCode(), activityUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASActivityUpdate activityUpdate1 = OASActivityUpdate.getExample();
        OASActivityUpdate activityUpdate2 = OASActivityUpdate.getExample();
        OASActivityUpdate activityUpdate3 = new OASActivityUpdate();
        OASActivityUpdate activityUpdate4 = new OASActivityUpdate();

        System.assert(activityUpdate1.equals(activityUpdate2));
        System.assert(activityUpdate3.equals(activityUpdate4));
        System.assertEquals(activityUpdate1.hashCode(), activityUpdate2.hashCode());
        System.assertEquals(activityUpdate3.hashCode(), activityUpdate4.hashCode());
    }
}
