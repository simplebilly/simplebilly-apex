@isTest
private class OASApiResponseVecTeamTest {
    @isTest
    private static void equalsSameInstance() {
        OASApiResponseVecTeam apiResponseVecTeam1 = OASApiResponseVecTeam.getExample();
        OASApiResponseVecTeam apiResponseVecTeam2 = apiResponseVecTeam1;
        OASApiResponseVecTeam apiResponseVecTeam3 = new OASApiResponseVecTeam();
        OASApiResponseVecTeam apiResponseVecTeam4 = apiResponseVecTeam3;

        System.assert(apiResponseVecTeam1.equals(apiResponseVecTeam2));
        System.assert(apiResponseVecTeam2.equals(apiResponseVecTeam1));
        System.assert(apiResponseVecTeam1.equals(apiResponseVecTeam1));
        System.assert(apiResponseVecTeam3.equals(apiResponseVecTeam4));
        System.assert(apiResponseVecTeam4.equals(apiResponseVecTeam3));
        System.assert(apiResponseVecTeam3.equals(apiResponseVecTeam3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASApiResponseVecTeam apiResponseVecTeam1 = OASApiResponseVecTeam.getExample();
        OASApiResponseVecTeam apiResponseVecTeam2 = OASApiResponseVecTeam.getExample();
        OASApiResponseVecTeam apiResponseVecTeam3 = new OASApiResponseVecTeam();
        OASApiResponseVecTeam apiResponseVecTeam4 = new OASApiResponseVecTeam();

        System.assert(apiResponseVecTeam1.equals(apiResponseVecTeam2));
        System.assert(apiResponseVecTeam2.equals(apiResponseVecTeam1));
        System.assert(apiResponseVecTeam3.equals(apiResponseVecTeam4));
        System.assert(apiResponseVecTeam4.equals(apiResponseVecTeam3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASApiResponseVecTeam apiResponseVecTeam1 = OASApiResponseVecTeam.getExample();
        OASApiResponseVecTeam apiResponseVecTeam2 = new OASApiResponseVecTeam();

        System.assertEquals(false, apiResponseVecTeam1.equals('foo'));
        System.assertEquals(false, apiResponseVecTeam2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASApiResponseVecTeam apiResponseVecTeam1 = OASApiResponseVecTeam.getExample();
        OASApiResponseVecTeam apiResponseVecTeam2 = new OASApiResponseVecTeam();
        OASApiResponseVecTeam apiResponseVecTeam3;

        System.assertEquals(false, apiResponseVecTeam1.equals(apiResponseVecTeam3));
        System.assertEquals(false, apiResponseVecTeam2.equals(apiResponseVecTeam3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASApiResponseVecTeam apiResponseVecTeam1 = OASApiResponseVecTeam.getExample();
        OASApiResponseVecTeam apiResponseVecTeam2 = new OASApiResponseVecTeam();

        System.assertEquals(apiResponseVecTeam1.hashCode(), apiResponseVecTeam1.hashCode());
        System.assertEquals(apiResponseVecTeam2.hashCode(), apiResponseVecTeam2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASApiResponseVecTeam apiResponseVecTeam1 = OASApiResponseVecTeam.getExample();
        OASApiResponseVecTeam apiResponseVecTeam2 = OASApiResponseVecTeam.getExample();
        OASApiResponseVecTeam apiResponseVecTeam3 = new OASApiResponseVecTeam();
        OASApiResponseVecTeam apiResponseVecTeam4 = new OASApiResponseVecTeam();

        System.assert(apiResponseVecTeam1.equals(apiResponseVecTeam2));
        System.assert(apiResponseVecTeam3.equals(apiResponseVecTeam4));
        System.assertEquals(apiResponseVecTeam1.hashCode(), apiResponseVecTeam2.hashCode());
        System.assertEquals(apiResponseVecTeam3.hashCode(), apiResponseVecTeam4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASApiResponseVecTeam apiResponseVecTeam = new OASApiResponseVecTeam();
        System.assertEquals(new List<OASApiResponseTeamData>(), apiResponseVecTeam.data);
        System.assertEquals(null, apiResponseVecTeam.error);
        System.assertEquals(null, apiResponseVecTeam.message);
        System.assertEquals(null, apiResponseVecTeam.success);
    }
}
