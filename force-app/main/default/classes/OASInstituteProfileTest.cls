@isTest
private class OASInstituteProfileTest {
    @isTest
    private static void equalsSameInstance() {
        OASInstituteProfile instituteProfile1 = OASInstituteProfile.getExample();
        OASInstituteProfile instituteProfile2 = instituteProfile1;
        OASInstituteProfile instituteProfile3 = new OASInstituteProfile();
        OASInstituteProfile instituteProfile4 = instituteProfile3;

        System.assert(instituteProfile1.equals(instituteProfile2));
        System.assert(instituteProfile2.equals(instituteProfile1));
        System.assert(instituteProfile1.equals(instituteProfile1));
        System.assert(instituteProfile3.equals(instituteProfile4));
        System.assert(instituteProfile4.equals(instituteProfile3));
        System.assert(instituteProfile3.equals(instituteProfile3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInstituteProfile instituteProfile1 = OASInstituteProfile.getExample();
        OASInstituteProfile instituteProfile2 = OASInstituteProfile.getExample();
        OASInstituteProfile instituteProfile3 = new OASInstituteProfile();
        OASInstituteProfile instituteProfile4 = new OASInstituteProfile();

        System.assert(instituteProfile1.equals(instituteProfile2));
        System.assert(instituteProfile2.equals(instituteProfile1));
        System.assert(instituteProfile3.equals(instituteProfile4));
        System.assert(instituteProfile4.equals(instituteProfile3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInstituteProfile instituteProfile1 = OASInstituteProfile.getExample();
        OASInstituteProfile instituteProfile2 = new OASInstituteProfile();

        System.assertEquals(false, instituteProfile1.equals('foo'));
        System.assertEquals(false, instituteProfile2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInstituteProfile instituteProfile1 = OASInstituteProfile.getExample();
        OASInstituteProfile instituteProfile2 = new OASInstituteProfile();
        OASInstituteProfile instituteProfile3;

        System.assertEquals(false, instituteProfile1.equals(instituteProfile3));
        System.assertEquals(false, instituteProfile2.equals(instituteProfile3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInstituteProfile instituteProfile1 = OASInstituteProfile.getExample();
        OASInstituteProfile instituteProfile2 = new OASInstituteProfile();

        System.assertEquals(instituteProfile1.hashCode(), instituteProfile1.hashCode());
        System.assertEquals(instituteProfile2.hashCode(), instituteProfile2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInstituteProfile instituteProfile1 = OASInstituteProfile.getExample();
        OASInstituteProfile instituteProfile2 = OASInstituteProfile.getExample();
        OASInstituteProfile instituteProfile3 = new OASInstituteProfile();
        OASInstituteProfile instituteProfile4 = new OASInstituteProfile();

        System.assert(instituteProfile1.equals(instituteProfile2));
        System.assert(instituteProfile3.equals(instituteProfile4));
        System.assertEquals(instituteProfile1.hashCode(), instituteProfile2.hashCode());
        System.assertEquals(instituteProfile3.hashCode(), instituteProfile4.hashCode());
    }
}
