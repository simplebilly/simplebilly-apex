@isTest
private class OASTicketPriorityTest {
    @isTest
    private static void allowableValues() {
        Set<OASTicketPriority> expected = new Set<OASTicketPriority>{
            OASTicketPriority.NORMAL,
            OASTicketPriority.HIGH
        };
        Set<OASTicketPriority> actual  = new Set<OASTicketPriority>(OASTicketPriority.values());
        System.assertEquals(expected, actual);
    }
}
