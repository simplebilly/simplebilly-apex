@isTest
private class OASWebhookDirectionTest {
    @isTest
    private static void allowableValues() {
        Set<OASWebhookDirection> expected = new Set<OASWebhookDirection>{
            OASWebhookDirection.INBOUND,
            OASWebhookDirection.OUTBOUND
        };
        Set<OASWebhookDirection> actual  = new Set<OASWebhookDirection>(OASWebhookDirection.values());
        System.assertEquals(expected, actual);
    }
}
