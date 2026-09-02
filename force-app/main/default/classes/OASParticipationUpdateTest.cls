@isTest
private class OASParticipationUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASParticipationUpdate participationUpdate1 = OASParticipationUpdate.getExample();
        OASParticipationUpdate participationUpdate2 = participationUpdate1;
        OASParticipationUpdate participationUpdate3 = new OASParticipationUpdate();
        OASParticipationUpdate participationUpdate4 = participationUpdate3;

        System.assert(participationUpdate1.equals(participationUpdate2));
        System.assert(participationUpdate2.equals(participationUpdate1));
        System.assert(participationUpdate1.equals(participationUpdate1));
        System.assert(participationUpdate3.equals(participationUpdate4));
        System.assert(participationUpdate4.equals(participationUpdate3));
        System.assert(participationUpdate3.equals(participationUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASParticipationUpdate participationUpdate1 = OASParticipationUpdate.getExample();
        OASParticipationUpdate participationUpdate2 = OASParticipationUpdate.getExample();
        OASParticipationUpdate participationUpdate3 = new OASParticipationUpdate();
        OASParticipationUpdate participationUpdate4 = new OASParticipationUpdate();

        System.assert(participationUpdate1.equals(participationUpdate2));
        System.assert(participationUpdate2.equals(participationUpdate1));
        System.assert(participationUpdate3.equals(participationUpdate4));
        System.assert(participationUpdate4.equals(participationUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASParticipationUpdate participationUpdate1 = OASParticipationUpdate.getExample();
        OASParticipationUpdate participationUpdate2 = new OASParticipationUpdate();

        System.assertEquals(false, participationUpdate1.equals('foo'));
        System.assertEquals(false, participationUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASParticipationUpdate participationUpdate1 = OASParticipationUpdate.getExample();
        OASParticipationUpdate participationUpdate2 = new OASParticipationUpdate();
        OASParticipationUpdate participationUpdate3;

        System.assertEquals(false, participationUpdate1.equals(participationUpdate3));
        System.assertEquals(false, participationUpdate2.equals(participationUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASParticipationUpdate participationUpdate1 = OASParticipationUpdate.getExample();
        OASParticipationUpdate participationUpdate2 = new OASParticipationUpdate();

        System.assertEquals(participationUpdate1.hashCode(), participationUpdate1.hashCode());
        System.assertEquals(participationUpdate2.hashCode(), participationUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASParticipationUpdate participationUpdate1 = OASParticipationUpdate.getExample();
        OASParticipationUpdate participationUpdate2 = OASParticipationUpdate.getExample();
        OASParticipationUpdate participationUpdate3 = new OASParticipationUpdate();
        OASParticipationUpdate participationUpdate4 = new OASParticipationUpdate();

        System.assert(participationUpdate1.equals(participationUpdate2));
        System.assert(participationUpdate3.equals(participationUpdate4));
        System.assertEquals(participationUpdate1.hashCode(), participationUpdate2.hashCode());
        System.assertEquals(participationUpdate3.hashCode(), participationUpdate4.hashCode());
    }
}
