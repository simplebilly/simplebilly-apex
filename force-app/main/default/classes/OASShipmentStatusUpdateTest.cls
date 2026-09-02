@isTest
private class OASShipmentStatusUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASShipmentStatusUpdate shipmentStatusUpdate1 = OASShipmentStatusUpdate.getExample();
        OASShipmentStatusUpdate shipmentStatusUpdate2 = shipmentStatusUpdate1;
        OASShipmentStatusUpdate shipmentStatusUpdate3 = new OASShipmentStatusUpdate();
        OASShipmentStatusUpdate shipmentStatusUpdate4 = shipmentStatusUpdate3;

        System.assert(shipmentStatusUpdate1.equals(shipmentStatusUpdate2));
        System.assert(shipmentStatusUpdate2.equals(shipmentStatusUpdate1));
        System.assert(shipmentStatusUpdate1.equals(shipmentStatusUpdate1));
        System.assert(shipmentStatusUpdate3.equals(shipmentStatusUpdate4));
        System.assert(shipmentStatusUpdate4.equals(shipmentStatusUpdate3));
        System.assert(shipmentStatusUpdate3.equals(shipmentStatusUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASShipmentStatusUpdate shipmentStatusUpdate1 = OASShipmentStatusUpdate.getExample();
        OASShipmentStatusUpdate shipmentStatusUpdate2 = OASShipmentStatusUpdate.getExample();
        OASShipmentStatusUpdate shipmentStatusUpdate3 = new OASShipmentStatusUpdate();
        OASShipmentStatusUpdate shipmentStatusUpdate4 = new OASShipmentStatusUpdate();

        System.assert(shipmentStatusUpdate1.equals(shipmentStatusUpdate2));
        System.assert(shipmentStatusUpdate2.equals(shipmentStatusUpdate1));
        System.assert(shipmentStatusUpdate3.equals(shipmentStatusUpdate4));
        System.assert(shipmentStatusUpdate4.equals(shipmentStatusUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASShipmentStatusUpdate shipmentStatusUpdate1 = OASShipmentStatusUpdate.getExample();
        OASShipmentStatusUpdate shipmentStatusUpdate2 = new OASShipmentStatusUpdate();

        System.assertEquals(false, shipmentStatusUpdate1.equals('foo'));
        System.assertEquals(false, shipmentStatusUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASShipmentStatusUpdate shipmentStatusUpdate1 = OASShipmentStatusUpdate.getExample();
        OASShipmentStatusUpdate shipmentStatusUpdate2 = new OASShipmentStatusUpdate();
        OASShipmentStatusUpdate shipmentStatusUpdate3;

        System.assertEquals(false, shipmentStatusUpdate1.equals(shipmentStatusUpdate3));
        System.assertEquals(false, shipmentStatusUpdate2.equals(shipmentStatusUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASShipmentStatusUpdate shipmentStatusUpdate1 = OASShipmentStatusUpdate.getExample();
        OASShipmentStatusUpdate shipmentStatusUpdate2 = new OASShipmentStatusUpdate();

        System.assertEquals(shipmentStatusUpdate1.hashCode(), shipmentStatusUpdate1.hashCode());
        System.assertEquals(shipmentStatusUpdate2.hashCode(), shipmentStatusUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASShipmentStatusUpdate shipmentStatusUpdate1 = OASShipmentStatusUpdate.getExample();
        OASShipmentStatusUpdate shipmentStatusUpdate2 = OASShipmentStatusUpdate.getExample();
        OASShipmentStatusUpdate shipmentStatusUpdate3 = new OASShipmentStatusUpdate();
        OASShipmentStatusUpdate shipmentStatusUpdate4 = new OASShipmentStatusUpdate();

        System.assert(shipmentStatusUpdate1.equals(shipmentStatusUpdate2));
        System.assert(shipmentStatusUpdate3.equals(shipmentStatusUpdate4));
        System.assertEquals(shipmentStatusUpdate1.hashCode(), shipmentStatusUpdate2.hashCode());
        System.assertEquals(shipmentStatusUpdate3.hashCode(), shipmentStatusUpdate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASShipmentStatusUpdate shipmentStatusUpdate = new OASShipmentStatusUpdate();
        Map<String, String> x-property-mappings = shipmentStatusUpdate.getx-property-mappings();
        System.assertEquals('deliveredAt', x-property-mappings.get('delivered_at'));
        System.assertEquals('signedBy', x-property-mappings.get('signed_by'));
        System.assertEquals('trackingNumber', x-property-mappings.get('tracking_number'));
    }
}
