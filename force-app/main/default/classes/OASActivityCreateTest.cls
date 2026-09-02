@isTest
private class OASActivityCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASActivityCreate activityCreate1 = OASActivityCreate.getExample();
        OASActivityCreate activityCreate2 = activityCreate1;
        OASActivityCreate activityCreate3 = new OASActivityCreate();
        OASActivityCreate activityCreate4 = activityCreate3;

        System.assert(activityCreate1.equals(activityCreate2));
        System.assert(activityCreate2.equals(activityCreate1));
        System.assert(activityCreate1.equals(activityCreate1));
        System.assert(activityCreate3.equals(activityCreate4));
        System.assert(activityCreate4.equals(activityCreate3));
        System.assert(activityCreate3.equals(activityCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASActivityCreate activityCreate1 = OASActivityCreate.getExample();
        OASActivityCreate activityCreate2 = OASActivityCreate.getExample();
        OASActivityCreate activityCreate3 = new OASActivityCreate();
        OASActivityCreate activityCreate4 = new OASActivityCreate();

        System.assert(activityCreate1.equals(activityCreate2));
        System.assert(activityCreate2.equals(activityCreate1));
        System.assert(activityCreate3.equals(activityCreate4));
        System.assert(activityCreate4.equals(activityCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASActivityCreate activityCreate1 = OASActivityCreate.getExample();
        OASActivityCreate activityCreate2 = new OASActivityCreate();

        System.assertEquals(false, activityCreate1.equals('foo'));
        System.assertEquals(false, activityCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASActivityCreate activityCreate1 = OASActivityCreate.getExample();
        OASActivityCreate activityCreate2 = new OASActivityCreate();
        OASActivityCreate activityCreate3;

        System.assertEquals(false, activityCreate1.equals(activityCreate3));
        System.assertEquals(false, activityCreate2.equals(activityCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASActivityCreate activityCreate1 = OASActivityCreate.getExample();
        OASActivityCreate activityCreate2 = new OASActivityCreate();

        System.assertEquals(activityCreate1.hashCode(), activityCreate1.hashCode());
        System.assertEquals(activityCreate2.hashCode(), activityCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASActivityCreate activityCreate1 = OASActivityCreate.getExample();
        OASActivityCreate activityCreate2 = OASActivityCreate.getExample();
        OASActivityCreate activityCreate3 = new OASActivityCreate();
        OASActivityCreate activityCreate4 = new OASActivityCreate();

        System.assert(activityCreate1.equals(activityCreate2));
        System.assert(activityCreate3.equals(activityCreate4));
        System.assertEquals(activityCreate1.hashCode(), activityCreate2.hashCode());
        System.assertEquals(activityCreate3.hashCode(), activityCreate4.hashCode());
    }
}
