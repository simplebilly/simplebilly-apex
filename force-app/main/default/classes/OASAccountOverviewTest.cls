@isTest
private class OASAccountOverviewTest {
    @isTest
    private static void equalsSameInstance() {
        OASAccountOverview accountOverview1 = OASAccountOverview.getExample();
        OASAccountOverview accountOverview2 = accountOverview1;
        OASAccountOverview accountOverview3 = new OASAccountOverview();
        OASAccountOverview accountOverview4 = accountOverview3;

        System.assert(accountOverview1.equals(accountOverview2));
        System.assert(accountOverview2.equals(accountOverview1));
        System.assert(accountOverview1.equals(accountOverview1));
        System.assert(accountOverview3.equals(accountOverview4));
        System.assert(accountOverview4.equals(accountOverview3));
        System.assert(accountOverview3.equals(accountOverview3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAccountOverview accountOverview1 = OASAccountOverview.getExample();
        OASAccountOverview accountOverview2 = OASAccountOverview.getExample();
        OASAccountOverview accountOverview3 = new OASAccountOverview();
        OASAccountOverview accountOverview4 = new OASAccountOverview();

        System.assert(accountOverview1.equals(accountOverview2));
        System.assert(accountOverview2.equals(accountOverview1));
        System.assert(accountOverview3.equals(accountOverview4));
        System.assert(accountOverview4.equals(accountOverview3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAccountOverview accountOverview1 = OASAccountOverview.getExample();
        OASAccountOverview accountOverview2 = new OASAccountOverview();

        System.assertEquals(false, accountOverview1.equals('foo'));
        System.assertEquals(false, accountOverview2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAccountOverview accountOverview1 = OASAccountOverview.getExample();
        OASAccountOverview accountOverview2 = new OASAccountOverview();
        OASAccountOverview accountOverview3;

        System.assertEquals(false, accountOverview1.equals(accountOverview3));
        System.assertEquals(false, accountOverview2.equals(accountOverview3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAccountOverview accountOverview1 = OASAccountOverview.getExample();
        OASAccountOverview accountOverview2 = new OASAccountOverview();

        System.assertEquals(accountOverview1.hashCode(), accountOverview1.hashCode());
        System.assertEquals(accountOverview2.hashCode(), accountOverview2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAccountOverview accountOverview1 = OASAccountOverview.getExample();
        OASAccountOverview accountOverview2 = OASAccountOverview.getExample();
        OASAccountOverview accountOverview3 = new OASAccountOverview();
        OASAccountOverview accountOverview4 = new OASAccountOverview();

        System.assert(accountOverview1.equals(accountOverview2));
        System.assert(accountOverview3.equals(accountOverview4));
        System.assertEquals(accountOverview1.hashCode(), accountOverview2.hashCode());
        System.assertEquals(accountOverview3.hashCode(), accountOverview4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAccountOverview accountOverview = new OASAccountOverview();
        Map<String, String> x-property-mappings = accountOverview.getx-property-mappings();
        System.assertEquals('accountName', x-property-mappings.get('account_name'));
        System.assertEquals('creditTotal', x-property-mappings.get('credit_total'));
        System.assertEquals('debitTotal', x-property-mappings.get('debit_total'));
    }
}
