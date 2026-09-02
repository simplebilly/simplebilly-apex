@isTest
private class OASInstituteDeadlinesTest {
    @isTest
    private static void equalsSameInstance() {
        OASInstituteDeadlines instituteDeadlines1 = OASInstituteDeadlines.getExample();
        OASInstituteDeadlines instituteDeadlines2 = instituteDeadlines1;
        OASInstituteDeadlines instituteDeadlines3 = new OASInstituteDeadlines();
        OASInstituteDeadlines instituteDeadlines4 = instituteDeadlines3;

        System.assert(instituteDeadlines1.equals(instituteDeadlines2));
        System.assert(instituteDeadlines2.equals(instituteDeadlines1));
        System.assert(instituteDeadlines1.equals(instituteDeadlines1));
        System.assert(instituteDeadlines3.equals(instituteDeadlines4));
        System.assert(instituteDeadlines4.equals(instituteDeadlines3));
        System.assert(instituteDeadlines3.equals(instituteDeadlines3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInstituteDeadlines instituteDeadlines1 = OASInstituteDeadlines.getExample();
        OASInstituteDeadlines instituteDeadlines2 = OASInstituteDeadlines.getExample();
        OASInstituteDeadlines instituteDeadlines3 = new OASInstituteDeadlines();
        OASInstituteDeadlines instituteDeadlines4 = new OASInstituteDeadlines();

        System.assert(instituteDeadlines1.equals(instituteDeadlines2));
        System.assert(instituteDeadlines2.equals(instituteDeadlines1));
        System.assert(instituteDeadlines3.equals(instituteDeadlines4));
        System.assert(instituteDeadlines4.equals(instituteDeadlines3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInstituteDeadlines instituteDeadlines1 = OASInstituteDeadlines.getExample();
        OASInstituteDeadlines instituteDeadlines2 = new OASInstituteDeadlines();

        System.assertEquals(false, instituteDeadlines1.equals('foo'));
        System.assertEquals(false, instituteDeadlines2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInstituteDeadlines instituteDeadlines1 = OASInstituteDeadlines.getExample();
        OASInstituteDeadlines instituteDeadlines2 = new OASInstituteDeadlines();
        OASInstituteDeadlines instituteDeadlines3;

        System.assertEquals(false, instituteDeadlines1.equals(instituteDeadlines3));
        System.assertEquals(false, instituteDeadlines2.equals(instituteDeadlines3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInstituteDeadlines instituteDeadlines1 = OASInstituteDeadlines.getExample();
        OASInstituteDeadlines instituteDeadlines2 = new OASInstituteDeadlines();

        System.assertEquals(instituteDeadlines1.hashCode(), instituteDeadlines1.hashCode());
        System.assertEquals(instituteDeadlines2.hashCode(), instituteDeadlines2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInstituteDeadlines instituteDeadlines1 = OASInstituteDeadlines.getExample();
        OASInstituteDeadlines instituteDeadlines2 = OASInstituteDeadlines.getExample();
        OASInstituteDeadlines instituteDeadlines3 = new OASInstituteDeadlines();
        OASInstituteDeadlines instituteDeadlines4 = new OASInstituteDeadlines();

        System.assert(instituteDeadlines1.equals(instituteDeadlines2));
        System.assert(instituteDeadlines3.equals(instituteDeadlines4));
        System.assertEquals(instituteDeadlines1.hashCode(), instituteDeadlines2.hashCode());
        System.assertEquals(instituteDeadlines3.hashCode(), instituteDeadlines4.hashCode());
    }
}
