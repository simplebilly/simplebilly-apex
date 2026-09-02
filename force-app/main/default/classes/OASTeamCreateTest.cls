@isTest
private class OASTeamCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASTeamCreate teamCreate1 = OASTeamCreate.getExample();
        OASTeamCreate teamCreate2 = teamCreate1;
        OASTeamCreate teamCreate3 = new OASTeamCreate();
        OASTeamCreate teamCreate4 = teamCreate3;

        System.assert(teamCreate1.equals(teamCreate2));
        System.assert(teamCreate2.equals(teamCreate1));
        System.assert(teamCreate1.equals(teamCreate1));
        System.assert(teamCreate3.equals(teamCreate4));
        System.assert(teamCreate4.equals(teamCreate3));
        System.assert(teamCreate3.equals(teamCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTeamCreate teamCreate1 = OASTeamCreate.getExample();
        OASTeamCreate teamCreate2 = OASTeamCreate.getExample();
        OASTeamCreate teamCreate3 = new OASTeamCreate();
        OASTeamCreate teamCreate4 = new OASTeamCreate();

        System.assert(teamCreate1.equals(teamCreate2));
        System.assert(teamCreate2.equals(teamCreate1));
        System.assert(teamCreate3.equals(teamCreate4));
        System.assert(teamCreate4.equals(teamCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTeamCreate teamCreate1 = OASTeamCreate.getExample();
        OASTeamCreate teamCreate2 = new OASTeamCreate();

        System.assertEquals(false, teamCreate1.equals('foo'));
        System.assertEquals(false, teamCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTeamCreate teamCreate1 = OASTeamCreate.getExample();
        OASTeamCreate teamCreate2 = new OASTeamCreate();
        OASTeamCreate teamCreate3;

        System.assertEquals(false, teamCreate1.equals(teamCreate3));
        System.assertEquals(false, teamCreate2.equals(teamCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTeamCreate teamCreate1 = OASTeamCreate.getExample();
        OASTeamCreate teamCreate2 = new OASTeamCreate();

        System.assertEquals(teamCreate1.hashCode(), teamCreate1.hashCode());
        System.assertEquals(teamCreate2.hashCode(), teamCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTeamCreate teamCreate1 = OASTeamCreate.getExample();
        OASTeamCreate teamCreate2 = OASTeamCreate.getExample();
        OASTeamCreate teamCreate3 = new OASTeamCreate();
        OASTeamCreate teamCreate4 = new OASTeamCreate();

        System.assert(teamCreate1.equals(teamCreate2));
        System.assert(teamCreate3.equals(teamCreate4));
        System.assertEquals(teamCreate1.hashCode(), teamCreate2.hashCode());
        System.assertEquals(teamCreate3.hashCode(), teamCreate4.hashCode());
    }
}
