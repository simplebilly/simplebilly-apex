@isTest
private class OASQuotaOverrideFeaturesTest {
    @isTest
    private static void equalsSameInstance() {
        OASQuotaOverrideFeatures quotaOverrideFeatures1 = OASQuotaOverrideFeatures.getExample();
        OASQuotaOverrideFeatures quotaOverrideFeatures2 = quotaOverrideFeatures1;
        OASQuotaOverrideFeatures quotaOverrideFeatures3 = new OASQuotaOverrideFeatures();
        OASQuotaOverrideFeatures quotaOverrideFeatures4 = quotaOverrideFeatures3;

        System.assert(quotaOverrideFeatures1.equals(quotaOverrideFeatures2));
        System.assert(quotaOverrideFeatures2.equals(quotaOverrideFeatures1));
        System.assert(quotaOverrideFeatures1.equals(quotaOverrideFeatures1));
        System.assert(quotaOverrideFeatures3.equals(quotaOverrideFeatures4));
        System.assert(quotaOverrideFeatures4.equals(quotaOverrideFeatures3));
        System.assert(quotaOverrideFeatures3.equals(quotaOverrideFeatures3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQuotaOverrideFeatures quotaOverrideFeatures1 = OASQuotaOverrideFeatures.getExample();
        OASQuotaOverrideFeatures quotaOverrideFeatures2 = OASQuotaOverrideFeatures.getExample();
        OASQuotaOverrideFeatures quotaOverrideFeatures3 = new OASQuotaOverrideFeatures();
        OASQuotaOverrideFeatures quotaOverrideFeatures4 = new OASQuotaOverrideFeatures();

        System.assert(quotaOverrideFeatures1.equals(quotaOverrideFeatures2));
        System.assert(quotaOverrideFeatures2.equals(quotaOverrideFeatures1));
        System.assert(quotaOverrideFeatures3.equals(quotaOverrideFeatures4));
        System.assert(quotaOverrideFeatures4.equals(quotaOverrideFeatures3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQuotaOverrideFeatures quotaOverrideFeatures1 = OASQuotaOverrideFeatures.getExample();
        OASQuotaOverrideFeatures quotaOverrideFeatures2 = new OASQuotaOverrideFeatures();

        System.assertEquals(false, quotaOverrideFeatures1.equals('foo'));
        System.assertEquals(false, quotaOverrideFeatures2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQuotaOverrideFeatures quotaOverrideFeatures1 = OASQuotaOverrideFeatures.getExample();
        OASQuotaOverrideFeatures quotaOverrideFeatures2 = new OASQuotaOverrideFeatures();
        OASQuotaOverrideFeatures quotaOverrideFeatures3;

        System.assertEquals(false, quotaOverrideFeatures1.equals(quotaOverrideFeatures3));
        System.assertEquals(false, quotaOverrideFeatures2.equals(quotaOverrideFeatures3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQuotaOverrideFeatures quotaOverrideFeatures1 = OASQuotaOverrideFeatures.getExample();
        OASQuotaOverrideFeatures quotaOverrideFeatures2 = new OASQuotaOverrideFeatures();

        System.assertEquals(quotaOverrideFeatures1.hashCode(), quotaOverrideFeatures1.hashCode());
        System.assertEquals(quotaOverrideFeatures2.hashCode(), quotaOverrideFeatures2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQuotaOverrideFeatures quotaOverrideFeatures1 = OASQuotaOverrideFeatures.getExample();
        OASQuotaOverrideFeatures quotaOverrideFeatures2 = OASQuotaOverrideFeatures.getExample();
        OASQuotaOverrideFeatures quotaOverrideFeatures3 = new OASQuotaOverrideFeatures();
        OASQuotaOverrideFeatures quotaOverrideFeatures4 = new OASQuotaOverrideFeatures();

        System.assert(quotaOverrideFeatures1.equals(quotaOverrideFeatures2));
        System.assert(quotaOverrideFeatures3.equals(quotaOverrideFeatures4));
        System.assertEquals(quotaOverrideFeatures1.hashCode(), quotaOverrideFeatures2.hashCode());
        System.assertEquals(quotaOverrideFeatures3.hashCode(), quotaOverrideFeatures4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQuotaOverrideFeatures quotaOverrideFeatures = new OASQuotaOverrideFeatures();
        Map<String, String> x-property-mappings = quotaOverrideFeatures.getx-property-mappings();
        System.assertEquals('fancyReports', x-property-mappings.get('fancy_reports'));
        System.assertEquals('taxAutomations', x-property-mappings.get('tax_automations'));
    }
}
