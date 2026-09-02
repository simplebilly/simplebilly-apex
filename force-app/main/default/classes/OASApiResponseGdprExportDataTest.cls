@isTest
private class OASApiResponseGdprExportDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASApiResponseGdprExportData apiResponseGdprExportData1 = OASApiResponseGdprExportData.getExample();
        OASApiResponseGdprExportData apiResponseGdprExportData2 = apiResponseGdprExportData1;
        OASApiResponseGdprExportData apiResponseGdprExportData3 = new OASApiResponseGdprExportData();
        OASApiResponseGdprExportData apiResponseGdprExportData4 = apiResponseGdprExportData3;

        System.assert(apiResponseGdprExportData1.equals(apiResponseGdprExportData2));
        System.assert(apiResponseGdprExportData2.equals(apiResponseGdprExportData1));
        System.assert(apiResponseGdprExportData1.equals(apiResponseGdprExportData1));
        System.assert(apiResponseGdprExportData3.equals(apiResponseGdprExportData4));
        System.assert(apiResponseGdprExportData4.equals(apiResponseGdprExportData3));
        System.assert(apiResponseGdprExportData3.equals(apiResponseGdprExportData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASApiResponseGdprExportData apiResponseGdprExportData1 = OASApiResponseGdprExportData.getExample();
        OASApiResponseGdprExportData apiResponseGdprExportData2 = OASApiResponseGdprExportData.getExample();
        OASApiResponseGdprExportData apiResponseGdprExportData3 = new OASApiResponseGdprExportData();
        OASApiResponseGdprExportData apiResponseGdprExportData4 = new OASApiResponseGdprExportData();

        System.assert(apiResponseGdprExportData1.equals(apiResponseGdprExportData2));
        System.assert(apiResponseGdprExportData2.equals(apiResponseGdprExportData1));
        System.assert(apiResponseGdprExportData3.equals(apiResponseGdprExportData4));
        System.assert(apiResponseGdprExportData4.equals(apiResponseGdprExportData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASApiResponseGdprExportData apiResponseGdprExportData1 = OASApiResponseGdprExportData.getExample();
        OASApiResponseGdprExportData apiResponseGdprExportData2 = new OASApiResponseGdprExportData();

        System.assertEquals(false, apiResponseGdprExportData1.equals('foo'));
        System.assertEquals(false, apiResponseGdprExportData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASApiResponseGdprExportData apiResponseGdprExportData1 = OASApiResponseGdprExportData.getExample();
        OASApiResponseGdprExportData apiResponseGdprExportData2 = new OASApiResponseGdprExportData();
        OASApiResponseGdprExportData apiResponseGdprExportData3;

        System.assertEquals(false, apiResponseGdprExportData1.equals(apiResponseGdprExportData3));
        System.assertEquals(false, apiResponseGdprExportData2.equals(apiResponseGdprExportData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASApiResponseGdprExportData apiResponseGdprExportData1 = OASApiResponseGdprExportData.getExample();
        OASApiResponseGdprExportData apiResponseGdprExportData2 = new OASApiResponseGdprExportData();

        System.assertEquals(apiResponseGdprExportData1.hashCode(), apiResponseGdprExportData1.hashCode());
        System.assertEquals(apiResponseGdprExportData2.hashCode(), apiResponseGdprExportData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASApiResponseGdprExportData apiResponseGdprExportData1 = OASApiResponseGdprExportData.getExample();
        OASApiResponseGdprExportData apiResponseGdprExportData2 = OASApiResponseGdprExportData.getExample();
        OASApiResponseGdprExportData apiResponseGdprExportData3 = new OASApiResponseGdprExportData();
        OASApiResponseGdprExportData apiResponseGdprExportData4 = new OASApiResponseGdprExportData();

        System.assert(apiResponseGdprExportData1.equals(apiResponseGdprExportData2));
        System.assert(apiResponseGdprExportData3.equals(apiResponseGdprExportData4));
        System.assertEquals(apiResponseGdprExportData1.hashCode(), apiResponseGdprExportData2.hashCode());
        System.assertEquals(apiResponseGdprExportData3.hashCode(), apiResponseGdprExportData4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASApiResponseGdprExportData apiResponseGdprExportData = new OASApiResponseGdprExportData();
        System.assertEquals(new List<OASGdprActivity>(), apiResponseGdprExportData.activityLog);
        System.assertEquals(new List<OASGdprApiKey>(), apiResponseGdprExportData.apiKeys);
        System.assertEquals(new List<OASGdprBillingInfo>(), apiResponseGdprExportData.billing);
        System.assertEquals(new List<OASGdprNotification>(), apiResponseGdprExportData.notifications);
        System.assertEquals(new List<OASGdprRefreshToken>(), apiResponseGdprExportData.refreshTokens);
        System.assertEquals(new List<OASGdprTenant>(), apiResponseGdprExportData.tenants);
        System.assertEquals(new List<OASGdprUsageEvent>(), apiResponseGdprExportData.usageEvents);
        System.assertEquals(null, apiResponseGdprExportData.exportedAt);
        System.assertEquals(null, apiResponseGdprExportData.generatedByAi);
        System.assertEquals(null, apiResponseGdprExportData.user);
    }
}
