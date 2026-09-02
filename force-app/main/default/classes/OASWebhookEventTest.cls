@isTest
private class OASWebhookEventTest {
    @isTest
    private static void equalsSameInstance() {
        OASWebhookEvent webhookEvent1 = OASWebhookEvent.getExample();
        OASWebhookEvent webhookEvent2 = webhookEvent1;
        OASWebhookEvent webhookEvent3 = new OASWebhookEvent();
        OASWebhookEvent webhookEvent4 = webhookEvent3;

        System.assert(webhookEvent1.equals(webhookEvent2));
        System.assert(webhookEvent2.equals(webhookEvent1));
        System.assert(webhookEvent1.equals(webhookEvent1));
        System.assert(webhookEvent3.equals(webhookEvent4));
        System.assert(webhookEvent4.equals(webhookEvent3));
        System.assert(webhookEvent3.equals(webhookEvent3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASWebhookEvent webhookEvent1 = OASWebhookEvent.getExample();
        OASWebhookEvent webhookEvent2 = OASWebhookEvent.getExample();
        OASWebhookEvent webhookEvent3 = new OASWebhookEvent();
        OASWebhookEvent webhookEvent4 = new OASWebhookEvent();

        System.assert(webhookEvent1.equals(webhookEvent2));
        System.assert(webhookEvent2.equals(webhookEvent1));
        System.assert(webhookEvent3.equals(webhookEvent4));
        System.assert(webhookEvent4.equals(webhookEvent3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASWebhookEvent webhookEvent1 = OASWebhookEvent.getExample();
        OASWebhookEvent webhookEvent2 = new OASWebhookEvent();

        System.assertEquals(false, webhookEvent1.equals('foo'));
        System.assertEquals(false, webhookEvent2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASWebhookEvent webhookEvent1 = OASWebhookEvent.getExample();
        OASWebhookEvent webhookEvent2 = new OASWebhookEvent();
        OASWebhookEvent webhookEvent3;

        System.assertEquals(false, webhookEvent1.equals(webhookEvent3));
        System.assertEquals(false, webhookEvent2.equals(webhookEvent3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASWebhookEvent webhookEvent1 = OASWebhookEvent.getExample();
        OASWebhookEvent webhookEvent2 = new OASWebhookEvent();

        System.assertEquals(webhookEvent1.hashCode(), webhookEvent1.hashCode());
        System.assertEquals(webhookEvent2.hashCode(), webhookEvent2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASWebhookEvent webhookEvent1 = OASWebhookEvent.getExample();
        OASWebhookEvent webhookEvent2 = OASWebhookEvent.getExample();
        OASWebhookEvent webhookEvent3 = new OASWebhookEvent();
        OASWebhookEvent webhookEvent4 = new OASWebhookEvent();

        System.assert(webhookEvent1.equals(webhookEvent2));
        System.assert(webhookEvent3.equals(webhookEvent4));
        System.assertEquals(webhookEvent1.hashCode(), webhookEvent2.hashCode());
        System.assertEquals(webhookEvent3.hashCode(), webhookEvent4.hashCode());
    }
}
