@isTest
private class OASSupportTicketTest {
    @isTest
    private static void equalsSameInstance() {
        OASSupportTicket supportTicket1 = OASSupportTicket.getExample();
        OASSupportTicket supportTicket2 = supportTicket1;
        OASSupportTicket supportTicket3 = new OASSupportTicket();
        OASSupportTicket supportTicket4 = supportTicket3;

        System.assert(supportTicket1.equals(supportTicket2));
        System.assert(supportTicket2.equals(supportTicket1));
        System.assert(supportTicket1.equals(supportTicket1));
        System.assert(supportTicket3.equals(supportTicket4));
        System.assert(supportTicket4.equals(supportTicket3));
        System.assert(supportTicket3.equals(supportTicket3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSupportTicket supportTicket1 = OASSupportTicket.getExample();
        OASSupportTicket supportTicket2 = OASSupportTicket.getExample();
        OASSupportTicket supportTicket3 = new OASSupportTicket();
        OASSupportTicket supportTicket4 = new OASSupportTicket();

        System.assert(supportTicket1.equals(supportTicket2));
        System.assert(supportTicket2.equals(supportTicket1));
        System.assert(supportTicket3.equals(supportTicket4));
        System.assert(supportTicket4.equals(supportTicket3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSupportTicket supportTicket1 = OASSupportTicket.getExample();
        OASSupportTicket supportTicket2 = new OASSupportTicket();

        System.assertEquals(false, supportTicket1.equals('foo'));
        System.assertEquals(false, supportTicket2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSupportTicket supportTicket1 = OASSupportTicket.getExample();
        OASSupportTicket supportTicket2 = new OASSupportTicket();
        OASSupportTicket supportTicket3;

        System.assertEquals(false, supportTicket1.equals(supportTicket3));
        System.assertEquals(false, supportTicket2.equals(supportTicket3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSupportTicket supportTicket1 = OASSupportTicket.getExample();
        OASSupportTicket supportTicket2 = new OASSupportTicket();

        System.assertEquals(supportTicket1.hashCode(), supportTicket1.hashCode());
        System.assertEquals(supportTicket2.hashCode(), supportTicket2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSupportTicket supportTicket1 = OASSupportTicket.getExample();
        OASSupportTicket supportTicket2 = OASSupportTicket.getExample();
        OASSupportTicket supportTicket3 = new OASSupportTicket();
        OASSupportTicket supportTicket4 = new OASSupportTicket();

        System.assert(supportTicket1.equals(supportTicket2));
        System.assert(supportTicket3.equals(supportTicket4));
        System.assertEquals(supportTicket1.hashCode(), supportTicket2.hashCode());
        System.assertEquals(supportTicket3.hashCode(), supportTicket4.hashCode());
    }
}
