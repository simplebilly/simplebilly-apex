@isTest
private class OASGdprExportTest {
    @isTest
    private static void equalsSameInstance() {
        OASGdprExport gdprExport1 = OASGdprExport.getExample();
        OASGdprExport gdprExport2 = gdprExport1;
        OASGdprExport gdprExport3 = new OASGdprExport();
        OASGdprExport gdprExport4 = gdprExport3;

        System.assert(gdprExport1.equals(gdprExport2));
        System.assert(gdprExport2.equals(gdprExport1));
        System.assert(gdprExport1.equals(gdprExport1));
        System.assert(gdprExport3.equals(gdprExport4));
        System.assert(gdprExport4.equals(gdprExport3));
        System.assert(gdprExport3.equals(gdprExport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGdprExport gdprExport1 = OASGdprExport.getExample();
        OASGdprExport gdprExport2 = OASGdprExport.getExample();
        OASGdprExport gdprExport3 = new OASGdprExport();
        OASGdprExport gdprExport4 = new OASGdprExport();

        System.assert(gdprExport1.equals(gdprExport2));
        System.assert(gdprExport2.equals(gdprExport1));
        System.assert(gdprExport3.equals(gdprExport4));
        System.assert(gdprExport4.equals(gdprExport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGdprExport gdprExport1 = OASGdprExport.getExample();
        OASGdprExport gdprExport2 = new OASGdprExport();

        System.assertEquals(false, gdprExport1.equals('foo'));
        System.assertEquals(false, gdprExport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGdprExport gdprExport1 = OASGdprExport.getExample();
        OASGdprExport gdprExport2 = new OASGdprExport();
        OASGdprExport gdprExport3;

        System.assertEquals(false, gdprExport1.equals(gdprExport3));
        System.assertEquals(false, gdprExport2.equals(gdprExport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGdprExport gdprExport1 = OASGdprExport.getExample();
        OASGdprExport gdprExport2 = new OASGdprExport();

        System.assertEquals(gdprExport1.hashCode(), gdprExport1.hashCode());
        System.assertEquals(gdprExport2.hashCode(), gdprExport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGdprExport gdprExport1 = OASGdprExport.getExample();
        OASGdprExport gdprExport2 = OASGdprExport.getExample();
        OASGdprExport gdprExport3 = new OASGdprExport();
        OASGdprExport gdprExport4 = new OASGdprExport();

        System.assert(gdprExport1.equals(gdprExport2));
        System.assert(gdprExport3.equals(gdprExport4));
        System.assertEquals(gdprExport1.hashCode(), gdprExport2.hashCode());
        System.assertEquals(gdprExport3.hashCode(), gdprExport4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGdprExport gdprExport = new OASGdprExport();
        System.assertEquals(new List<OASGdprActivity>(), gdprExport.activityLog);
        System.assertEquals(new List<OASGdprApiKey>(), gdprExport.apiKeys);
        System.assertEquals(new List<OASGdprBillingInfo>(), gdprExport.billing);
        System.assertEquals(new List<OASGdprNotification>(), gdprExport.notifications);
        System.assertEquals(new List<OASGdprRefreshToken>(), gdprExport.refreshTokens);
        System.assertEquals(new List<OASGdprTenant>(), gdprExport.tenants);
        System.assertEquals(new List<OASGdprUsageEvent>(), gdprExport.usageEvents);
        System.assertEquals(null, gdprExport.exportedAt);
        System.assertEquals(null, gdprExport.generatedByAi);
        System.assertEquals(null, gdprExport.user);
    }
}
