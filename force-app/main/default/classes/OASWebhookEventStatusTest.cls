@isTest
private class OASWebhookEventStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASWebhookEventStatus> expected = new Set<OASWebhookEventStatus>{
            OASWebhookEventStatus.ACCEPTED,
            OASWebhookEventStatus.DELIVERED,
            OASWebhookEventStatus.FAILED,
            OASWebhookEventStatus.RECEIVED
        };
        Set<OASWebhookEventStatus> actual  = new Set<OASWebhookEventStatus>(OASWebhookEventStatus.values());
        System.assertEquals(expected, actual);
    }
}
