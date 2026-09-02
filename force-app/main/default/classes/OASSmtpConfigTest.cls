@isTest
private class OASSmtpConfigTest {
    @isTest
    private static void equalsSameInstance() {
        OASSmtpConfig smtpConfig1 = OASSmtpConfig.getExample();
        OASSmtpConfig smtpConfig2 = smtpConfig1;
        OASSmtpConfig smtpConfig3 = new OASSmtpConfig();
        OASSmtpConfig smtpConfig4 = smtpConfig3;

        System.assert(smtpConfig1.equals(smtpConfig2));
        System.assert(smtpConfig2.equals(smtpConfig1));
        System.assert(smtpConfig1.equals(smtpConfig1));
        System.assert(smtpConfig3.equals(smtpConfig4));
        System.assert(smtpConfig4.equals(smtpConfig3));
        System.assert(smtpConfig3.equals(smtpConfig3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSmtpConfig smtpConfig1 = OASSmtpConfig.getExample();
        OASSmtpConfig smtpConfig2 = OASSmtpConfig.getExample();
        OASSmtpConfig smtpConfig3 = new OASSmtpConfig();
        OASSmtpConfig smtpConfig4 = new OASSmtpConfig();

        System.assert(smtpConfig1.equals(smtpConfig2));
        System.assert(smtpConfig2.equals(smtpConfig1));
        System.assert(smtpConfig3.equals(smtpConfig4));
        System.assert(smtpConfig4.equals(smtpConfig3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSmtpConfig smtpConfig1 = OASSmtpConfig.getExample();
        OASSmtpConfig smtpConfig2 = new OASSmtpConfig();

        System.assertEquals(false, smtpConfig1.equals('foo'));
        System.assertEquals(false, smtpConfig2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSmtpConfig smtpConfig1 = OASSmtpConfig.getExample();
        OASSmtpConfig smtpConfig2 = new OASSmtpConfig();
        OASSmtpConfig smtpConfig3;

        System.assertEquals(false, smtpConfig1.equals(smtpConfig3));
        System.assertEquals(false, smtpConfig2.equals(smtpConfig3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSmtpConfig smtpConfig1 = OASSmtpConfig.getExample();
        OASSmtpConfig smtpConfig2 = new OASSmtpConfig();

        System.assertEquals(smtpConfig1.hashCode(), smtpConfig1.hashCode());
        System.assertEquals(smtpConfig2.hashCode(), smtpConfig2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSmtpConfig smtpConfig1 = OASSmtpConfig.getExample();
        OASSmtpConfig smtpConfig2 = OASSmtpConfig.getExample();
        OASSmtpConfig smtpConfig3 = new OASSmtpConfig();
        OASSmtpConfig smtpConfig4 = new OASSmtpConfig();

        System.assert(smtpConfig1.equals(smtpConfig2));
        System.assert(smtpConfig3.equals(smtpConfig4));
        System.assertEquals(smtpConfig1.hashCode(), smtpConfig2.hashCode());
        System.assertEquals(smtpConfig3.hashCode(), smtpConfig4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSmtpConfig smtpConfig = new OASSmtpConfig();
        Map<String, String> x-property-mappings = smtpConfig.getx-property-mappings();
        System.assertEquals('fromAddress', x-property-mappings.get('from_address'));
        System.assertEquals('fromName', x-property-mappings.get('from_name'));
        System.assertEquals('timeoutSeconds', x-property-mappings.get('timeout_seconds'));
    }
}
