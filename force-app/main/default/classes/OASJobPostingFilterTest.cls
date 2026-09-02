@isTest
private class OASJobPostingFilterTest {
    @isTest
    private static void equalsSameInstance() {
        OASJobPostingFilter jobPostingFilter1 = OASJobPostingFilter.getExample();
        OASJobPostingFilter jobPostingFilter2 = jobPostingFilter1;
        OASJobPostingFilter jobPostingFilter3 = new OASJobPostingFilter();
        OASJobPostingFilter jobPostingFilter4 = jobPostingFilter3;

        System.assert(jobPostingFilter1.equals(jobPostingFilter2));
        System.assert(jobPostingFilter2.equals(jobPostingFilter1));
        System.assert(jobPostingFilter1.equals(jobPostingFilter1));
        System.assert(jobPostingFilter3.equals(jobPostingFilter4));
        System.assert(jobPostingFilter4.equals(jobPostingFilter3));
        System.assert(jobPostingFilter3.equals(jobPostingFilter3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASJobPostingFilter jobPostingFilter1 = OASJobPostingFilter.getExample();
        OASJobPostingFilter jobPostingFilter2 = OASJobPostingFilter.getExample();
        OASJobPostingFilter jobPostingFilter3 = new OASJobPostingFilter();
        OASJobPostingFilter jobPostingFilter4 = new OASJobPostingFilter();

        System.assert(jobPostingFilter1.equals(jobPostingFilter2));
        System.assert(jobPostingFilter2.equals(jobPostingFilter1));
        System.assert(jobPostingFilter3.equals(jobPostingFilter4));
        System.assert(jobPostingFilter4.equals(jobPostingFilter3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASJobPostingFilter jobPostingFilter1 = OASJobPostingFilter.getExample();
        OASJobPostingFilter jobPostingFilter2 = new OASJobPostingFilter();

        System.assertEquals(false, jobPostingFilter1.equals('foo'));
        System.assertEquals(false, jobPostingFilter2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASJobPostingFilter jobPostingFilter1 = OASJobPostingFilter.getExample();
        OASJobPostingFilter jobPostingFilter2 = new OASJobPostingFilter();
        OASJobPostingFilter jobPostingFilter3;

        System.assertEquals(false, jobPostingFilter1.equals(jobPostingFilter3));
        System.assertEquals(false, jobPostingFilter2.equals(jobPostingFilter3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASJobPostingFilter jobPostingFilter1 = OASJobPostingFilter.getExample();
        OASJobPostingFilter jobPostingFilter2 = new OASJobPostingFilter();

        System.assertEquals(jobPostingFilter1.hashCode(), jobPostingFilter1.hashCode());
        System.assertEquals(jobPostingFilter2.hashCode(), jobPostingFilter2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASJobPostingFilter jobPostingFilter1 = OASJobPostingFilter.getExample();
        OASJobPostingFilter jobPostingFilter2 = OASJobPostingFilter.getExample();
        OASJobPostingFilter jobPostingFilter3 = new OASJobPostingFilter();
        OASJobPostingFilter jobPostingFilter4 = new OASJobPostingFilter();

        System.assert(jobPostingFilter1.equals(jobPostingFilter2));
        System.assert(jobPostingFilter3.equals(jobPostingFilter4));
        System.assertEquals(jobPostingFilter1.hashCode(), jobPostingFilter2.hashCode());
        System.assertEquals(jobPostingFilter3.hashCode(), jobPostingFilter4.hashCode());
    }
}
