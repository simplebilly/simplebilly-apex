@isTest
private class OASJobApplicationTest {
    @isTest
    private static void equalsSameInstance() {
        OASJobApplication jobApplication1 = OASJobApplication.getExample();
        OASJobApplication jobApplication2 = jobApplication1;
        OASJobApplication jobApplication3 = new OASJobApplication();
        OASJobApplication jobApplication4 = jobApplication3;

        System.assert(jobApplication1.equals(jobApplication2));
        System.assert(jobApplication2.equals(jobApplication1));
        System.assert(jobApplication1.equals(jobApplication1));
        System.assert(jobApplication3.equals(jobApplication4));
        System.assert(jobApplication4.equals(jobApplication3));
        System.assert(jobApplication3.equals(jobApplication3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASJobApplication jobApplication1 = OASJobApplication.getExample();
        OASJobApplication jobApplication2 = OASJobApplication.getExample();
        OASJobApplication jobApplication3 = new OASJobApplication();
        OASJobApplication jobApplication4 = new OASJobApplication();

        System.assert(jobApplication1.equals(jobApplication2));
        System.assert(jobApplication2.equals(jobApplication1));
        System.assert(jobApplication3.equals(jobApplication4));
        System.assert(jobApplication4.equals(jobApplication3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASJobApplication jobApplication1 = OASJobApplication.getExample();
        OASJobApplication jobApplication2 = new OASJobApplication();

        System.assertEquals(false, jobApplication1.equals('foo'));
        System.assertEquals(false, jobApplication2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASJobApplication jobApplication1 = OASJobApplication.getExample();
        OASJobApplication jobApplication2 = new OASJobApplication();
        OASJobApplication jobApplication3;

        System.assertEquals(false, jobApplication1.equals(jobApplication3));
        System.assertEquals(false, jobApplication2.equals(jobApplication3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASJobApplication jobApplication1 = OASJobApplication.getExample();
        OASJobApplication jobApplication2 = new OASJobApplication();

        System.assertEquals(jobApplication1.hashCode(), jobApplication1.hashCode());
        System.assertEquals(jobApplication2.hashCode(), jobApplication2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASJobApplication jobApplication1 = OASJobApplication.getExample();
        OASJobApplication jobApplication2 = OASJobApplication.getExample();
        OASJobApplication jobApplication3 = new OASJobApplication();
        OASJobApplication jobApplication4 = new OASJobApplication();

        System.assert(jobApplication1.equals(jobApplication2));
        System.assert(jobApplication3.equals(jobApplication4));
        System.assertEquals(jobApplication1.hashCode(), jobApplication2.hashCode());
        System.assertEquals(jobApplication3.hashCode(), jobApplication4.hashCode());
    }
}
