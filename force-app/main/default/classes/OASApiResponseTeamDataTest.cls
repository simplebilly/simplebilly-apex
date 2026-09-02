@isTest
private class OASApiResponseTeamDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASApiResponseTeamData apiResponseTeamData1 = OASApiResponseTeamData.getExample();
        OASApiResponseTeamData apiResponseTeamData2 = apiResponseTeamData1;
        OASApiResponseTeamData apiResponseTeamData3 = new OASApiResponseTeamData();
        OASApiResponseTeamData apiResponseTeamData4 = apiResponseTeamData3;

        System.assert(apiResponseTeamData1.equals(apiResponseTeamData2));
        System.assert(apiResponseTeamData2.equals(apiResponseTeamData1));
        System.assert(apiResponseTeamData1.equals(apiResponseTeamData1));
        System.assert(apiResponseTeamData3.equals(apiResponseTeamData4));
        System.assert(apiResponseTeamData4.equals(apiResponseTeamData3));
        System.assert(apiResponseTeamData3.equals(apiResponseTeamData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASApiResponseTeamData apiResponseTeamData1 = OASApiResponseTeamData.getExample();
        OASApiResponseTeamData apiResponseTeamData2 = OASApiResponseTeamData.getExample();
        OASApiResponseTeamData apiResponseTeamData3 = new OASApiResponseTeamData();
        OASApiResponseTeamData apiResponseTeamData4 = new OASApiResponseTeamData();

        System.assert(apiResponseTeamData1.equals(apiResponseTeamData2));
        System.assert(apiResponseTeamData2.equals(apiResponseTeamData1));
        System.assert(apiResponseTeamData3.equals(apiResponseTeamData4));
        System.assert(apiResponseTeamData4.equals(apiResponseTeamData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASApiResponseTeamData apiResponseTeamData1 = OASApiResponseTeamData.getExample();
        OASApiResponseTeamData apiResponseTeamData2 = new OASApiResponseTeamData();

        System.assertEquals(false, apiResponseTeamData1.equals('foo'));
        System.assertEquals(false, apiResponseTeamData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASApiResponseTeamData apiResponseTeamData1 = OASApiResponseTeamData.getExample();
        OASApiResponseTeamData apiResponseTeamData2 = new OASApiResponseTeamData();
        OASApiResponseTeamData apiResponseTeamData3;

        System.assertEquals(false, apiResponseTeamData1.equals(apiResponseTeamData3));
        System.assertEquals(false, apiResponseTeamData2.equals(apiResponseTeamData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASApiResponseTeamData apiResponseTeamData1 = OASApiResponseTeamData.getExample();
        OASApiResponseTeamData apiResponseTeamData2 = new OASApiResponseTeamData();

        System.assertEquals(apiResponseTeamData1.hashCode(), apiResponseTeamData1.hashCode());
        System.assertEquals(apiResponseTeamData2.hashCode(), apiResponseTeamData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASApiResponseTeamData apiResponseTeamData1 = OASApiResponseTeamData.getExample();
        OASApiResponseTeamData apiResponseTeamData2 = OASApiResponseTeamData.getExample();
        OASApiResponseTeamData apiResponseTeamData3 = new OASApiResponseTeamData();
        OASApiResponseTeamData apiResponseTeamData4 = new OASApiResponseTeamData();

        System.assert(apiResponseTeamData1.equals(apiResponseTeamData2));
        System.assert(apiResponseTeamData3.equals(apiResponseTeamData4));
        System.assertEquals(apiResponseTeamData1.hashCode(), apiResponseTeamData2.hashCode());
        System.assertEquals(apiResponseTeamData3.hashCode(), apiResponseTeamData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASApiResponseTeamData apiResponseTeamData = new OASApiResponseTeamData();
        Map<String, String> x-property-mappings = apiResponseTeamData.getx-property-mappings();
        System.assertEquals('createdAt', x-property-mappings.get('created_at'));
        System.assertEquals('parentTeamId', x-property-mappings.get('parent_team_id'));
        System.assertEquals('tenantId', x-property-mappings.get('tenant_id'));
        System.assertEquals('updatedAt', x-property-mappings.get('updated_at'));
    }
}
