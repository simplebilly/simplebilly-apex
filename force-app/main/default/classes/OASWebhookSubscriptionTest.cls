@isTest
private class OASWebhookSubscriptionTest {
    @isTest
    private static void equalsSameInstance() {
        OASWebhookSubscription webhookSubscription1 = OASWebhookSubscription.getExample();
        OASWebhookSubscription webhookSubscription2 = webhookSubscription1;
        OASWebhookSubscription webhookSubscription3 = new OASWebhookSubscription();
        OASWebhookSubscription webhookSubscription4 = webhookSubscription3;

        System.assert(webhookSubscription1.equals(webhookSubscription2));
        System.assert(webhookSubscription2.equals(webhookSubscription1));
        System.assert(webhookSubscription1.equals(webhookSubscription1));
        System.assert(webhookSubscription3.equals(webhookSubscription4));
        System.assert(webhookSubscription4.equals(webhookSubscription3));
        System.assert(webhookSubscription3.equals(webhookSubscription3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASWebhookSubscription webhookSubscription1 = OASWebhookSubscription.getExample();
        OASWebhookSubscription webhookSubscription2 = OASWebhookSubscription.getExample();
        OASWebhookSubscription webhookSubscription3 = new OASWebhookSubscription();
        OASWebhookSubscription webhookSubscription4 = new OASWebhookSubscription();

        System.assert(webhookSubscription1.equals(webhookSubscription2));
        System.assert(webhookSubscription2.equals(webhookSubscription1));
        System.assert(webhookSubscription3.equals(webhookSubscription4));
        System.assert(webhookSubscription4.equals(webhookSubscription3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASWebhookSubscription webhookSubscription1 = OASWebhookSubscription.getExample();
        OASWebhookSubscription webhookSubscription2 = new OASWebhookSubscription();

        System.assertEquals(false, webhookSubscription1.equals('foo'));
        System.assertEquals(false, webhookSubscription2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASWebhookSubscription webhookSubscription1 = OASWebhookSubscription.getExample();
        OASWebhookSubscription webhookSubscription2 = new OASWebhookSubscription();
        OASWebhookSubscription webhookSubscription3;

        System.assertEquals(false, webhookSubscription1.equals(webhookSubscription3));
        System.assertEquals(false, webhookSubscription2.equals(webhookSubscription3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASWebhookSubscription webhookSubscription1 = OASWebhookSubscription.getExample();
        OASWebhookSubscription webhookSubscription2 = new OASWebhookSubscription();

        System.assertEquals(webhookSubscription1.hashCode(), webhookSubscription1.hashCode());
        System.assertEquals(webhookSubscription2.hashCode(), webhookSubscription2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASWebhookSubscription webhookSubscription1 = OASWebhookSubscription.getExample();
        OASWebhookSubscription webhookSubscription2 = OASWebhookSubscription.getExample();
        OASWebhookSubscription webhookSubscription3 = new OASWebhookSubscription();
        OASWebhookSubscription webhookSubscription4 = new OASWebhookSubscription();

        System.assert(webhookSubscription1.equals(webhookSubscription2));
        System.assert(webhookSubscription3.equals(webhookSubscription4));
        System.assertEquals(webhookSubscription1.hashCode(), webhookSubscription2.hashCode());
        System.assertEquals(webhookSubscription3.hashCode(), webhookSubscription4.hashCode());
    }
}
