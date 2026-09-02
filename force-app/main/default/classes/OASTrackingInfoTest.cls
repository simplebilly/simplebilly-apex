@isTest
private class OASTrackingInfoTest {
    @isTest
    private static void equalsSameInstance() {
        OASTrackingInfo trackingInfo1 = OASTrackingInfo.getExample();
        OASTrackingInfo trackingInfo2 = trackingInfo1;
        OASTrackingInfo trackingInfo3 = new OASTrackingInfo();
        OASTrackingInfo trackingInfo4 = trackingInfo3;

        System.assert(trackingInfo1.equals(trackingInfo2));
        System.assert(trackingInfo2.equals(trackingInfo1));
        System.assert(trackingInfo1.equals(trackingInfo1));
        System.assert(trackingInfo3.equals(trackingInfo4));
        System.assert(trackingInfo4.equals(trackingInfo3));
        System.assert(trackingInfo3.equals(trackingInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTrackingInfo trackingInfo1 = OASTrackingInfo.getExample();
        OASTrackingInfo trackingInfo2 = OASTrackingInfo.getExample();
        OASTrackingInfo trackingInfo3 = new OASTrackingInfo();
        OASTrackingInfo trackingInfo4 = new OASTrackingInfo();

        System.assert(trackingInfo1.equals(trackingInfo2));
        System.assert(trackingInfo2.equals(trackingInfo1));
        System.assert(trackingInfo3.equals(trackingInfo4));
        System.assert(trackingInfo4.equals(trackingInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTrackingInfo trackingInfo1 = OASTrackingInfo.getExample();
        OASTrackingInfo trackingInfo2 = new OASTrackingInfo();

        System.assertEquals(false, trackingInfo1.equals('foo'));
        System.assertEquals(false, trackingInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTrackingInfo trackingInfo1 = OASTrackingInfo.getExample();
        OASTrackingInfo trackingInfo2 = new OASTrackingInfo();
        OASTrackingInfo trackingInfo3;

        System.assertEquals(false, trackingInfo1.equals(trackingInfo3));
        System.assertEquals(false, trackingInfo2.equals(trackingInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTrackingInfo trackingInfo1 = OASTrackingInfo.getExample();
        OASTrackingInfo trackingInfo2 = new OASTrackingInfo();

        System.assertEquals(trackingInfo1.hashCode(), trackingInfo1.hashCode());
        System.assertEquals(trackingInfo2.hashCode(), trackingInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTrackingInfo trackingInfo1 = OASTrackingInfo.getExample();
        OASTrackingInfo trackingInfo2 = OASTrackingInfo.getExample();
        OASTrackingInfo trackingInfo3 = new OASTrackingInfo();
        OASTrackingInfo trackingInfo4 = new OASTrackingInfo();

        System.assert(trackingInfo1.equals(trackingInfo2));
        System.assert(trackingInfo3.equals(trackingInfo4));
        System.assertEquals(trackingInfo1.hashCode(), trackingInfo2.hashCode());
        System.assertEquals(trackingInfo3.hashCode(), trackingInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTrackingInfo trackingInfo = new OASTrackingInfo();
        Map<String, String> x-property-mappings = trackingInfo.getx-property-mappings();
        System.assertEquals('estimatedDelivery', x-property-mappings.get('estimated_delivery'));
        System.assertEquals('rawResponse', x-property-mappings.get('raw_response'));
        System.assertEquals('trackingNumber', x-property-mappings.get('tracking_number'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASTrackingInfo trackingInfo = new OASTrackingInfo();
        System.assertEquals(new List<OASTrackingEvent>(), trackingInfo.events);
        System.assertEquals(null, trackingInfo.carrier);
        System.assertEquals(null, trackingInfo.estimatedDelivery);
        System.assertEquals(null, trackingInfo.rawResponse);
        System.assertEquals(null, trackingInfo.status);
        System.assertEquals(null, trackingInfo.trackingNumber);
    }
}
