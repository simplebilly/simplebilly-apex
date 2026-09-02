@isTest
private class OASTenantSettingsTest {
    @isTest
    private static void equalsSameInstance() {
        OASTenantSettings tenantSettings1 = OASTenantSettings.getExample();
        OASTenantSettings tenantSettings2 = tenantSettings1;
        OASTenantSettings tenantSettings3 = new OASTenantSettings();
        OASTenantSettings tenantSettings4 = tenantSettings3;

        System.assert(tenantSettings1.equals(tenantSettings2));
        System.assert(tenantSettings2.equals(tenantSettings1));
        System.assert(tenantSettings1.equals(tenantSettings1));
        System.assert(tenantSettings3.equals(tenantSettings4));
        System.assert(tenantSettings4.equals(tenantSettings3));
        System.assert(tenantSettings3.equals(tenantSettings3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTenantSettings tenantSettings1 = OASTenantSettings.getExample();
        OASTenantSettings tenantSettings2 = OASTenantSettings.getExample();
        OASTenantSettings tenantSettings3 = new OASTenantSettings();
        OASTenantSettings tenantSettings4 = new OASTenantSettings();

        System.assert(tenantSettings1.equals(tenantSettings2));
        System.assert(tenantSettings2.equals(tenantSettings1));
        System.assert(tenantSettings3.equals(tenantSettings4));
        System.assert(tenantSettings4.equals(tenantSettings3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTenantSettings tenantSettings1 = OASTenantSettings.getExample();
        OASTenantSettings tenantSettings2 = new OASTenantSettings();

        System.assertEquals(false, tenantSettings1.equals('foo'));
        System.assertEquals(false, tenantSettings2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTenantSettings tenantSettings1 = OASTenantSettings.getExample();
        OASTenantSettings tenantSettings2 = new OASTenantSettings();
        OASTenantSettings tenantSettings3;

        System.assertEquals(false, tenantSettings1.equals(tenantSettings3));
        System.assertEquals(false, tenantSettings2.equals(tenantSettings3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTenantSettings tenantSettings1 = OASTenantSettings.getExample();
        OASTenantSettings tenantSettings2 = new OASTenantSettings();

        System.assertEquals(tenantSettings1.hashCode(), tenantSettings1.hashCode());
        System.assertEquals(tenantSettings2.hashCode(), tenantSettings2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTenantSettings tenantSettings1 = OASTenantSettings.getExample();
        OASTenantSettings tenantSettings2 = OASTenantSettings.getExample();
        OASTenantSettings tenantSettings3 = new OASTenantSettings();
        OASTenantSettings tenantSettings4 = new OASTenantSettings();

        System.assert(tenantSettings1.equals(tenantSettings2));
        System.assert(tenantSettings3.equals(tenantSettings4));
        System.assertEquals(tenantSettings1.hashCode(), tenantSettings2.hashCode());
        System.assertEquals(tenantSettings3.hashCode(), tenantSettings4.hashCode());
    }
}
