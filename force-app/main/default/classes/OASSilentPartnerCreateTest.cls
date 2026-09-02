@isTest
private class OASSilentPartnerCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASSilentPartnerCreate silentPartnerCreate1 = OASSilentPartnerCreate.getExample();
        OASSilentPartnerCreate silentPartnerCreate2 = silentPartnerCreate1;
        OASSilentPartnerCreate silentPartnerCreate3 = new OASSilentPartnerCreate();
        OASSilentPartnerCreate silentPartnerCreate4 = silentPartnerCreate3;

        System.assert(silentPartnerCreate1.equals(silentPartnerCreate2));
        System.assert(silentPartnerCreate2.equals(silentPartnerCreate1));
        System.assert(silentPartnerCreate1.equals(silentPartnerCreate1));
        System.assert(silentPartnerCreate3.equals(silentPartnerCreate4));
        System.assert(silentPartnerCreate4.equals(silentPartnerCreate3));
        System.assert(silentPartnerCreate3.equals(silentPartnerCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSilentPartnerCreate silentPartnerCreate1 = OASSilentPartnerCreate.getExample();
        OASSilentPartnerCreate silentPartnerCreate2 = OASSilentPartnerCreate.getExample();
        OASSilentPartnerCreate silentPartnerCreate3 = new OASSilentPartnerCreate();
        OASSilentPartnerCreate silentPartnerCreate4 = new OASSilentPartnerCreate();

        System.assert(silentPartnerCreate1.equals(silentPartnerCreate2));
        System.assert(silentPartnerCreate2.equals(silentPartnerCreate1));
        System.assert(silentPartnerCreate3.equals(silentPartnerCreate4));
        System.assert(silentPartnerCreate4.equals(silentPartnerCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSilentPartnerCreate silentPartnerCreate1 = OASSilentPartnerCreate.getExample();
        OASSilentPartnerCreate silentPartnerCreate2 = new OASSilentPartnerCreate();

        System.assertEquals(false, silentPartnerCreate1.equals('foo'));
        System.assertEquals(false, silentPartnerCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSilentPartnerCreate silentPartnerCreate1 = OASSilentPartnerCreate.getExample();
        OASSilentPartnerCreate silentPartnerCreate2 = new OASSilentPartnerCreate();
        OASSilentPartnerCreate silentPartnerCreate3;

        System.assertEquals(false, silentPartnerCreate1.equals(silentPartnerCreate3));
        System.assertEquals(false, silentPartnerCreate2.equals(silentPartnerCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSilentPartnerCreate silentPartnerCreate1 = OASSilentPartnerCreate.getExample();
        OASSilentPartnerCreate silentPartnerCreate2 = new OASSilentPartnerCreate();

        System.assertEquals(silentPartnerCreate1.hashCode(), silentPartnerCreate1.hashCode());
        System.assertEquals(silentPartnerCreate2.hashCode(), silentPartnerCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSilentPartnerCreate silentPartnerCreate1 = OASSilentPartnerCreate.getExample();
        OASSilentPartnerCreate silentPartnerCreate2 = OASSilentPartnerCreate.getExample();
        OASSilentPartnerCreate silentPartnerCreate3 = new OASSilentPartnerCreate();
        OASSilentPartnerCreate silentPartnerCreate4 = new OASSilentPartnerCreate();

        System.assert(silentPartnerCreate1.equals(silentPartnerCreate2));
        System.assert(silentPartnerCreate3.equals(silentPartnerCreate4));
        System.assertEquals(silentPartnerCreate1.hashCode(), silentPartnerCreate2.hashCode());
        System.assertEquals(silentPartnerCreate3.hashCode(), silentPartnerCreate4.hashCode());
    }
}
