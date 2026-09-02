@isTest
private class OASMarketplaceConnectionTest {
    @isTest
    private static void equalsSameInstance() {
        OASMarketplaceConnection marketplaceConnection1 = OASMarketplaceConnection.getExample();
        OASMarketplaceConnection marketplaceConnection2 = marketplaceConnection1;
        OASMarketplaceConnection marketplaceConnection3 = new OASMarketplaceConnection();
        OASMarketplaceConnection marketplaceConnection4 = marketplaceConnection3;

        System.assert(marketplaceConnection1.equals(marketplaceConnection2));
        System.assert(marketplaceConnection2.equals(marketplaceConnection1));
        System.assert(marketplaceConnection1.equals(marketplaceConnection1));
        System.assert(marketplaceConnection3.equals(marketplaceConnection4));
        System.assert(marketplaceConnection4.equals(marketplaceConnection3));
        System.assert(marketplaceConnection3.equals(marketplaceConnection3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMarketplaceConnection marketplaceConnection1 = OASMarketplaceConnection.getExample();
        OASMarketplaceConnection marketplaceConnection2 = OASMarketplaceConnection.getExample();
        OASMarketplaceConnection marketplaceConnection3 = new OASMarketplaceConnection();
        OASMarketplaceConnection marketplaceConnection4 = new OASMarketplaceConnection();

        System.assert(marketplaceConnection1.equals(marketplaceConnection2));
        System.assert(marketplaceConnection2.equals(marketplaceConnection1));
        System.assert(marketplaceConnection3.equals(marketplaceConnection4));
        System.assert(marketplaceConnection4.equals(marketplaceConnection3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMarketplaceConnection marketplaceConnection1 = OASMarketplaceConnection.getExample();
        OASMarketplaceConnection marketplaceConnection2 = new OASMarketplaceConnection();

        System.assertEquals(false, marketplaceConnection1.equals('foo'));
        System.assertEquals(false, marketplaceConnection2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMarketplaceConnection marketplaceConnection1 = OASMarketplaceConnection.getExample();
        OASMarketplaceConnection marketplaceConnection2 = new OASMarketplaceConnection();
        OASMarketplaceConnection marketplaceConnection3;

        System.assertEquals(false, marketplaceConnection1.equals(marketplaceConnection3));
        System.assertEquals(false, marketplaceConnection2.equals(marketplaceConnection3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMarketplaceConnection marketplaceConnection1 = OASMarketplaceConnection.getExample();
        OASMarketplaceConnection marketplaceConnection2 = new OASMarketplaceConnection();

        System.assertEquals(marketplaceConnection1.hashCode(), marketplaceConnection1.hashCode());
        System.assertEquals(marketplaceConnection2.hashCode(), marketplaceConnection2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMarketplaceConnection marketplaceConnection1 = OASMarketplaceConnection.getExample();
        OASMarketplaceConnection marketplaceConnection2 = OASMarketplaceConnection.getExample();
        OASMarketplaceConnection marketplaceConnection3 = new OASMarketplaceConnection();
        OASMarketplaceConnection marketplaceConnection4 = new OASMarketplaceConnection();

        System.assert(marketplaceConnection1.equals(marketplaceConnection2));
        System.assert(marketplaceConnection3.equals(marketplaceConnection4));
        System.assertEquals(marketplaceConnection1.hashCode(), marketplaceConnection2.hashCode());
        System.assertEquals(marketplaceConnection3.hashCode(), marketplaceConnection4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASMarketplaceConnection marketplaceConnection = new OASMarketplaceConnection();
        Map<String, String> x-property-mappings = marketplaceConnection.getx-property-mappings();
        System.assertEquals('connectionId', x-property-mappings.get('connection_id'));
        System.assertEquals('connectorType', x-property-mappings.get('connector_type'));
        System.assertEquals('createdAt', x-property-mappings.get('created_at'));
        System.assertEquals('isActive', x-property-mappings.get('is_active'));
        System.assertEquals('lastSyncAt', x-property-mappings.get('last_sync_at'));
        System.assertEquals('platformUserId', x-property-mappings.get('platform_user_id'));
        System.assertEquals('shopDomain', x-property-mappings.get('shop_domain'));
        System.assertEquals('shopName', x-property-mappings.get('shop_name'));
        System.assertEquals('syncStatus', x-property-mappings.get('sync_status'));
        System.assertEquals('tenantId', x-property-mappings.get('tenant_id'));
        System.assertEquals('updatedAt', x-property-mappings.get('updated_at'));
    }
}
