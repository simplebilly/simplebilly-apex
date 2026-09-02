@isTest
private class OASAbsenceCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASAbsenceCreate absenceCreate1 = OASAbsenceCreate.getExample();
        OASAbsenceCreate absenceCreate2 = absenceCreate1;
        OASAbsenceCreate absenceCreate3 = new OASAbsenceCreate();
        OASAbsenceCreate absenceCreate4 = absenceCreate3;

        System.assert(absenceCreate1.equals(absenceCreate2));
        System.assert(absenceCreate2.equals(absenceCreate1));
        System.assert(absenceCreate1.equals(absenceCreate1));
        System.assert(absenceCreate3.equals(absenceCreate4));
        System.assert(absenceCreate4.equals(absenceCreate3));
        System.assert(absenceCreate3.equals(absenceCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAbsenceCreate absenceCreate1 = OASAbsenceCreate.getExample();
        OASAbsenceCreate absenceCreate2 = OASAbsenceCreate.getExample();
        OASAbsenceCreate absenceCreate3 = new OASAbsenceCreate();
        OASAbsenceCreate absenceCreate4 = new OASAbsenceCreate();

        System.assert(absenceCreate1.equals(absenceCreate2));
        System.assert(absenceCreate2.equals(absenceCreate1));
        System.assert(absenceCreate3.equals(absenceCreate4));
        System.assert(absenceCreate4.equals(absenceCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAbsenceCreate absenceCreate1 = OASAbsenceCreate.getExample();
        OASAbsenceCreate absenceCreate2 = new OASAbsenceCreate();

        System.assertEquals(false, absenceCreate1.equals('foo'));
        System.assertEquals(false, absenceCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAbsenceCreate absenceCreate1 = OASAbsenceCreate.getExample();
        OASAbsenceCreate absenceCreate2 = new OASAbsenceCreate();
        OASAbsenceCreate absenceCreate3;

        System.assertEquals(false, absenceCreate1.equals(absenceCreate3));
        System.assertEquals(false, absenceCreate2.equals(absenceCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAbsenceCreate absenceCreate1 = OASAbsenceCreate.getExample();
        OASAbsenceCreate absenceCreate2 = new OASAbsenceCreate();

        System.assertEquals(absenceCreate1.hashCode(), absenceCreate1.hashCode());
        System.assertEquals(absenceCreate2.hashCode(), absenceCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAbsenceCreate absenceCreate1 = OASAbsenceCreate.getExample();
        OASAbsenceCreate absenceCreate2 = OASAbsenceCreate.getExample();
        OASAbsenceCreate absenceCreate3 = new OASAbsenceCreate();
        OASAbsenceCreate absenceCreate4 = new OASAbsenceCreate();

        System.assert(absenceCreate1.equals(absenceCreate2));
        System.assert(absenceCreate3.equals(absenceCreate4));
        System.assertEquals(absenceCreate1.hashCode(), absenceCreate2.hashCode());
        System.assertEquals(absenceCreate3.hashCode(), absenceCreate4.hashCode());
    }
}
