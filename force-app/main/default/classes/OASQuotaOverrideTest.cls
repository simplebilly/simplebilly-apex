@isTest
private class OASQuotaOverrideTest {
    @isTest
    private static void equalsSameInstance() {
        OASQuotaOverride quotaOverride1 = OASQuotaOverride.getExample();
        OASQuotaOverride quotaOverride2 = quotaOverride1;
        OASQuotaOverride quotaOverride3 = new OASQuotaOverride();
        OASQuotaOverride quotaOverride4 = quotaOverride3;

        System.assert(quotaOverride1.equals(quotaOverride2));
        System.assert(quotaOverride2.equals(quotaOverride1));
        System.assert(quotaOverride1.equals(quotaOverride1));
        System.assert(quotaOverride3.equals(quotaOverride4));
        System.assert(quotaOverride4.equals(quotaOverride3));
        System.assert(quotaOverride3.equals(quotaOverride3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQuotaOverride quotaOverride1 = OASQuotaOverride.getExample();
        OASQuotaOverride quotaOverride2 = OASQuotaOverride.getExample();
        OASQuotaOverride quotaOverride3 = new OASQuotaOverride();
        OASQuotaOverride quotaOverride4 = new OASQuotaOverride();

        System.assert(quotaOverride1.equals(quotaOverride2));
        System.assert(quotaOverride2.equals(quotaOverride1));
        System.assert(quotaOverride3.equals(quotaOverride4));
        System.assert(quotaOverride4.equals(quotaOverride3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQuotaOverride quotaOverride1 = OASQuotaOverride.getExample();
        OASQuotaOverride quotaOverride2 = new OASQuotaOverride();

        System.assertEquals(false, quotaOverride1.equals('foo'));
        System.assertEquals(false, quotaOverride2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQuotaOverride quotaOverride1 = OASQuotaOverride.getExample();
        OASQuotaOverride quotaOverride2 = new OASQuotaOverride();
        OASQuotaOverride quotaOverride3;

        System.assertEquals(false, quotaOverride1.equals(quotaOverride3));
        System.assertEquals(false, quotaOverride2.equals(quotaOverride3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQuotaOverride quotaOverride1 = OASQuotaOverride.getExample();
        OASQuotaOverride quotaOverride2 = new OASQuotaOverride();

        System.assertEquals(quotaOverride1.hashCode(), quotaOverride1.hashCode());
        System.assertEquals(quotaOverride2.hashCode(), quotaOverride2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQuotaOverride quotaOverride1 = OASQuotaOverride.getExample();
        OASQuotaOverride quotaOverride2 = OASQuotaOverride.getExample();
        OASQuotaOverride quotaOverride3 = new OASQuotaOverride();
        OASQuotaOverride quotaOverride4 = new OASQuotaOverride();

        System.assert(quotaOverride1.equals(quotaOverride2));
        System.assert(quotaOverride3.equals(quotaOverride4));
        System.assertEquals(quotaOverride1.hashCode(), quotaOverride2.hashCode());
        System.assertEquals(quotaOverride3.hashCode(), quotaOverride4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQuotaOverride quotaOverride = new OASQuotaOverride();
        Map<String, String> x-property-mappings = quotaOverride.getx-property-mappings();
        System.assertEquals('maxConnectors', x-property-mappings.get('max_connectors'));
        System.assertEquals('maxInvoicesPerMonth', x-property-mappings.get('max_invoices_per_month'));
        System.assertEquals('maxUsers', x-property-mappings.get('max_users'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQuotaOverride quotaOverride = new OASQuotaOverride();
        System.assertEquals(new Map<String, Long>(), quotaOverride.metered);
        System.assertEquals(null, quotaOverride.features);
        System.assertEquals(null, quotaOverride.maxConnectors);
        System.assertEquals(null, quotaOverride.maxInvoicesPerMonth);
        System.assertEquals(null, quotaOverride.maxUsers);
        System.assertEquals(null, quotaOverride.plan);
    }
}
