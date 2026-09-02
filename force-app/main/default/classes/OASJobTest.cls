@isTest
private class OASJobTest {
    @isTest
    private static void equalsSameInstance() {
        OASJob job1 = OASJob.getExample();
        OASJob job2 = job1;
        OASJob job3 = new OASJob();
        OASJob job4 = job3;

        System.assert(job1.equals(job2));
        System.assert(job2.equals(job1));
        System.assert(job1.equals(job1));
        System.assert(job3.equals(job4));
        System.assert(job4.equals(job3));
        System.assert(job3.equals(job3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASJob job1 = OASJob.getExample();
        OASJob job2 = OASJob.getExample();
        OASJob job3 = new OASJob();
        OASJob job4 = new OASJob();

        System.assert(job1.equals(job2));
        System.assert(job2.equals(job1));
        System.assert(job3.equals(job4));
        System.assert(job4.equals(job3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASJob job1 = OASJob.getExample();
        OASJob job2 = new OASJob();

        System.assertEquals(false, job1.equals('foo'));
        System.assertEquals(false, job2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASJob job1 = OASJob.getExample();
        OASJob job2 = new OASJob();
        OASJob job3;

        System.assertEquals(false, job1.equals(job3));
        System.assertEquals(false, job2.equals(job3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASJob job1 = OASJob.getExample();
        OASJob job2 = new OASJob();

        System.assertEquals(job1.hashCode(), job1.hashCode());
        System.assertEquals(job2.hashCode(), job2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASJob job1 = OASJob.getExample();
        OASJob job2 = OASJob.getExample();
        OASJob job3 = new OASJob();
        OASJob job4 = new OASJob();

        System.assert(job1.equals(job2));
        System.assert(job3.equals(job4));
        System.assertEquals(job1.hashCode(), job2.hashCode());
        System.assertEquals(job3.hashCode(), job4.hashCode());
    }
}
