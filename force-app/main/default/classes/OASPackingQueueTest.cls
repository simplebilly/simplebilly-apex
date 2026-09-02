@isTest
private class OASPackingQueueTest {
    @isTest
    private static void equalsSameInstance() {
        OASPackingQueue packingQueue1 = OASPackingQueue.getExample();
        OASPackingQueue packingQueue2 = packingQueue1;
        OASPackingQueue packingQueue3 = new OASPackingQueue();
        OASPackingQueue packingQueue4 = packingQueue3;

        System.assert(packingQueue1.equals(packingQueue2));
        System.assert(packingQueue2.equals(packingQueue1));
        System.assert(packingQueue1.equals(packingQueue1));
        System.assert(packingQueue3.equals(packingQueue4));
        System.assert(packingQueue4.equals(packingQueue3));
        System.assert(packingQueue3.equals(packingQueue3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPackingQueue packingQueue1 = OASPackingQueue.getExample();
        OASPackingQueue packingQueue2 = OASPackingQueue.getExample();
        OASPackingQueue packingQueue3 = new OASPackingQueue();
        OASPackingQueue packingQueue4 = new OASPackingQueue();

        System.assert(packingQueue1.equals(packingQueue2));
        System.assert(packingQueue2.equals(packingQueue1));
        System.assert(packingQueue3.equals(packingQueue4));
        System.assert(packingQueue4.equals(packingQueue3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPackingQueue packingQueue1 = OASPackingQueue.getExample();
        OASPackingQueue packingQueue2 = new OASPackingQueue();

        System.assertEquals(false, packingQueue1.equals('foo'));
        System.assertEquals(false, packingQueue2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPackingQueue packingQueue1 = OASPackingQueue.getExample();
        OASPackingQueue packingQueue2 = new OASPackingQueue();
        OASPackingQueue packingQueue3;

        System.assertEquals(false, packingQueue1.equals(packingQueue3));
        System.assertEquals(false, packingQueue2.equals(packingQueue3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPackingQueue packingQueue1 = OASPackingQueue.getExample();
        OASPackingQueue packingQueue2 = new OASPackingQueue();

        System.assertEquals(packingQueue1.hashCode(), packingQueue1.hashCode());
        System.assertEquals(packingQueue2.hashCode(), packingQueue2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPackingQueue packingQueue1 = OASPackingQueue.getExample();
        OASPackingQueue packingQueue2 = OASPackingQueue.getExample();
        OASPackingQueue packingQueue3 = new OASPackingQueue();
        OASPackingQueue packingQueue4 = new OASPackingQueue();

        System.assert(packingQueue1.equals(packingQueue2));
        System.assert(packingQueue3.equals(packingQueue4));
        System.assertEquals(packingQueue1.hashCode(), packingQueue2.hashCode());
        System.assertEquals(packingQueue3.hashCode(), packingQueue4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPackingQueue packingQueue = new OASPackingQueue();
        Map<String, String> x-property-mappings = packingQueue.getx-property-mappings();
        System.assertEquals('pageSize', x-property-mappings.get('page_size'));
        System.assertEquals('totalCount', x-property-mappings.get('total_count'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPackingQueue packingQueue = new OASPackingQueue();
        System.assertEquals(new List<OASPackingQueueItem>(), packingQueue.items);
        System.assertEquals(null, packingQueue.page);
        System.assertEquals(null, packingQueue.pageSize);
        System.assertEquals(null, packingQueue.totalCount);
    }
}
