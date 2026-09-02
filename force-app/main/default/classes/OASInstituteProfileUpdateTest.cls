@isTest
private class OASInstituteProfileUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASInstituteProfileUpdate instituteProfileUpdate1 = OASInstituteProfileUpdate.getExample();
        OASInstituteProfileUpdate instituteProfileUpdate2 = instituteProfileUpdate1;
        OASInstituteProfileUpdate instituteProfileUpdate3 = new OASInstituteProfileUpdate();
        OASInstituteProfileUpdate instituteProfileUpdate4 = instituteProfileUpdate3;

        System.assert(instituteProfileUpdate1.equals(instituteProfileUpdate2));
        System.assert(instituteProfileUpdate2.equals(instituteProfileUpdate1));
        System.assert(instituteProfileUpdate1.equals(instituteProfileUpdate1));
        System.assert(instituteProfileUpdate3.equals(instituteProfileUpdate4));
        System.assert(instituteProfileUpdate4.equals(instituteProfileUpdate3));
        System.assert(instituteProfileUpdate3.equals(instituteProfileUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInstituteProfileUpdate instituteProfileUpdate1 = OASInstituteProfileUpdate.getExample();
        OASInstituteProfileUpdate instituteProfileUpdate2 = OASInstituteProfileUpdate.getExample();
        OASInstituteProfileUpdate instituteProfileUpdate3 = new OASInstituteProfileUpdate();
        OASInstituteProfileUpdate instituteProfileUpdate4 = new OASInstituteProfileUpdate();

        System.assert(instituteProfileUpdate1.equals(instituteProfileUpdate2));
        System.assert(instituteProfileUpdate2.equals(instituteProfileUpdate1));
        System.assert(instituteProfileUpdate3.equals(instituteProfileUpdate4));
        System.assert(instituteProfileUpdate4.equals(instituteProfileUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInstituteProfileUpdate instituteProfileUpdate1 = OASInstituteProfileUpdate.getExample();
        OASInstituteProfileUpdate instituteProfileUpdate2 = new OASInstituteProfileUpdate();

        System.assertEquals(false, instituteProfileUpdate1.equals('foo'));
        System.assertEquals(false, instituteProfileUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInstituteProfileUpdate instituteProfileUpdate1 = OASInstituteProfileUpdate.getExample();
        OASInstituteProfileUpdate instituteProfileUpdate2 = new OASInstituteProfileUpdate();
        OASInstituteProfileUpdate instituteProfileUpdate3;

        System.assertEquals(false, instituteProfileUpdate1.equals(instituteProfileUpdate3));
        System.assertEquals(false, instituteProfileUpdate2.equals(instituteProfileUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInstituteProfileUpdate instituteProfileUpdate1 = OASInstituteProfileUpdate.getExample();
        OASInstituteProfileUpdate instituteProfileUpdate2 = new OASInstituteProfileUpdate();

        System.assertEquals(instituteProfileUpdate1.hashCode(), instituteProfileUpdate1.hashCode());
        System.assertEquals(instituteProfileUpdate2.hashCode(), instituteProfileUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInstituteProfileUpdate instituteProfileUpdate1 = OASInstituteProfileUpdate.getExample();
        OASInstituteProfileUpdate instituteProfileUpdate2 = OASInstituteProfileUpdate.getExample();
        OASInstituteProfileUpdate instituteProfileUpdate3 = new OASInstituteProfileUpdate();
        OASInstituteProfileUpdate instituteProfileUpdate4 = new OASInstituteProfileUpdate();

        System.assert(instituteProfileUpdate1.equals(instituteProfileUpdate2));
        System.assert(instituteProfileUpdate3.equals(instituteProfileUpdate4));
        System.assertEquals(instituteProfileUpdate1.hashCode(), instituteProfileUpdate2.hashCode());
        System.assertEquals(instituteProfileUpdate3.hashCode(), instituteProfileUpdate4.hashCode());
    }
}
