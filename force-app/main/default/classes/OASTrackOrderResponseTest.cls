@isTest
private class OASTrackOrderResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASTrackOrderResponse trackOrderResponse1 = OASTrackOrderResponse.getExample();
        OASTrackOrderResponse trackOrderResponse2 = trackOrderResponse1;
        OASTrackOrderResponse trackOrderResponse3 = new OASTrackOrderResponse();
        OASTrackOrderResponse trackOrderResponse4 = trackOrderResponse3;

        System.assert(trackOrderResponse1.equals(trackOrderResponse2));
        System.assert(trackOrderResponse2.equals(trackOrderResponse1));
        System.assert(trackOrderResponse1.equals(trackOrderResponse1));
        System.assert(trackOrderResponse3.equals(trackOrderResponse4));
        System.assert(trackOrderResponse4.equals(trackOrderResponse3));
        System.assert(trackOrderResponse3.equals(trackOrderResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTrackOrderResponse trackOrderResponse1 = OASTrackOrderResponse.getExample();
        OASTrackOrderResponse trackOrderResponse2 = OASTrackOrderResponse.getExample();
        OASTrackOrderResponse trackOrderResponse3 = new OASTrackOrderResponse();
        OASTrackOrderResponse trackOrderResponse4 = new OASTrackOrderResponse();

        System.assert(trackOrderResponse1.equals(trackOrderResponse2));
        System.assert(trackOrderResponse2.equals(trackOrderResponse1));
        System.assert(trackOrderResponse3.equals(trackOrderResponse4));
        System.assert(trackOrderResponse4.equals(trackOrderResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTrackOrderResponse trackOrderResponse1 = OASTrackOrderResponse.getExample();
        OASTrackOrderResponse trackOrderResponse2 = new OASTrackOrderResponse();

        System.assertEquals(false, trackOrderResponse1.equals('foo'));
        System.assertEquals(false, trackOrderResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTrackOrderResponse trackOrderResponse1 = OASTrackOrderResponse.getExample();
        OASTrackOrderResponse trackOrderResponse2 = new OASTrackOrderResponse();
        OASTrackOrderResponse trackOrderResponse3;

        System.assertEquals(false, trackOrderResponse1.equals(trackOrderResponse3));
        System.assertEquals(false, trackOrderResponse2.equals(trackOrderResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTrackOrderResponse trackOrderResponse1 = OASTrackOrderResponse.getExample();
        OASTrackOrderResponse trackOrderResponse2 = new OASTrackOrderResponse();

        System.assertEquals(trackOrderResponse1.hashCode(), trackOrderResponse1.hashCode());
        System.assertEquals(trackOrderResponse2.hashCode(), trackOrderResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTrackOrderResponse trackOrderResponse1 = OASTrackOrderResponse.getExample();
        OASTrackOrderResponse trackOrderResponse2 = OASTrackOrderResponse.getExample();
        OASTrackOrderResponse trackOrderResponse3 = new OASTrackOrderResponse();
        OASTrackOrderResponse trackOrderResponse4 = new OASTrackOrderResponse();

        System.assert(trackOrderResponse1.equals(trackOrderResponse2));
        System.assert(trackOrderResponse3.equals(trackOrderResponse4));
        System.assertEquals(trackOrderResponse1.hashCode(), trackOrderResponse2.hashCode());
        System.assertEquals(trackOrderResponse3.hashCode(), trackOrderResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTrackOrderResponse trackOrderResponse = new OASTrackOrderResponse();
        Map<String, String> x-property-mappings = trackOrderResponse.getx-property-mappings();
        System.assertEquals('orderNumber', x-property-mappings.get('order_number'));
        System.assertEquals('orderStatus', x-property-mappings.get('order_status'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASTrackOrderResponse trackOrderResponse = new OASTrackOrderResponse();
        System.assertEquals(new List<OASTrackedShipment>(), trackOrderResponse.shipments);
        System.assertEquals(null, trackOrderResponse.orderNumber);
        System.assertEquals(null, trackOrderResponse.orderStatus);
    }
}
