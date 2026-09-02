@isTest
private class OASMarketplaceWebhookEventTest {
    @isTest
    private static void equalsSameInstance() {
        OASMarketplaceWebhookEvent marketplaceWebhookEvent1 = OASMarketplaceWebhookEvent.getExample();
        OASMarketplaceWebhookEvent marketplaceWebhookEvent2 = marketplaceWebhookEvent1;
        OASMarketplaceWebhookEvent marketplaceWebhookEvent3 = new OASMarketplaceWebhookEvent();
        OASMarketplaceWebhookEvent marketplaceWebhookEvent4 = marketplaceWebhookEvent3;

        System.assert(marketplaceWebhookEvent1.equals(marketplaceWebhookEvent2));
        System.assert(marketplaceWebhookEvent2.equals(marketplaceWebhookEvent1));
        System.assert(marketplaceWebhookEvent1.equals(marketplaceWebhookEvent1));
        System.assert(marketplaceWebhookEvent3.equals(marketplaceWebhookEvent4));
        System.assert(marketplaceWebhookEvent4.equals(marketplaceWebhookEvent3));
        System.assert(marketplaceWebhookEvent3.equals(marketplaceWebhookEvent3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMarketplaceWebhookEvent marketplaceWebhookEvent1 = OASMarketplaceWebhookEvent.getExample();
        OASMarketplaceWebhookEvent marketplaceWebhookEvent2 = OASMarketplaceWebhookEvent.getExample();
        OASMarketplaceWebhookEvent marketplaceWebhookEvent3 = new OASMarketplaceWebhookEvent();
        OASMarketplaceWebhookEvent marketplaceWebhookEvent4 = new OASMarketplaceWebhookEvent();

        System.assert(marketplaceWebhookEvent1.equals(marketplaceWebhookEvent2));
        System.assert(marketplaceWebhookEvent2.equals(marketplaceWebhookEvent1));
        System.assert(marketplaceWebhookEvent3.equals(marketplaceWebhookEvent4));
        System.assert(marketplaceWebhookEvent4.equals(marketplaceWebhookEvent3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMarketplaceWebhookEvent marketplaceWebhookEvent1 = OASMarketplaceWebhookEvent.getExample();
        OASMarketplaceWebhookEvent marketplaceWebhookEvent2 = new OASMarketplaceWebhookEvent();

        System.assertEquals(false, marketplaceWebhookEvent1.equals('foo'));
        System.assertEquals(false, marketplaceWebhookEvent2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMarketplaceWebhookEvent marketplaceWebhookEvent1 = OASMarketplaceWebhookEvent.getExample();
        OASMarketplaceWebhookEvent marketplaceWebhookEvent2 = new OASMarketplaceWebhookEvent();
        OASMarketplaceWebhookEvent marketplaceWebhookEvent3;

        System.assertEquals(false, marketplaceWebhookEvent1.equals(marketplaceWebhookEvent3));
        System.assertEquals(false, marketplaceWebhookEvent2.equals(marketplaceWebhookEvent3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMarketplaceWebhookEvent marketplaceWebhookEvent1 = OASMarketplaceWebhookEvent.getExample();
        OASMarketplaceWebhookEvent marketplaceWebhookEvent2 = new OASMarketplaceWebhookEvent();

        System.assertEquals(marketplaceWebhookEvent1.hashCode(), marketplaceWebhookEvent1.hashCode());
        System.assertEquals(marketplaceWebhookEvent2.hashCode(), marketplaceWebhookEvent2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMarketplaceWebhookEvent marketplaceWebhookEvent1 = OASMarketplaceWebhookEvent.getExample();
        OASMarketplaceWebhookEvent marketplaceWebhookEvent2 = OASMarketplaceWebhookEvent.getExample();
        OASMarketplaceWebhookEvent marketplaceWebhookEvent3 = new OASMarketplaceWebhookEvent();
        OASMarketplaceWebhookEvent marketplaceWebhookEvent4 = new OASMarketplaceWebhookEvent();

        System.assert(marketplaceWebhookEvent1.equals(marketplaceWebhookEvent2));
        System.assert(marketplaceWebhookEvent3.equals(marketplaceWebhookEvent4));
        System.assertEquals(marketplaceWebhookEvent1.hashCode(), marketplaceWebhookEvent2.hashCode());
        System.assertEquals(marketplaceWebhookEvent3.hashCode(), marketplaceWebhookEvent4.hashCode());
    }
}
