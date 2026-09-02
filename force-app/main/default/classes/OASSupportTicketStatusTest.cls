@isTest
private class OASSupportTicketStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASSupportTicketStatus> expected = new Set<OASSupportTicketStatus>{
            OASSupportTicketStatus.OPEN,
            OASSupportTicketStatus.AWAITING_REPLY,
            OASSupportTicketStatus.RESOLVED,
            OASSupportTicketStatus.CLOSED
        };
        Set<OASSupportTicketStatus> actual  = new Set<OASSupportTicketStatus>(OASSupportTicketStatus.values());
        System.assertEquals(expected, actual);
    }
}
