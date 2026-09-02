@isTest
private class OASPackingCompleteRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASPackingCompleteRequest packingCompleteRequest1 = OASPackingCompleteRequest.getExample();
        OASPackingCompleteRequest packingCompleteRequest2 = packingCompleteRequest1;
        OASPackingCompleteRequest packingCompleteRequest3 = new OASPackingCompleteRequest();
        OASPackingCompleteRequest packingCompleteRequest4 = packingCompleteRequest3;

        System.assert(packingCompleteRequest1.equals(packingCompleteRequest2));
        System.assert(packingCompleteRequest2.equals(packingCompleteRequest1));
        System.assert(packingCompleteRequest1.equals(packingCompleteRequest1));
        System.assert(packingCompleteRequest3.equals(packingCompleteRequest4));
        System.assert(packingCompleteRequest4.equals(packingCompleteRequest3));
        System.assert(packingCompleteRequest3.equals(packingCompleteRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPackingCompleteRequest packingCompleteRequest1 = OASPackingCompleteRequest.getExample();
        OASPackingCompleteRequest packingCompleteRequest2 = OASPackingCompleteRequest.getExample();
        OASPackingCompleteRequest packingCompleteRequest3 = new OASPackingCompleteRequest();
        OASPackingCompleteRequest packingCompleteRequest4 = new OASPackingCompleteRequest();

        System.assert(packingCompleteRequest1.equals(packingCompleteRequest2));
        System.assert(packingCompleteRequest2.equals(packingCompleteRequest1));
        System.assert(packingCompleteRequest3.equals(packingCompleteRequest4));
        System.assert(packingCompleteRequest4.equals(packingCompleteRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPackingCompleteRequest packingCompleteRequest1 = OASPackingCompleteRequest.getExample();
        OASPackingCompleteRequest packingCompleteRequest2 = new OASPackingCompleteRequest();

        System.assertEquals(false, packingCompleteRequest1.equals('foo'));
        System.assertEquals(false, packingCompleteRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPackingCompleteRequest packingCompleteRequest1 = OASPackingCompleteRequest.getExample();
        OASPackingCompleteRequest packingCompleteRequest2 = new OASPackingCompleteRequest();
        OASPackingCompleteRequest packingCompleteRequest3;

        System.assertEquals(false, packingCompleteRequest1.equals(packingCompleteRequest3));
        System.assertEquals(false, packingCompleteRequest2.equals(packingCompleteRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPackingCompleteRequest packingCompleteRequest1 = OASPackingCompleteRequest.getExample();
        OASPackingCompleteRequest packingCompleteRequest2 = new OASPackingCompleteRequest();

        System.assertEquals(packingCompleteRequest1.hashCode(), packingCompleteRequest1.hashCode());
        System.assertEquals(packingCompleteRequest2.hashCode(), packingCompleteRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPackingCompleteRequest packingCompleteRequest1 = OASPackingCompleteRequest.getExample();
        OASPackingCompleteRequest packingCompleteRequest2 = OASPackingCompleteRequest.getExample();
        OASPackingCompleteRequest packingCompleteRequest3 = new OASPackingCompleteRequest();
        OASPackingCompleteRequest packingCompleteRequest4 = new OASPackingCompleteRequest();

        System.assert(packingCompleteRequest1.equals(packingCompleteRequest2));
        System.assert(packingCompleteRequest3.equals(packingCompleteRequest4));
        System.assertEquals(packingCompleteRequest1.hashCode(), packingCompleteRequest2.hashCode());
        System.assertEquals(packingCompleteRequest3.hashCode(), packingCompleteRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPackingCompleteRequest packingCompleteRequest = new OASPackingCompleteRequest();
        Map<String, String> x-property-mappings = packingCompleteRequest.getx-property-mappings();
        System.assertEquals('orderNumber', x-property-mappings.get('order_number'));
        System.assertEquals('shipmentId', x-property-mappings.get('shipment_id'));
        System.assertEquals('videoUrl', x-property-mappings.get('video_url'));
    }
}
