@isTest
private class OASApiResponseTeamTest {
    @isTest
    private static void equalsSameInstance() {
        OASApiResponseTeam apiResponseTeam1 = OASApiResponseTeam.getExample();
        OASApiResponseTeam apiResponseTeam2 = apiResponseTeam1;
        OASApiResponseTeam apiResponseTeam3 = new OASApiResponseTeam();
        OASApiResponseTeam apiResponseTeam4 = apiResponseTeam3;

        System.assert(apiResponseTeam1.equals(apiResponseTeam2));
        System.assert(apiResponseTeam2.equals(apiResponseTeam1));
        System.assert(apiResponseTeam1.equals(apiResponseTeam1));
        System.assert(apiResponseTeam3.equals(apiResponseTeam4));
        System.assert(apiResponseTeam4.equals(apiResponseTeam3));
        System.assert(apiResponseTeam3.equals(apiResponseTeam3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASApiResponseTeam apiResponseTeam1 = OASApiResponseTeam.getExample();
        OASApiResponseTeam apiResponseTeam2 = OASApiResponseTeam.getExample();
        OASApiResponseTeam apiResponseTeam3 = new OASApiResponseTeam();
        OASApiResponseTeam apiResponseTeam4 = new OASApiResponseTeam();

        System.assert(apiResponseTeam1.equals(apiResponseTeam2));
        System.assert(apiResponseTeam2.equals(apiResponseTeam1));
        System.assert(apiResponseTeam3.equals(apiResponseTeam4));
        System.assert(apiResponseTeam4.equals(apiResponseTeam3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASApiResponseTeam apiResponseTeam1 = OASApiResponseTeam.getExample();
        OASApiResponseTeam apiResponseTeam2 = new OASApiResponseTeam();

        System.assertEquals(false, apiResponseTeam1.equals('foo'));
        System.assertEquals(false, apiResponseTeam2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASApiResponseTeam apiResponseTeam1 = OASApiResponseTeam.getExample();
        OASApiResponseTeam apiResponseTeam2 = new OASApiResponseTeam();
        OASApiResponseTeam apiResponseTeam3;

        System.assertEquals(false, apiResponseTeam1.equals(apiResponseTeam3));
        System.assertEquals(false, apiResponseTeam2.equals(apiResponseTeam3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASApiResponseTeam apiResponseTeam1 = OASApiResponseTeam.getExample();
        OASApiResponseTeam apiResponseTeam2 = new OASApiResponseTeam();

        System.assertEquals(apiResponseTeam1.hashCode(), apiResponseTeam1.hashCode());
        System.assertEquals(apiResponseTeam2.hashCode(), apiResponseTeam2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASApiResponseTeam apiResponseTeam1 = OASApiResponseTeam.getExample();
        OASApiResponseTeam apiResponseTeam2 = OASApiResponseTeam.getExample();
        OASApiResponseTeam apiResponseTeam3 = new OASApiResponseTeam();
        OASApiResponseTeam apiResponseTeam4 = new OASApiResponseTeam();

        System.assert(apiResponseTeam1.equals(apiResponseTeam2));
        System.assert(apiResponseTeam3.equals(apiResponseTeam4));
        System.assertEquals(apiResponseTeam1.hashCode(), apiResponseTeam2.hashCode());
        System.assertEquals(apiResponseTeam3.hashCode(), apiResponseTeam4.hashCode());
    }
}
