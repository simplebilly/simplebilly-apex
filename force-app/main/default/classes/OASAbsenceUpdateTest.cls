@isTest
private class OASAbsenceUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASAbsenceUpdate absenceUpdate1 = OASAbsenceUpdate.getExample();
        OASAbsenceUpdate absenceUpdate2 = absenceUpdate1;
        OASAbsenceUpdate absenceUpdate3 = new OASAbsenceUpdate();
        OASAbsenceUpdate absenceUpdate4 = absenceUpdate3;

        System.assert(absenceUpdate1.equals(absenceUpdate2));
        System.assert(absenceUpdate2.equals(absenceUpdate1));
        System.assert(absenceUpdate1.equals(absenceUpdate1));
        System.assert(absenceUpdate3.equals(absenceUpdate4));
        System.assert(absenceUpdate4.equals(absenceUpdate3));
        System.assert(absenceUpdate3.equals(absenceUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAbsenceUpdate absenceUpdate1 = OASAbsenceUpdate.getExample();
        OASAbsenceUpdate absenceUpdate2 = OASAbsenceUpdate.getExample();
        OASAbsenceUpdate absenceUpdate3 = new OASAbsenceUpdate();
        OASAbsenceUpdate absenceUpdate4 = new OASAbsenceUpdate();

        System.assert(absenceUpdate1.equals(absenceUpdate2));
        System.assert(absenceUpdate2.equals(absenceUpdate1));
        System.assert(absenceUpdate3.equals(absenceUpdate4));
        System.assert(absenceUpdate4.equals(absenceUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAbsenceUpdate absenceUpdate1 = OASAbsenceUpdate.getExample();
        OASAbsenceUpdate absenceUpdate2 = new OASAbsenceUpdate();

        System.assertEquals(false, absenceUpdate1.equals('foo'));
        System.assertEquals(false, absenceUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAbsenceUpdate absenceUpdate1 = OASAbsenceUpdate.getExample();
        OASAbsenceUpdate absenceUpdate2 = new OASAbsenceUpdate();
        OASAbsenceUpdate absenceUpdate3;

        System.assertEquals(false, absenceUpdate1.equals(absenceUpdate3));
        System.assertEquals(false, absenceUpdate2.equals(absenceUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAbsenceUpdate absenceUpdate1 = OASAbsenceUpdate.getExample();
        OASAbsenceUpdate absenceUpdate2 = new OASAbsenceUpdate();

        System.assertEquals(absenceUpdate1.hashCode(), absenceUpdate1.hashCode());
        System.assertEquals(absenceUpdate2.hashCode(), absenceUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAbsenceUpdate absenceUpdate1 = OASAbsenceUpdate.getExample();
        OASAbsenceUpdate absenceUpdate2 = OASAbsenceUpdate.getExample();
        OASAbsenceUpdate absenceUpdate3 = new OASAbsenceUpdate();
        OASAbsenceUpdate absenceUpdate4 = new OASAbsenceUpdate();

        System.assert(absenceUpdate1.equals(absenceUpdate2));
        System.assert(absenceUpdate3.equals(absenceUpdate4));
        System.assertEquals(absenceUpdate1.hashCode(), absenceUpdate2.hashCode());
        System.assertEquals(absenceUpdate3.hashCode(), absenceUpdate4.hashCode());
    }
}
