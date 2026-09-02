@isTest
private class OASJobPostingTest {
    @isTest
    private static void equalsSameInstance() {
        OASJobPosting jobPosting1 = OASJobPosting.getExample();
        OASJobPosting jobPosting2 = jobPosting1;
        OASJobPosting jobPosting3 = new OASJobPosting();
        OASJobPosting jobPosting4 = jobPosting3;

        System.assert(jobPosting1.equals(jobPosting2));
        System.assert(jobPosting2.equals(jobPosting1));
        System.assert(jobPosting1.equals(jobPosting1));
        System.assert(jobPosting3.equals(jobPosting4));
        System.assert(jobPosting4.equals(jobPosting3));
        System.assert(jobPosting3.equals(jobPosting3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASJobPosting jobPosting1 = OASJobPosting.getExample();
        OASJobPosting jobPosting2 = OASJobPosting.getExample();
        OASJobPosting jobPosting3 = new OASJobPosting();
        OASJobPosting jobPosting4 = new OASJobPosting();

        System.assert(jobPosting1.equals(jobPosting2));
        System.assert(jobPosting2.equals(jobPosting1));
        System.assert(jobPosting3.equals(jobPosting4));
        System.assert(jobPosting4.equals(jobPosting3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASJobPosting jobPosting1 = OASJobPosting.getExample();
        OASJobPosting jobPosting2 = new OASJobPosting();

        System.assertEquals(false, jobPosting1.equals('foo'));
        System.assertEquals(false, jobPosting2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASJobPosting jobPosting1 = OASJobPosting.getExample();
        OASJobPosting jobPosting2 = new OASJobPosting();
        OASJobPosting jobPosting3;

        System.assertEquals(false, jobPosting1.equals(jobPosting3));
        System.assertEquals(false, jobPosting2.equals(jobPosting3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASJobPosting jobPosting1 = OASJobPosting.getExample();
        OASJobPosting jobPosting2 = new OASJobPosting();

        System.assertEquals(jobPosting1.hashCode(), jobPosting1.hashCode());
        System.assertEquals(jobPosting2.hashCode(), jobPosting2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASJobPosting jobPosting1 = OASJobPosting.getExample();
        OASJobPosting jobPosting2 = OASJobPosting.getExample();
        OASJobPosting jobPosting3 = new OASJobPosting();
        OASJobPosting jobPosting4 = new OASJobPosting();

        System.assert(jobPosting1.equals(jobPosting2));
        System.assert(jobPosting3.equals(jobPosting4));
        System.assertEquals(jobPosting1.hashCode(), jobPosting2.hashCode());
        System.assertEquals(jobPosting3.hashCode(), jobPosting4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASJobPosting jobPosting = new OASJobPosting();
        Map<String, String> x-property-mappings = jobPosting.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
