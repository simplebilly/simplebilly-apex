@isTest
private class OASAbsenceTest {
    @isTest
    private static void equalsSameInstance() {
        OASAbsence absence1 = OASAbsence.getExample();
        OASAbsence absence2 = absence1;
        OASAbsence absence3 = new OASAbsence();
        OASAbsence absence4 = absence3;

        System.assert(absence1.equals(absence2));
        System.assert(absence2.equals(absence1));
        System.assert(absence1.equals(absence1));
        System.assert(absence3.equals(absence4));
        System.assert(absence4.equals(absence3));
        System.assert(absence3.equals(absence3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAbsence absence1 = OASAbsence.getExample();
        OASAbsence absence2 = OASAbsence.getExample();
        OASAbsence absence3 = new OASAbsence();
        OASAbsence absence4 = new OASAbsence();

        System.assert(absence1.equals(absence2));
        System.assert(absence2.equals(absence1));
        System.assert(absence3.equals(absence4));
        System.assert(absence4.equals(absence3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAbsence absence1 = OASAbsence.getExample();
        OASAbsence absence2 = new OASAbsence();

        System.assertEquals(false, absence1.equals('foo'));
        System.assertEquals(false, absence2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAbsence absence1 = OASAbsence.getExample();
        OASAbsence absence2 = new OASAbsence();
        OASAbsence absence3;

        System.assertEquals(false, absence1.equals(absence3));
        System.assertEquals(false, absence2.equals(absence3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAbsence absence1 = OASAbsence.getExample();
        OASAbsence absence2 = new OASAbsence();

        System.assertEquals(absence1.hashCode(), absence1.hashCode());
        System.assertEquals(absence2.hashCode(), absence2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAbsence absence1 = OASAbsence.getExample();
        OASAbsence absence2 = OASAbsence.getExample();
        OASAbsence absence3 = new OASAbsence();
        OASAbsence absence4 = new OASAbsence();

        System.assert(absence1.equals(absence2));
        System.assert(absence3.equals(absence4));
        System.assertEquals(absence1.hashCode(), absence2.hashCode());
        System.assertEquals(absence3.hashCode(), absence4.hashCode());
    }
}
