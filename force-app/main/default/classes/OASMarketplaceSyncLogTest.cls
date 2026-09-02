@isTest
private class OASMarketplaceSyncLogTest {
    @isTest
    private static void equalsSameInstance() {
        OASMarketplaceSyncLog marketplaceSyncLog1 = OASMarketplaceSyncLog.getExample();
        OASMarketplaceSyncLog marketplaceSyncLog2 = marketplaceSyncLog1;
        OASMarketplaceSyncLog marketplaceSyncLog3 = new OASMarketplaceSyncLog();
        OASMarketplaceSyncLog marketplaceSyncLog4 = marketplaceSyncLog3;

        System.assert(marketplaceSyncLog1.equals(marketplaceSyncLog2));
        System.assert(marketplaceSyncLog2.equals(marketplaceSyncLog1));
        System.assert(marketplaceSyncLog1.equals(marketplaceSyncLog1));
        System.assert(marketplaceSyncLog3.equals(marketplaceSyncLog4));
        System.assert(marketplaceSyncLog4.equals(marketplaceSyncLog3));
        System.assert(marketplaceSyncLog3.equals(marketplaceSyncLog3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMarketplaceSyncLog marketplaceSyncLog1 = OASMarketplaceSyncLog.getExample();
        OASMarketplaceSyncLog marketplaceSyncLog2 = OASMarketplaceSyncLog.getExample();
        OASMarketplaceSyncLog marketplaceSyncLog3 = new OASMarketplaceSyncLog();
        OASMarketplaceSyncLog marketplaceSyncLog4 = new OASMarketplaceSyncLog();

        System.assert(marketplaceSyncLog1.equals(marketplaceSyncLog2));
        System.assert(marketplaceSyncLog2.equals(marketplaceSyncLog1));
        System.assert(marketplaceSyncLog3.equals(marketplaceSyncLog4));
        System.assert(marketplaceSyncLog4.equals(marketplaceSyncLog3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMarketplaceSyncLog marketplaceSyncLog1 = OASMarketplaceSyncLog.getExample();
        OASMarketplaceSyncLog marketplaceSyncLog2 = new OASMarketplaceSyncLog();

        System.assertEquals(false, marketplaceSyncLog1.equals('foo'));
        System.assertEquals(false, marketplaceSyncLog2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMarketplaceSyncLog marketplaceSyncLog1 = OASMarketplaceSyncLog.getExample();
        OASMarketplaceSyncLog marketplaceSyncLog2 = new OASMarketplaceSyncLog();
        OASMarketplaceSyncLog marketplaceSyncLog3;

        System.assertEquals(false, marketplaceSyncLog1.equals(marketplaceSyncLog3));
        System.assertEquals(false, marketplaceSyncLog2.equals(marketplaceSyncLog3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMarketplaceSyncLog marketplaceSyncLog1 = OASMarketplaceSyncLog.getExample();
        OASMarketplaceSyncLog marketplaceSyncLog2 = new OASMarketplaceSyncLog();

        System.assertEquals(marketplaceSyncLog1.hashCode(), marketplaceSyncLog1.hashCode());
        System.assertEquals(marketplaceSyncLog2.hashCode(), marketplaceSyncLog2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMarketplaceSyncLog marketplaceSyncLog1 = OASMarketplaceSyncLog.getExample();
        OASMarketplaceSyncLog marketplaceSyncLog2 = OASMarketplaceSyncLog.getExample();
        OASMarketplaceSyncLog marketplaceSyncLog3 = new OASMarketplaceSyncLog();
        OASMarketplaceSyncLog marketplaceSyncLog4 = new OASMarketplaceSyncLog();

        System.assert(marketplaceSyncLog1.equals(marketplaceSyncLog2));
        System.assert(marketplaceSyncLog3.equals(marketplaceSyncLog4));
        System.assertEquals(marketplaceSyncLog1.hashCode(), marketplaceSyncLog2.hashCode());
        System.assertEquals(marketplaceSyncLog3.hashCode(), marketplaceSyncLog4.hashCode());
    }
}
