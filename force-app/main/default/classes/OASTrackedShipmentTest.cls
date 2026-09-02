@isTest
private class OASTrackedShipmentTest {
    @isTest
    private static void equalsSameInstance() {
        OASTrackedShipment trackedShipment1 = OASTrackedShipment.getExample();
        OASTrackedShipment trackedShipment2 = trackedShipment1;
        OASTrackedShipment trackedShipment3 = new OASTrackedShipment();
        OASTrackedShipment trackedShipment4 = trackedShipment3;

        System.assert(trackedShipment1.equals(trackedShipment2));
        System.assert(trackedShipment2.equals(trackedShipment1));
        System.assert(trackedShipment1.equals(trackedShipment1));
        System.assert(trackedShipment3.equals(trackedShipment4));
        System.assert(trackedShipment4.equals(trackedShipment3));
        System.assert(trackedShipment3.equals(trackedShipment3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTrackedShipment trackedShipment1 = OASTrackedShipment.getExample();
        OASTrackedShipment trackedShipment2 = OASTrackedShipment.getExample();
        OASTrackedShipment trackedShipment3 = new OASTrackedShipment();
        OASTrackedShipment trackedShipment4 = new OASTrackedShipment();

        System.assert(trackedShipment1.equals(trackedShipment2));
        System.assert(trackedShipment2.equals(trackedShipment1));
        System.assert(trackedShipment3.equals(trackedShipment4));
        System.assert(trackedShipment4.equals(trackedShipment3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTrackedShipment trackedShipment1 = OASTrackedShipment.getExample();
        OASTrackedShipment trackedShipment2 = new OASTrackedShipment();

        System.assertEquals(false, trackedShipment1.equals('foo'));
        System.assertEquals(false, trackedShipment2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTrackedShipment trackedShipment1 = OASTrackedShipment.getExample();
        OASTrackedShipment trackedShipment2 = new OASTrackedShipment();
        OASTrackedShipment trackedShipment3;

        System.assertEquals(false, trackedShipment1.equals(trackedShipment3));
        System.assertEquals(false, trackedShipment2.equals(trackedShipment3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTrackedShipment trackedShipment1 = OASTrackedShipment.getExample();
        OASTrackedShipment trackedShipment2 = new OASTrackedShipment();

        System.assertEquals(trackedShipment1.hashCode(), trackedShipment1.hashCode());
        System.assertEquals(trackedShipment2.hashCode(), trackedShipment2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTrackedShipment trackedShipment1 = OASTrackedShipment.getExample();
        OASTrackedShipment trackedShipment2 = OASTrackedShipment.getExample();
        OASTrackedShipment trackedShipment3 = new OASTrackedShipment();
        OASTrackedShipment trackedShipment4 = new OASTrackedShipment();

        System.assert(trackedShipment1.equals(trackedShipment2));
        System.assert(trackedShipment3.equals(trackedShipment4));
        System.assertEquals(trackedShipment1.hashCode(), trackedShipment2.hashCode());
        System.assertEquals(trackedShipment3.hashCode(), trackedShipment4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTrackedShipment trackedShipment = new OASTrackedShipment();
        Map<String, String> x-property-mappings = trackedShipment.getx-property-mappings();
        System.assertEquals('labelUrl', x-property-mappings.get('label_url'));
        System.assertEquals('trackingNumber', x-property-mappings.get('tracking_number'));
        System.assertEquals('trackingUrl', x-property-mappings.get('tracking_url'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASTrackedShipment trackedShipment = new OASTrackedShipment();
        System.assertEquals(new List<OASTrackingEvent>(), trackedShipment.events);
        System.assertEquals(null, trackedShipment.carrier);
        System.assertEquals(null, trackedShipment.labelUrl);
        System.assertEquals(null, trackedShipment.status);
        System.assertEquals(null, trackedShipment.trackingNumber);
        System.assertEquals(null, trackedShipment.trackingUrl);
    }
}
