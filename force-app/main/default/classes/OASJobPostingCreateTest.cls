@isTest
private class OASJobPostingCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASJobPostingCreate jobPostingCreate1 = OASJobPostingCreate.getExample();
        OASJobPostingCreate jobPostingCreate2 = jobPostingCreate1;
        OASJobPostingCreate jobPostingCreate3 = new OASJobPostingCreate();
        OASJobPostingCreate jobPostingCreate4 = jobPostingCreate3;

        System.assert(jobPostingCreate1.equals(jobPostingCreate2));
        System.assert(jobPostingCreate2.equals(jobPostingCreate1));
        System.assert(jobPostingCreate1.equals(jobPostingCreate1));
        System.assert(jobPostingCreate3.equals(jobPostingCreate4));
        System.assert(jobPostingCreate4.equals(jobPostingCreate3));
        System.assert(jobPostingCreate3.equals(jobPostingCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASJobPostingCreate jobPostingCreate1 = OASJobPostingCreate.getExample();
        OASJobPostingCreate jobPostingCreate2 = OASJobPostingCreate.getExample();
        OASJobPostingCreate jobPostingCreate3 = new OASJobPostingCreate();
        OASJobPostingCreate jobPostingCreate4 = new OASJobPostingCreate();

        System.assert(jobPostingCreate1.equals(jobPostingCreate2));
        System.assert(jobPostingCreate2.equals(jobPostingCreate1));
        System.assert(jobPostingCreate3.equals(jobPostingCreate4));
        System.assert(jobPostingCreate4.equals(jobPostingCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASJobPostingCreate jobPostingCreate1 = OASJobPostingCreate.getExample();
        OASJobPostingCreate jobPostingCreate2 = new OASJobPostingCreate();

        System.assertEquals(false, jobPostingCreate1.equals('foo'));
        System.assertEquals(false, jobPostingCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASJobPostingCreate jobPostingCreate1 = OASJobPostingCreate.getExample();
        OASJobPostingCreate jobPostingCreate2 = new OASJobPostingCreate();
        OASJobPostingCreate jobPostingCreate3;

        System.assertEquals(false, jobPostingCreate1.equals(jobPostingCreate3));
        System.assertEquals(false, jobPostingCreate2.equals(jobPostingCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASJobPostingCreate jobPostingCreate1 = OASJobPostingCreate.getExample();
        OASJobPostingCreate jobPostingCreate2 = new OASJobPostingCreate();

        System.assertEquals(jobPostingCreate1.hashCode(), jobPostingCreate1.hashCode());
        System.assertEquals(jobPostingCreate2.hashCode(), jobPostingCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASJobPostingCreate jobPostingCreate1 = OASJobPostingCreate.getExample();
        OASJobPostingCreate jobPostingCreate2 = OASJobPostingCreate.getExample();
        OASJobPostingCreate jobPostingCreate3 = new OASJobPostingCreate();
        OASJobPostingCreate jobPostingCreate4 = new OASJobPostingCreate();

        System.assert(jobPostingCreate1.equals(jobPostingCreate2));
        System.assert(jobPostingCreate3.equals(jobPostingCreate4));
        System.assertEquals(jobPostingCreate1.hashCode(), jobPostingCreate2.hashCode());
        System.assertEquals(jobPostingCreate3.hashCode(), jobPostingCreate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASJobPostingCreate jobPostingCreate = new OASJobPostingCreate();
        Map<String, String> x-property-mappings = jobPostingCreate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
