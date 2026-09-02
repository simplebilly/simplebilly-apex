@isTest
private class OASActivityStatusUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASActivityStatusUpdate activityStatusUpdate1 = OASActivityStatusUpdate.getExample();
        OASActivityStatusUpdate activityStatusUpdate2 = activityStatusUpdate1;
        OASActivityStatusUpdate activityStatusUpdate3 = new OASActivityStatusUpdate();
        OASActivityStatusUpdate activityStatusUpdate4 = activityStatusUpdate3;

        System.assert(activityStatusUpdate1.equals(activityStatusUpdate2));
        System.assert(activityStatusUpdate2.equals(activityStatusUpdate1));
        System.assert(activityStatusUpdate1.equals(activityStatusUpdate1));
        System.assert(activityStatusUpdate3.equals(activityStatusUpdate4));
        System.assert(activityStatusUpdate4.equals(activityStatusUpdate3));
        System.assert(activityStatusUpdate3.equals(activityStatusUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASActivityStatusUpdate activityStatusUpdate1 = OASActivityStatusUpdate.getExample();
        OASActivityStatusUpdate activityStatusUpdate2 = OASActivityStatusUpdate.getExample();
        OASActivityStatusUpdate activityStatusUpdate3 = new OASActivityStatusUpdate();
        OASActivityStatusUpdate activityStatusUpdate4 = new OASActivityStatusUpdate();

        System.assert(activityStatusUpdate1.equals(activityStatusUpdate2));
        System.assert(activityStatusUpdate2.equals(activityStatusUpdate1));
        System.assert(activityStatusUpdate3.equals(activityStatusUpdate4));
        System.assert(activityStatusUpdate4.equals(activityStatusUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASActivityStatusUpdate activityStatusUpdate1 = OASActivityStatusUpdate.getExample();
        OASActivityStatusUpdate activityStatusUpdate2 = new OASActivityStatusUpdate();

        System.assertEquals(false, activityStatusUpdate1.equals('foo'));
        System.assertEquals(false, activityStatusUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASActivityStatusUpdate activityStatusUpdate1 = OASActivityStatusUpdate.getExample();
        OASActivityStatusUpdate activityStatusUpdate2 = new OASActivityStatusUpdate();
        OASActivityStatusUpdate activityStatusUpdate3;

        System.assertEquals(false, activityStatusUpdate1.equals(activityStatusUpdate3));
        System.assertEquals(false, activityStatusUpdate2.equals(activityStatusUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASActivityStatusUpdate activityStatusUpdate1 = OASActivityStatusUpdate.getExample();
        OASActivityStatusUpdate activityStatusUpdate2 = new OASActivityStatusUpdate();

        System.assertEquals(activityStatusUpdate1.hashCode(), activityStatusUpdate1.hashCode());
        System.assertEquals(activityStatusUpdate2.hashCode(), activityStatusUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASActivityStatusUpdate activityStatusUpdate1 = OASActivityStatusUpdate.getExample();
        OASActivityStatusUpdate activityStatusUpdate2 = OASActivityStatusUpdate.getExample();
        OASActivityStatusUpdate activityStatusUpdate3 = new OASActivityStatusUpdate();
        OASActivityStatusUpdate activityStatusUpdate4 = new OASActivityStatusUpdate();

        System.assert(activityStatusUpdate1.equals(activityStatusUpdate2));
        System.assert(activityStatusUpdate3.equals(activityStatusUpdate4));
        System.assertEquals(activityStatusUpdate1.hashCode(), activityStatusUpdate2.hashCode());
        System.assertEquals(activityStatusUpdate3.hashCode(), activityStatusUpdate4.hashCode());
    }
}
