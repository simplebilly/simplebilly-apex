@isTest
private class OASActivityTest {
    @isTest
    private static void equalsSameInstance() {
        OASActivity activity1 = OASActivity.getExample();
        OASActivity activity2 = activity1;
        OASActivity activity3 = new OASActivity();
        OASActivity activity4 = activity3;

        System.assert(activity1.equals(activity2));
        System.assert(activity2.equals(activity1));
        System.assert(activity1.equals(activity1));
        System.assert(activity3.equals(activity4));
        System.assert(activity4.equals(activity3));
        System.assert(activity3.equals(activity3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASActivity activity1 = OASActivity.getExample();
        OASActivity activity2 = OASActivity.getExample();
        OASActivity activity3 = new OASActivity();
        OASActivity activity4 = new OASActivity();

        System.assert(activity1.equals(activity2));
        System.assert(activity2.equals(activity1));
        System.assert(activity3.equals(activity4));
        System.assert(activity4.equals(activity3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASActivity activity1 = OASActivity.getExample();
        OASActivity activity2 = new OASActivity();

        System.assertEquals(false, activity1.equals('foo'));
        System.assertEquals(false, activity2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASActivity activity1 = OASActivity.getExample();
        OASActivity activity2 = new OASActivity();
        OASActivity activity3;

        System.assertEquals(false, activity1.equals(activity3));
        System.assertEquals(false, activity2.equals(activity3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASActivity activity1 = OASActivity.getExample();
        OASActivity activity2 = new OASActivity();

        System.assertEquals(activity1.hashCode(), activity1.hashCode());
        System.assertEquals(activity2.hashCode(), activity2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASActivity activity1 = OASActivity.getExample();
        OASActivity activity2 = OASActivity.getExample();
        OASActivity activity3 = new OASActivity();
        OASActivity activity4 = new OASActivity();

        System.assert(activity1.equals(activity2));
        System.assert(activity3.equals(activity4));
        System.assertEquals(activity1.hashCode(), activity2.hashCode());
        System.assertEquals(activity3.hashCode(), activity4.hashCode());
    }
}
