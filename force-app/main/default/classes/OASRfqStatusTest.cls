@isTest
private class OASRfqStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASRfqStatus> expected = new Set<OASRfqStatus>{
            OASRfqStatus.DRAFT,
            OASRfqStatus.SENT,
            OASRfqStatus.OFFER_RECEIVED,
            OASRfqStatus.REJECTED,
            OASRfqStatus.CONVERTED
        };
        Set<OASRfqStatus> actual  = new Set<OASRfqStatus>(OASRfqStatus.values());
        System.assertEquals(expected, actual);
    }
}
