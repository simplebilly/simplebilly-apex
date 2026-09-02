@isTest
private class OASSilentPartnerTest {
    @isTest
    private static void equalsSameInstance() {
        OASSilentPartner silentPartner1 = OASSilentPartner.getExample();
        OASSilentPartner silentPartner2 = silentPartner1;
        OASSilentPartner silentPartner3 = new OASSilentPartner();
        OASSilentPartner silentPartner4 = silentPartner3;

        System.assert(silentPartner1.equals(silentPartner2));
        System.assert(silentPartner2.equals(silentPartner1));
        System.assert(silentPartner1.equals(silentPartner1));
        System.assert(silentPartner3.equals(silentPartner4));
        System.assert(silentPartner4.equals(silentPartner3));
        System.assert(silentPartner3.equals(silentPartner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSilentPartner silentPartner1 = OASSilentPartner.getExample();
        OASSilentPartner silentPartner2 = OASSilentPartner.getExample();
        OASSilentPartner silentPartner3 = new OASSilentPartner();
        OASSilentPartner silentPartner4 = new OASSilentPartner();

        System.assert(silentPartner1.equals(silentPartner2));
        System.assert(silentPartner2.equals(silentPartner1));
        System.assert(silentPartner3.equals(silentPartner4));
        System.assert(silentPartner4.equals(silentPartner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSilentPartner silentPartner1 = OASSilentPartner.getExample();
        OASSilentPartner silentPartner2 = new OASSilentPartner();

        System.assertEquals(false, silentPartner1.equals('foo'));
        System.assertEquals(false, silentPartner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSilentPartner silentPartner1 = OASSilentPartner.getExample();
        OASSilentPartner silentPartner2 = new OASSilentPartner();
        OASSilentPartner silentPartner3;

        System.assertEquals(false, silentPartner1.equals(silentPartner3));
        System.assertEquals(false, silentPartner2.equals(silentPartner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSilentPartner silentPartner1 = OASSilentPartner.getExample();
        OASSilentPartner silentPartner2 = new OASSilentPartner();

        System.assertEquals(silentPartner1.hashCode(), silentPartner1.hashCode());
        System.assertEquals(silentPartner2.hashCode(), silentPartner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSilentPartner silentPartner1 = OASSilentPartner.getExample();
        OASSilentPartner silentPartner2 = OASSilentPartner.getExample();
        OASSilentPartner silentPartner3 = new OASSilentPartner();
        OASSilentPartner silentPartner4 = new OASSilentPartner();

        System.assert(silentPartner1.equals(silentPartner2));
        System.assert(silentPartner3.equals(silentPartner4));
        System.assertEquals(silentPartner1.hashCode(), silentPartner2.hashCode());
        System.assertEquals(silentPartner3.hashCode(), silentPartner4.hashCode());
    }
}
