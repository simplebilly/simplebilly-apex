@isTest
private class OASPackingQueueItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASPackingQueueItem packingQueueItem1 = OASPackingQueueItem.getExample();
        OASPackingQueueItem packingQueueItem2 = packingQueueItem1;
        OASPackingQueueItem packingQueueItem3 = new OASPackingQueueItem();
        OASPackingQueueItem packingQueueItem4 = packingQueueItem3;

        System.assert(packingQueueItem1.equals(packingQueueItem2));
        System.assert(packingQueueItem2.equals(packingQueueItem1));
        System.assert(packingQueueItem1.equals(packingQueueItem1));
        System.assert(packingQueueItem3.equals(packingQueueItem4));
        System.assert(packingQueueItem4.equals(packingQueueItem3));
        System.assert(packingQueueItem3.equals(packingQueueItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPackingQueueItem packingQueueItem1 = OASPackingQueueItem.getExample();
        OASPackingQueueItem packingQueueItem2 = OASPackingQueueItem.getExample();
        OASPackingQueueItem packingQueueItem3 = new OASPackingQueueItem();
        OASPackingQueueItem packingQueueItem4 = new OASPackingQueueItem();

        System.assert(packingQueueItem1.equals(packingQueueItem2));
        System.assert(packingQueueItem2.equals(packingQueueItem1));
        System.assert(packingQueueItem3.equals(packingQueueItem4));
        System.assert(packingQueueItem4.equals(packingQueueItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPackingQueueItem packingQueueItem1 = OASPackingQueueItem.getExample();
        OASPackingQueueItem packingQueueItem2 = new OASPackingQueueItem();

        System.assertEquals(false, packingQueueItem1.equals('foo'));
        System.assertEquals(false, packingQueueItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPackingQueueItem packingQueueItem1 = OASPackingQueueItem.getExample();
        OASPackingQueueItem packingQueueItem2 = new OASPackingQueueItem();
        OASPackingQueueItem packingQueueItem3;

        System.assertEquals(false, packingQueueItem1.equals(packingQueueItem3));
        System.assertEquals(false, packingQueueItem2.equals(packingQueueItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPackingQueueItem packingQueueItem1 = OASPackingQueueItem.getExample();
        OASPackingQueueItem packingQueueItem2 = new OASPackingQueueItem();

        System.assertEquals(packingQueueItem1.hashCode(), packingQueueItem1.hashCode());
        System.assertEquals(packingQueueItem2.hashCode(), packingQueueItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPackingQueueItem packingQueueItem1 = OASPackingQueueItem.getExample();
        OASPackingQueueItem packingQueueItem2 = OASPackingQueueItem.getExample();
        OASPackingQueueItem packingQueueItem3 = new OASPackingQueueItem();
        OASPackingQueueItem packingQueueItem4 = new OASPackingQueueItem();

        System.assert(packingQueueItem1.equals(packingQueueItem2));
        System.assert(packingQueueItem3.equals(packingQueueItem4));
        System.assertEquals(packingQueueItem1.hashCode(), packingQueueItem2.hashCode());
        System.assertEquals(packingQueueItem3.hashCode(), packingQueueItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPackingQueueItem packingQueueItem = new OASPackingQueueItem();
        Map<String, String> x-property-mappings = packingQueueItem.getx-property-mappings();
        System.assertEquals('createdAt', x-property-mappings.get('created_at'));
        System.assertEquals('customerId', x-property-mappings.get('customer_id'));
        System.assertEquals('deliveryNotePrinted', x-property-mappings.get('delivery_note_printed'));
        System.assertEquals('itemsCount', x-property-mappings.get('items_count'));
        System.assertEquals('labelPrinted', x-property-mappings.get('label_printed'));
        System.assertEquals('orderNumber', x-property-mappings.get('order_number'));
        System.assertEquals('orderStatus', x-property-mappings.get('order_status'));
        System.assertEquals('shipmentId', x-property-mappings.get('shipment_id'));
        System.assertEquals('shippingAddress', x-property-mappings.get('shipping_address'));
        System.assertEquals('shippingMethod', x-property-mappings.get('shipping_method'));
        System.assertEquals('trackingNumber', x-property-mappings.get('tracking_number'));
        System.assertEquals('videoRecording', x-property-mappings.get('video_recording'));
    }
}
