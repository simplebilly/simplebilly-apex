@isTest
private class OASTicketMessageTest {
    @isTest
    private static void equalsSameInstance() {
        OASTicketMessage ticketMessage1 = OASTicketMessage.getExample();
        OASTicketMessage ticketMessage2 = ticketMessage1;
        OASTicketMessage ticketMessage3 = new OASTicketMessage();
        OASTicketMessage ticketMessage4 = ticketMessage3;

        System.assert(ticketMessage1.equals(ticketMessage2));
        System.assert(ticketMessage2.equals(ticketMessage1));
        System.assert(ticketMessage1.equals(ticketMessage1));
        System.assert(ticketMessage3.equals(ticketMessage4));
        System.assert(ticketMessage4.equals(ticketMessage3));
        System.assert(ticketMessage3.equals(ticketMessage3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTicketMessage ticketMessage1 = OASTicketMessage.getExample();
        OASTicketMessage ticketMessage2 = OASTicketMessage.getExample();
        OASTicketMessage ticketMessage3 = new OASTicketMessage();
        OASTicketMessage ticketMessage4 = new OASTicketMessage();

        System.assert(ticketMessage1.equals(ticketMessage2));
        System.assert(ticketMessage2.equals(ticketMessage1));
        System.assert(ticketMessage3.equals(ticketMessage4));
        System.assert(ticketMessage4.equals(ticketMessage3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTicketMessage ticketMessage1 = OASTicketMessage.getExample();
        OASTicketMessage ticketMessage2 = new OASTicketMessage();

        System.assertEquals(false, ticketMessage1.equals('foo'));
        System.assertEquals(false, ticketMessage2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTicketMessage ticketMessage1 = OASTicketMessage.getExample();
        OASTicketMessage ticketMessage2 = new OASTicketMessage();
        OASTicketMessage ticketMessage3;

        System.assertEquals(false, ticketMessage1.equals(ticketMessage3));
        System.assertEquals(false, ticketMessage2.equals(ticketMessage3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTicketMessage ticketMessage1 = OASTicketMessage.getExample();
        OASTicketMessage ticketMessage2 = new OASTicketMessage();

        System.assertEquals(ticketMessage1.hashCode(), ticketMessage1.hashCode());
        System.assertEquals(ticketMessage2.hashCode(), ticketMessage2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTicketMessage ticketMessage1 = OASTicketMessage.getExample();
        OASTicketMessage ticketMessage2 = OASTicketMessage.getExample();
        OASTicketMessage ticketMessage3 = new OASTicketMessage();
        OASTicketMessage ticketMessage4 = new OASTicketMessage();

        System.assert(ticketMessage1.equals(ticketMessage2));
        System.assert(ticketMessage3.equals(ticketMessage4));
        System.assertEquals(ticketMessage1.hashCode(), ticketMessage2.hashCode());
        System.assertEquals(ticketMessage3.hashCode(), ticketMessage4.hashCode());
    }
}
