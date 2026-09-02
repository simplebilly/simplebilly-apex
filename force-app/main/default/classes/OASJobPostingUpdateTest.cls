@isTest
private class OASJobPostingUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASJobPostingUpdate jobPostingUpdate1 = OASJobPostingUpdate.getExample();
        OASJobPostingUpdate jobPostingUpdate2 = jobPostingUpdate1;
        OASJobPostingUpdate jobPostingUpdate3 = new OASJobPostingUpdate();
        OASJobPostingUpdate jobPostingUpdate4 = jobPostingUpdate3;

        System.assert(jobPostingUpdate1.equals(jobPostingUpdate2));
        System.assert(jobPostingUpdate2.equals(jobPostingUpdate1));
        System.assert(jobPostingUpdate1.equals(jobPostingUpdate1));
        System.assert(jobPostingUpdate3.equals(jobPostingUpdate4));
        System.assert(jobPostingUpdate4.equals(jobPostingUpdate3));
        System.assert(jobPostingUpdate3.equals(jobPostingUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASJobPostingUpdate jobPostingUpdate1 = OASJobPostingUpdate.getExample();
        OASJobPostingUpdate jobPostingUpdate2 = OASJobPostingUpdate.getExample();
        OASJobPostingUpdate jobPostingUpdate3 = new OASJobPostingUpdate();
        OASJobPostingUpdate jobPostingUpdate4 = new OASJobPostingUpdate();

        System.assert(jobPostingUpdate1.equals(jobPostingUpdate2));
        System.assert(jobPostingUpdate2.equals(jobPostingUpdate1));
        System.assert(jobPostingUpdate3.equals(jobPostingUpdate4));
        System.assert(jobPostingUpdate4.equals(jobPostingUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASJobPostingUpdate jobPostingUpdate1 = OASJobPostingUpdate.getExample();
        OASJobPostingUpdate jobPostingUpdate2 = new OASJobPostingUpdate();

        System.assertEquals(false, jobPostingUpdate1.equals('foo'));
        System.assertEquals(false, jobPostingUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASJobPostingUpdate jobPostingUpdate1 = OASJobPostingUpdate.getExample();
        OASJobPostingUpdate jobPostingUpdate2 = new OASJobPostingUpdate();
        OASJobPostingUpdate jobPostingUpdate3;

        System.assertEquals(false, jobPostingUpdate1.equals(jobPostingUpdate3));
        System.assertEquals(false, jobPostingUpdate2.equals(jobPostingUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASJobPostingUpdate jobPostingUpdate1 = OASJobPostingUpdate.getExample();
        OASJobPostingUpdate jobPostingUpdate2 = new OASJobPostingUpdate();

        System.assertEquals(jobPostingUpdate1.hashCode(), jobPostingUpdate1.hashCode());
        System.assertEquals(jobPostingUpdate2.hashCode(), jobPostingUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASJobPostingUpdate jobPostingUpdate1 = OASJobPostingUpdate.getExample();
        OASJobPostingUpdate jobPostingUpdate2 = OASJobPostingUpdate.getExample();
        OASJobPostingUpdate jobPostingUpdate3 = new OASJobPostingUpdate();
        OASJobPostingUpdate jobPostingUpdate4 = new OASJobPostingUpdate();

        System.assert(jobPostingUpdate1.equals(jobPostingUpdate2));
        System.assert(jobPostingUpdate3.equals(jobPostingUpdate4));
        System.assertEquals(jobPostingUpdate1.hashCode(), jobPostingUpdate2.hashCode());
        System.assertEquals(jobPostingUpdate3.hashCode(), jobPostingUpdate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASJobPostingUpdate jobPostingUpdate = new OASJobPostingUpdate();
        Map<String, String> x-property-mappings = jobPostingUpdate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
