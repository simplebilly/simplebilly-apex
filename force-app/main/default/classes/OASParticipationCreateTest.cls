@isTest
private class OASParticipationCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASParticipationCreate participationCreate1 = OASParticipationCreate.getExample();
        OASParticipationCreate participationCreate2 = participationCreate1;
        OASParticipationCreate participationCreate3 = new OASParticipationCreate();
        OASParticipationCreate participationCreate4 = participationCreate3;

        System.assert(participationCreate1.equals(participationCreate2));
        System.assert(participationCreate2.equals(participationCreate1));
        System.assert(participationCreate1.equals(participationCreate1));
        System.assert(participationCreate3.equals(participationCreate4));
        System.assert(participationCreate4.equals(participationCreate3));
        System.assert(participationCreate3.equals(participationCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASParticipationCreate participationCreate1 = OASParticipationCreate.getExample();
        OASParticipationCreate participationCreate2 = OASParticipationCreate.getExample();
        OASParticipationCreate participationCreate3 = new OASParticipationCreate();
        OASParticipationCreate participationCreate4 = new OASParticipationCreate();

        System.assert(participationCreate1.equals(participationCreate2));
        System.assert(participationCreate2.equals(participationCreate1));
        System.assert(participationCreate3.equals(participationCreate4));
        System.assert(participationCreate4.equals(participationCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASParticipationCreate participationCreate1 = OASParticipationCreate.getExample();
        OASParticipationCreate participationCreate2 = new OASParticipationCreate();

        System.assertEquals(false, participationCreate1.equals('foo'));
        System.assertEquals(false, participationCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASParticipationCreate participationCreate1 = OASParticipationCreate.getExample();
        OASParticipationCreate participationCreate2 = new OASParticipationCreate();
        OASParticipationCreate participationCreate3;

        System.assertEquals(false, participationCreate1.equals(participationCreate3));
        System.assertEquals(false, participationCreate2.equals(participationCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASParticipationCreate participationCreate1 = OASParticipationCreate.getExample();
        OASParticipationCreate participationCreate2 = new OASParticipationCreate();

        System.assertEquals(participationCreate1.hashCode(), participationCreate1.hashCode());
        System.assertEquals(participationCreate2.hashCode(), participationCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASParticipationCreate participationCreate1 = OASParticipationCreate.getExample();
        OASParticipationCreate participationCreate2 = OASParticipationCreate.getExample();
        OASParticipationCreate participationCreate3 = new OASParticipationCreate();
        OASParticipationCreate participationCreate4 = new OASParticipationCreate();

        System.assert(participationCreate1.equals(participationCreate2));
        System.assert(participationCreate3.equals(participationCreate4));
        System.assertEquals(participationCreate1.hashCode(), participationCreate2.hashCode());
        System.assertEquals(participationCreate3.hashCode(), participationCreate4.hashCode());
    }
}
