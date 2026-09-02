@isTest
private class OASBankLookupTest {
    @isTest
    private static void equalsSameInstance() {
        OASBankLookup bankLookup1 = OASBankLookup.getExample();
        OASBankLookup bankLookup2 = bankLookup1;
        OASBankLookup bankLookup3 = new OASBankLookup();
        OASBankLookup bankLookup4 = bankLookup3;

        System.assert(bankLookup1.equals(bankLookup2));
        System.assert(bankLookup2.equals(bankLookup1));
        System.assert(bankLookup1.equals(bankLookup1));
        System.assert(bankLookup3.equals(bankLookup4));
        System.assert(bankLookup4.equals(bankLookup3));
        System.assert(bankLookup3.equals(bankLookup3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBankLookup bankLookup1 = OASBankLookup.getExample();
        OASBankLookup bankLookup2 = OASBankLookup.getExample();
        OASBankLookup bankLookup3 = new OASBankLookup();
        OASBankLookup bankLookup4 = new OASBankLookup();

        System.assert(bankLookup1.equals(bankLookup2));
        System.assert(bankLookup2.equals(bankLookup1));
        System.assert(bankLookup3.equals(bankLookup4));
        System.assert(bankLookup4.equals(bankLookup3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBankLookup bankLookup1 = OASBankLookup.getExample();
        OASBankLookup bankLookup2 = new OASBankLookup();

        System.assertEquals(false, bankLookup1.equals('foo'));
        System.assertEquals(false, bankLookup2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBankLookup bankLookup1 = OASBankLookup.getExample();
        OASBankLookup bankLookup2 = new OASBankLookup();
        OASBankLookup bankLookup3;

        System.assertEquals(false, bankLookup1.equals(bankLookup3));
        System.assertEquals(false, bankLookup2.equals(bankLookup3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBankLookup bankLookup1 = OASBankLookup.getExample();
        OASBankLookup bankLookup2 = new OASBankLookup();

        System.assertEquals(bankLookup1.hashCode(), bankLookup1.hashCode());
        System.assertEquals(bankLookup2.hashCode(), bankLookup2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBankLookup bankLookup1 = OASBankLookup.getExample();
        OASBankLookup bankLookup2 = OASBankLookup.getExample();
        OASBankLookup bankLookup3 = new OASBankLookup();
        OASBankLookup bankLookup4 = new OASBankLookup();

        System.assert(bankLookup1.equals(bankLookup2));
        System.assert(bankLookup3.equals(bankLookup4));
        System.assertEquals(bankLookup1.hashCode(), bankLookup2.hashCode());
        System.assertEquals(bankLookup3.hashCode(), bankLookup4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBankLookup bankLookup = new OASBankLookup();
        Map<String, String> x-property-mappings = bankLookup.getx-property-mappings();
        System.assertEquals('bankName', x-property-mappings.get('bank_name'));
        System.assertEquals('nextgenpsd2Url', x-property-mappings.get('nextgenpsd2_url'));
        System.assertEquals('psd2Supported', x-property-mappings.get('psd2_supported'));
    }
}
