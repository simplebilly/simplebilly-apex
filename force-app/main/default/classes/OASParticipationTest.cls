@isTest
private class OASParticipationTest {
    @isTest
    private static void equalsSameInstance() {
        OASParticipation participation1 = OASParticipation.getExample();
        OASParticipation participation2 = participation1;
        OASParticipation participation3 = new OASParticipation();
        OASParticipation participation4 = participation3;

        System.assert(participation1.equals(participation2));
        System.assert(participation2.equals(participation1));
        System.assert(participation1.equals(participation1));
        System.assert(participation3.equals(participation4));
        System.assert(participation4.equals(participation3));
        System.assert(participation3.equals(participation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASParticipation participation1 = OASParticipation.getExample();
        OASParticipation participation2 = OASParticipation.getExample();
        OASParticipation participation3 = new OASParticipation();
        OASParticipation participation4 = new OASParticipation();

        System.assert(participation1.equals(participation2));
        System.assert(participation2.equals(participation1));
        System.assert(participation3.equals(participation4));
        System.assert(participation4.equals(participation3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASParticipation participation1 = OASParticipation.getExample();
        OASParticipation participation2 = new OASParticipation();

        System.assertEquals(false, participation1.equals('foo'));
        System.assertEquals(false, participation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASParticipation participation1 = OASParticipation.getExample();
        OASParticipation participation2 = new OASParticipation();
        OASParticipation participation3;

        System.assertEquals(false, participation1.equals(participation3));
        System.assertEquals(false, participation2.equals(participation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASParticipation participation1 = OASParticipation.getExample();
        OASParticipation participation2 = new OASParticipation();

        System.assertEquals(participation1.hashCode(), participation1.hashCode());
        System.assertEquals(participation2.hashCode(), participation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASParticipation participation1 = OASParticipation.getExample();
        OASParticipation participation2 = OASParticipation.getExample();
        OASParticipation participation3 = new OASParticipation();
        OASParticipation participation4 = new OASParticipation();

        System.assert(participation1.equals(participation2));
        System.assert(participation3.equals(participation4));
        System.assertEquals(participation1.hashCode(), participation2.hashCode());
        System.assertEquals(participation3.hashCode(), participation4.hashCode());
    }
}
