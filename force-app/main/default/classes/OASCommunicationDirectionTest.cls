@isTest
private class OASCommunicationDirectionTest {
    @isTest
    private static void allowableValues() {
        Set<OASCommunicationDirection> expected = new Set<OASCommunicationDirection>{
            OASCommunicationDirection.INBOUND,
            OASCommunicationDirection.OUTBOUND
        };
        Set<OASCommunicationDirection> actual  = new Set<OASCommunicationDirection>(OASCommunicationDirection.values());
        System.assertEquals(expected, actual);
    }
}
