@isTest
private class OASUpdateTenantSettingsTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpdateTenantSettings updateTenantSettings1 = OASUpdateTenantSettings.getExample();
        OASUpdateTenantSettings updateTenantSettings2 = updateTenantSettings1;
        OASUpdateTenantSettings updateTenantSettings3 = new OASUpdateTenantSettings();
        OASUpdateTenantSettings updateTenantSettings4 = updateTenantSettings3;

        System.assert(updateTenantSettings1.equals(updateTenantSettings2));
        System.assert(updateTenantSettings2.equals(updateTenantSettings1));
        System.assert(updateTenantSettings1.equals(updateTenantSettings1));
        System.assert(updateTenantSettings3.equals(updateTenantSettings4));
        System.assert(updateTenantSettings4.equals(updateTenantSettings3));
        System.assert(updateTenantSettings3.equals(updateTenantSettings3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpdateTenantSettings updateTenantSettings1 = OASUpdateTenantSettings.getExample();
        OASUpdateTenantSettings updateTenantSettings2 = OASUpdateTenantSettings.getExample();
        OASUpdateTenantSettings updateTenantSettings3 = new OASUpdateTenantSettings();
        OASUpdateTenantSettings updateTenantSettings4 = new OASUpdateTenantSettings();

        System.assert(updateTenantSettings1.equals(updateTenantSettings2));
        System.assert(updateTenantSettings2.equals(updateTenantSettings1));
        System.assert(updateTenantSettings3.equals(updateTenantSettings4));
        System.assert(updateTenantSettings4.equals(updateTenantSettings3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpdateTenantSettings updateTenantSettings1 = OASUpdateTenantSettings.getExample();
        OASUpdateTenantSettings updateTenantSettings2 = new OASUpdateTenantSettings();

        System.assertEquals(false, updateTenantSettings1.equals('foo'));
        System.assertEquals(false, updateTenantSettings2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpdateTenantSettings updateTenantSettings1 = OASUpdateTenantSettings.getExample();
        OASUpdateTenantSettings updateTenantSettings2 = new OASUpdateTenantSettings();
        OASUpdateTenantSettings updateTenantSettings3;

        System.assertEquals(false, updateTenantSettings1.equals(updateTenantSettings3));
        System.assertEquals(false, updateTenantSettings2.equals(updateTenantSettings3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpdateTenantSettings updateTenantSettings1 = OASUpdateTenantSettings.getExample();
        OASUpdateTenantSettings updateTenantSettings2 = new OASUpdateTenantSettings();

        System.assertEquals(updateTenantSettings1.hashCode(), updateTenantSettings1.hashCode());
        System.assertEquals(updateTenantSettings2.hashCode(), updateTenantSettings2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpdateTenantSettings updateTenantSettings1 = OASUpdateTenantSettings.getExample();
        OASUpdateTenantSettings updateTenantSettings2 = OASUpdateTenantSettings.getExample();
        OASUpdateTenantSettings updateTenantSettings3 = new OASUpdateTenantSettings();
        OASUpdateTenantSettings updateTenantSettings4 = new OASUpdateTenantSettings();

        System.assert(updateTenantSettings1.equals(updateTenantSettings2));
        System.assert(updateTenantSettings3.equals(updateTenantSettings4));
        System.assertEquals(updateTenantSettings1.hashCode(), updateTenantSettings2.hashCode());
        System.assertEquals(updateTenantSettings3.hashCode(), updateTenantSettings4.hashCode());
    }
}
