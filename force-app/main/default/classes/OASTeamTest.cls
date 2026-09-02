@isTest
private class OASTeamTest {
    @isTest
    private static void equalsSameInstance() {
        OASTeam team1 = OASTeam.getExample();
        OASTeam team2 = team1;
        OASTeam team3 = new OASTeam();
        OASTeam team4 = team3;

        System.assert(team1.equals(team2));
        System.assert(team2.equals(team1));
        System.assert(team1.equals(team1));
        System.assert(team3.equals(team4));
        System.assert(team4.equals(team3));
        System.assert(team3.equals(team3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTeam team1 = OASTeam.getExample();
        OASTeam team2 = OASTeam.getExample();
        OASTeam team3 = new OASTeam();
        OASTeam team4 = new OASTeam();

        System.assert(team1.equals(team2));
        System.assert(team2.equals(team1));
        System.assert(team3.equals(team4));
        System.assert(team4.equals(team3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTeam team1 = OASTeam.getExample();
        OASTeam team2 = new OASTeam();

        System.assertEquals(false, team1.equals('foo'));
        System.assertEquals(false, team2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTeam team1 = OASTeam.getExample();
        OASTeam team2 = new OASTeam();
        OASTeam team3;

        System.assertEquals(false, team1.equals(team3));
        System.assertEquals(false, team2.equals(team3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTeam team1 = OASTeam.getExample();
        OASTeam team2 = new OASTeam();

        System.assertEquals(team1.hashCode(), team1.hashCode());
        System.assertEquals(team2.hashCode(), team2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTeam team1 = OASTeam.getExample();
        OASTeam team2 = OASTeam.getExample();
        OASTeam team3 = new OASTeam();
        OASTeam team4 = new OASTeam();

        System.assert(team1.equals(team2));
        System.assert(team3.equals(team4));
        System.assertEquals(team1.hashCode(), team2.hashCode());
        System.assertEquals(team3.hashCode(), team4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTeam team = new OASTeam();
        Map<String, String> x-property-mappings = team.getx-property-mappings();
        System.assertEquals('createdAt', x-property-mappings.get('created_at'));
        System.assertEquals('parentTeamId', x-property-mappings.get('parent_team_id'));
        System.assertEquals('tenantId', x-property-mappings.get('tenant_id'));
        System.assertEquals('updatedAt', x-property-mappings.get('updated_at'));
    }
}
