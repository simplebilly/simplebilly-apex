@isTest
private class OASTrackOrderRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASTrackOrderRequest trackOrderRequest1 = OASTrackOrderRequest.getExample();
        OASTrackOrderRequest trackOrderRequest2 = trackOrderRequest1;
        OASTrackOrderRequest trackOrderRequest3 = new OASTrackOrderRequest();
        OASTrackOrderRequest trackOrderRequest4 = trackOrderRequest3;

        System.assert(trackOrderRequest1.equals(trackOrderRequest2));
        System.assert(trackOrderRequest2.equals(trackOrderRequest1));
        System.assert(trackOrderRequest1.equals(trackOrderRequest1));
        System.assert(trackOrderRequest3.equals(trackOrderRequest4));
        System.assert(trackOrderRequest4.equals(trackOrderRequest3));
        System.assert(trackOrderRequest3.equals(trackOrderRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTrackOrderRequest trackOrderRequest1 = OASTrackOrderRequest.getExample();
        OASTrackOrderRequest trackOrderRequest2 = OASTrackOrderRequest.getExample();
        OASTrackOrderRequest trackOrderRequest3 = new OASTrackOrderRequest();
        OASTrackOrderRequest trackOrderRequest4 = new OASTrackOrderRequest();

        System.assert(trackOrderRequest1.equals(trackOrderRequest2));
        System.assert(trackOrderRequest2.equals(trackOrderRequest1));
        System.assert(trackOrderRequest3.equals(trackOrderRequest4));
        System.assert(trackOrderRequest4.equals(trackOrderRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTrackOrderRequest trackOrderRequest1 = OASTrackOrderRequest.getExample();
        OASTrackOrderRequest trackOrderRequest2 = new OASTrackOrderRequest();

        System.assertEquals(false, trackOrderRequest1.equals('foo'));
        System.assertEquals(false, trackOrderRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTrackOrderRequest trackOrderRequest1 = OASTrackOrderRequest.getExample();
        OASTrackOrderRequest trackOrderRequest2 = new OASTrackOrderRequest();
        OASTrackOrderRequest trackOrderRequest3;

        System.assertEquals(false, trackOrderRequest1.equals(trackOrderRequest3));
        System.assertEquals(false, trackOrderRequest2.equals(trackOrderRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTrackOrderRequest trackOrderRequest1 = OASTrackOrderRequest.getExample();
        OASTrackOrderRequest trackOrderRequest2 = new OASTrackOrderRequest();

        System.assertEquals(trackOrderRequest1.hashCode(), trackOrderRequest1.hashCode());
        System.assertEquals(trackOrderRequest2.hashCode(), trackOrderRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTrackOrderRequest trackOrderRequest1 = OASTrackOrderRequest.getExample();
        OASTrackOrderRequest trackOrderRequest2 = OASTrackOrderRequest.getExample();
        OASTrackOrderRequest trackOrderRequest3 = new OASTrackOrderRequest();
        OASTrackOrderRequest trackOrderRequest4 = new OASTrackOrderRequest();

        System.assert(trackOrderRequest1.equals(trackOrderRequest2));
        System.assert(trackOrderRequest3.equals(trackOrderRequest4));
        System.assertEquals(trackOrderRequest1.hashCode(), trackOrderRequest2.hashCode());
        System.assertEquals(trackOrderRequest3.hashCode(), trackOrderRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTrackOrderRequest trackOrderRequest = new OASTrackOrderRequest();
        Map<String, String> x-property-mappings = trackOrderRequest.getx-property-mappings();
        System.assertEquals('orderNumber', x-property-mappings.get('order_number'));
    }
}
