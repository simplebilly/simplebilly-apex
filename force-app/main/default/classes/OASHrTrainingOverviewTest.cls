@isTest
private class OASHrTrainingOverviewTest {
    @isTest
    private static void equalsSameInstance() {
        OASHrTrainingOverview hrTrainingOverview1 = OASHrTrainingOverview.getExample();
        OASHrTrainingOverview hrTrainingOverview2 = hrTrainingOverview1;
        OASHrTrainingOverview hrTrainingOverview3 = new OASHrTrainingOverview();
        OASHrTrainingOverview hrTrainingOverview4 = hrTrainingOverview3;

        System.assert(hrTrainingOverview1.equals(hrTrainingOverview2));
        System.assert(hrTrainingOverview2.equals(hrTrainingOverview1));
        System.assert(hrTrainingOverview1.equals(hrTrainingOverview1));
        System.assert(hrTrainingOverview3.equals(hrTrainingOverview4));
        System.assert(hrTrainingOverview4.equals(hrTrainingOverview3));
        System.assert(hrTrainingOverview3.equals(hrTrainingOverview3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASHrTrainingOverview hrTrainingOverview1 = OASHrTrainingOverview.getExample();
        OASHrTrainingOverview hrTrainingOverview2 = OASHrTrainingOverview.getExample();
        OASHrTrainingOverview hrTrainingOverview3 = new OASHrTrainingOverview();
        OASHrTrainingOverview hrTrainingOverview4 = new OASHrTrainingOverview();

        System.assert(hrTrainingOverview1.equals(hrTrainingOverview2));
        System.assert(hrTrainingOverview2.equals(hrTrainingOverview1));
        System.assert(hrTrainingOverview3.equals(hrTrainingOverview4));
        System.assert(hrTrainingOverview4.equals(hrTrainingOverview3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASHrTrainingOverview hrTrainingOverview1 = OASHrTrainingOverview.getExample();
        OASHrTrainingOverview hrTrainingOverview2 = new OASHrTrainingOverview();

        System.assertEquals(false, hrTrainingOverview1.equals('foo'));
        System.assertEquals(false, hrTrainingOverview2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASHrTrainingOverview hrTrainingOverview1 = OASHrTrainingOverview.getExample();
        OASHrTrainingOverview hrTrainingOverview2 = new OASHrTrainingOverview();
        OASHrTrainingOverview hrTrainingOverview3;

        System.assertEquals(false, hrTrainingOverview1.equals(hrTrainingOverview3));
        System.assertEquals(false, hrTrainingOverview2.equals(hrTrainingOverview3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASHrTrainingOverview hrTrainingOverview1 = OASHrTrainingOverview.getExample();
        OASHrTrainingOverview hrTrainingOverview2 = new OASHrTrainingOverview();

        System.assertEquals(hrTrainingOverview1.hashCode(), hrTrainingOverview1.hashCode());
        System.assertEquals(hrTrainingOverview2.hashCode(), hrTrainingOverview2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASHrTrainingOverview hrTrainingOverview1 = OASHrTrainingOverview.getExample();
        OASHrTrainingOverview hrTrainingOverview2 = OASHrTrainingOverview.getExample();
        OASHrTrainingOverview hrTrainingOverview3 = new OASHrTrainingOverview();
        OASHrTrainingOverview hrTrainingOverview4 = new OASHrTrainingOverview();

        System.assert(hrTrainingOverview1.equals(hrTrainingOverview2));
        System.assert(hrTrainingOverview3.equals(hrTrainingOverview4));
        System.assertEquals(hrTrainingOverview1.hashCode(), hrTrainingOverview2.hashCode());
        System.assertEquals(hrTrainingOverview3.hashCode(), hrTrainingOverview4.hashCode());
    }
}
