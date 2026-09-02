@isTest
private class OASReturnLogisticsQueueItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASReturnLogisticsQueueItem returnLogisticsQueueItem1 = OASReturnLogisticsQueueItem.getExample();
        OASReturnLogisticsQueueItem returnLogisticsQueueItem2 = returnLogisticsQueueItem1;
        OASReturnLogisticsQueueItem returnLogisticsQueueItem3 = new OASReturnLogisticsQueueItem();
        OASReturnLogisticsQueueItem returnLogisticsQueueItem4 = returnLogisticsQueueItem3;

        System.assert(returnLogisticsQueueItem1.equals(returnLogisticsQueueItem2));
        System.assert(returnLogisticsQueueItem2.equals(returnLogisticsQueueItem1));
        System.assert(returnLogisticsQueueItem1.equals(returnLogisticsQueueItem1));
        System.assert(returnLogisticsQueueItem3.equals(returnLogisticsQueueItem4));
        System.assert(returnLogisticsQueueItem4.equals(returnLogisticsQueueItem3));
        System.assert(returnLogisticsQueueItem3.equals(returnLogisticsQueueItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASReturnLogisticsQueueItem returnLogisticsQueueItem1 = OASReturnLogisticsQueueItem.getExample();
        OASReturnLogisticsQueueItem returnLogisticsQueueItem2 = OASReturnLogisticsQueueItem.getExample();
        OASReturnLogisticsQueueItem returnLogisticsQueueItem3 = new OASReturnLogisticsQueueItem();
        OASReturnLogisticsQueueItem returnLogisticsQueueItem4 = new OASReturnLogisticsQueueItem();

        System.assert(returnLogisticsQueueItem1.equals(returnLogisticsQueueItem2));
        System.assert(returnLogisticsQueueItem2.equals(returnLogisticsQueueItem1));
        System.assert(returnLogisticsQueueItem3.equals(returnLogisticsQueueItem4));
        System.assert(returnLogisticsQueueItem4.equals(returnLogisticsQueueItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASReturnLogisticsQueueItem returnLogisticsQueueItem1 = OASReturnLogisticsQueueItem.getExample();
        OASReturnLogisticsQueueItem returnLogisticsQueueItem2 = new OASReturnLogisticsQueueItem();

        System.assertEquals(false, returnLogisticsQueueItem1.equals('foo'));
        System.assertEquals(false, returnLogisticsQueueItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASReturnLogisticsQueueItem returnLogisticsQueueItem1 = OASReturnLogisticsQueueItem.getExample();
        OASReturnLogisticsQueueItem returnLogisticsQueueItem2 = new OASReturnLogisticsQueueItem();
        OASReturnLogisticsQueueItem returnLogisticsQueueItem3;

        System.assertEquals(false, returnLogisticsQueueItem1.equals(returnLogisticsQueueItem3));
        System.assertEquals(false, returnLogisticsQueueItem2.equals(returnLogisticsQueueItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASReturnLogisticsQueueItem returnLogisticsQueueItem1 = OASReturnLogisticsQueueItem.getExample();
        OASReturnLogisticsQueueItem returnLogisticsQueueItem2 = new OASReturnLogisticsQueueItem();

        System.assertEquals(returnLogisticsQueueItem1.hashCode(), returnLogisticsQueueItem1.hashCode());
        System.assertEquals(returnLogisticsQueueItem2.hashCode(), returnLogisticsQueueItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASReturnLogisticsQueueItem returnLogisticsQueueItem1 = OASReturnLogisticsQueueItem.getExample();
        OASReturnLogisticsQueueItem returnLogisticsQueueItem2 = OASReturnLogisticsQueueItem.getExample();
        OASReturnLogisticsQueueItem returnLogisticsQueueItem3 = new OASReturnLogisticsQueueItem();
        OASReturnLogisticsQueueItem returnLogisticsQueueItem4 = new OASReturnLogisticsQueueItem();

        System.assert(returnLogisticsQueueItem1.equals(returnLogisticsQueueItem2));
        System.assert(returnLogisticsQueueItem3.equals(returnLogisticsQueueItem4));
        System.assertEquals(returnLogisticsQueueItem1.hashCode(), returnLogisticsQueueItem2.hashCode());
        System.assertEquals(returnLogisticsQueueItem3.hashCode(), returnLogisticsQueueItem4.hashCode());
    }
}
