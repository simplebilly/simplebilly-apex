@isTest
private class OASSupportTicketUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASSupportTicketUpdate supportTicketUpdate1 = OASSupportTicketUpdate.getExample();
        OASSupportTicketUpdate supportTicketUpdate2 = supportTicketUpdate1;
        OASSupportTicketUpdate supportTicketUpdate3 = new OASSupportTicketUpdate();
        OASSupportTicketUpdate supportTicketUpdate4 = supportTicketUpdate3;

        System.assert(supportTicketUpdate1.equals(supportTicketUpdate2));
        System.assert(supportTicketUpdate2.equals(supportTicketUpdate1));
        System.assert(supportTicketUpdate1.equals(supportTicketUpdate1));
        System.assert(supportTicketUpdate3.equals(supportTicketUpdate4));
        System.assert(supportTicketUpdate4.equals(supportTicketUpdate3));
        System.assert(supportTicketUpdate3.equals(supportTicketUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSupportTicketUpdate supportTicketUpdate1 = OASSupportTicketUpdate.getExample();
        OASSupportTicketUpdate supportTicketUpdate2 = OASSupportTicketUpdate.getExample();
        OASSupportTicketUpdate supportTicketUpdate3 = new OASSupportTicketUpdate();
        OASSupportTicketUpdate supportTicketUpdate4 = new OASSupportTicketUpdate();

        System.assert(supportTicketUpdate1.equals(supportTicketUpdate2));
        System.assert(supportTicketUpdate2.equals(supportTicketUpdate1));
        System.assert(supportTicketUpdate3.equals(supportTicketUpdate4));
        System.assert(supportTicketUpdate4.equals(supportTicketUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSupportTicketUpdate supportTicketUpdate1 = OASSupportTicketUpdate.getExample();
        OASSupportTicketUpdate supportTicketUpdate2 = new OASSupportTicketUpdate();

        System.assertEquals(false, supportTicketUpdate1.equals('foo'));
        System.assertEquals(false, supportTicketUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSupportTicketUpdate supportTicketUpdate1 = OASSupportTicketUpdate.getExample();
        OASSupportTicketUpdate supportTicketUpdate2 = new OASSupportTicketUpdate();
        OASSupportTicketUpdate supportTicketUpdate3;

        System.assertEquals(false, supportTicketUpdate1.equals(supportTicketUpdate3));
        System.assertEquals(false, supportTicketUpdate2.equals(supportTicketUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSupportTicketUpdate supportTicketUpdate1 = OASSupportTicketUpdate.getExample();
        OASSupportTicketUpdate supportTicketUpdate2 = new OASSupportTicketUpdate();

        System.assertEquals(supportTicketUpdate1.hashCode(), supportTicketUpdate1.hashCode());
        System.assertEquals(supportTicketUpdate2.hashCode(), supportTicketUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSupportTicketUpdate supportTicketUpdate1 = OASSupportTicketUpdate.getExample();
        OASSupportTicketUpdate supportTicketUpdate2 = OASSupportTicketUpdate.getExample();
        OASSupportTicketUpdate supportTicketUpdate3 = new OASSupportTicketUpdate();
        OASSupportTicketUpdate supportTicketUpdate4 = new OASSupportTicketUpdate();

        System.assert(supportTicketUpdate1.equals(supportTicketUpdate2));
        System.assert(supportTicketUpdate3.equals(supportTicketUpdate4));
        System.assertEquals(supportTicketUpdate1.hashCode(), supportTicketUpdate2.hashCode());
        System.assertEquals(supportTicketUpdate3.hashCode(), supportTicketUpdate4.hashCode());
    }
}
