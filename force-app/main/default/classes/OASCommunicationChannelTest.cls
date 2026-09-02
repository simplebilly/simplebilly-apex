@isTest
private class OASCommunicationChannelTest {
    @isTest
    private static void allowableValues() {
        Set<OASCommunicationChannel> expected = new Set<OASCommunicationChannel>{
            OASCommunicationChannel.EMAIL,
            OASCommunicationChannel.CALL,
            OASCommunicationChannel.MEETING,
            OASCommunicationChannel.CHAT,
            OASCommunicationChannel.NOTE
        };
        Set<OASCommunicationChannel> actual  = new Set<OASCommunicationChannel>(OASCommunicationChannel.values());
        System.assertEquals(expected, actual);
    }
}
