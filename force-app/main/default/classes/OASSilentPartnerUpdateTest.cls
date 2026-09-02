@isTest
private class OASSilentPartnerUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASSilentPartnerUpdate silentPartnerUpdate1 = OASSilentPartnerUpdate.getExample();
        OASSilentPartnerUpdate silentPartnerUpdate2 = silentPartnerUpdate1;
        OASSilentPartnerUpdate silentPartnerUpdate3 = new OASSilentPartnerUpdate();
        OASSilentPartnerUpdate silentPartnerUpdate4 = silentPartnerUpdate3;

        System.assert(silentPartnerUpdate1.equals(silentPartnerUpdate2));
        System.assert(silentPartnerUpdate2.equals(silentPartnerUpdate1));
        System.assert(silentPartnerUpdate1.equals(silentPartnerUpdate1));
        System.assert(silentPartnerUpdate3.equals(silentPartnerUpdate4));
        System.assert(silentPartnerUpdate4.equals(silentPartnerUpdate3));
        System.assert(silentPartnerUpdate3.equals(silentPartnerUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSilentPartnerUpdate silentPartnerUpdate1 = OASSilentPartnerUpdate.getExample();
        OASSilentPartnerUpdate silentPartnerUpdate2 = OASSilentPartnerUpdate.getExample();
        OASSilentPartnerUpdate silentPartnerUpdate3 = new OASSilentPartnerUpdate();
        OASSilentPartnerUpdate silentPartnerUpdate4 = new OASSilentPartnerUpdate();

        System.assert(silentPartnerUpdate1.equals(silentPartnerUpdate2));
        System.assert(silentPartnerUpdate2.equals(silentPartnerUpdate1));
        System.assert(silentPartnerUpdate3.equals(silentPartnerUpdate4));
        System.assert(silentPartnerUpdate4.equals(silentPartnerUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSilentPartnerUpdate silentPartnerUpdate1 = OASSilentPartnerUpdate.getExample();
        OASSilentPartnerUpdate silentPartnerUpdate2 = new OASSilentPartnerUpdate();

        System.assertEquals(false, silentPartnerUpdate1.equals('foo'));
        System.assertEquals(false, silentPartnerUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSilentPartnerUpdate silentPartnerUpdate1 = OASSilentPartnerUpdate.getExample();
        OASSilentPartnerUpdate silentPartnerUpdate2 = new OASSilentPartnerUpdate();
        OASSilentPartnerUpdate silentPartnerUpdate3;

        System.assertEquals(false, silentPartnerUpdate1.equals(silentPartnerUpdate3));
        System.assertEquals(false, silentPartnerUpdate2.equals(silentPartnerUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSilentPartnerUpdate silentPartnerUpdate1 = OASSilentPartnerUpdate.getExample();
        OASSilentPartnerUpdate silentPartnerUpdate2 = new OASSilentPartnerUpdate();

        System.assertEquals(silentPartnerUpdate1.hashCode(), silentPartnerUpdate1.hashCode());
        System.assertEquals(silentPartnerUpdate2.hashCode(), silentPartnerUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSilentPartnerUpdate silentPartnerUpdate1 = OASSilentPartnerUpdate.getExample();
        OASSilentPartnerUpdate silentPartnerUpdate2 = OASSilentPartnerUpdate.getExample();
        OASSilentPartnerUpdate silentPartnerUpdate3 = new OASSilentPartnerUpdate();
        OASSilentPartnerUpdate silentPartnerUpdate4 = new OASSilentPartnerUpdate();

        System.assert(silentPartnerUpdate1.equals(silentPartnerUpdate2));
        System.assert(silentPartnerUpdate3.equals(silentPartnerUpdate4));
        System.assertEquals(silentPartnerUpdate1.hashCode(), silentPartnerUpdate2.hashCode());
        System.assertEquals(silentPartnerUpdate3.hashCode(), silentPartnerUpdate4.hashCode());
    }
}
