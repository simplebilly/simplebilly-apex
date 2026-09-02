@isTest
private class OASShipmentTest {
    @isTest
    private static void equalsSameInstance() {
        OASShipment shipment1 = OASShipment.getExample();
        OASShipment shipment2 = shipment1;
        OASShipment shipment3 = new OASShipment();
        OASShipment shipment4 = shipment3;

        System.assert(shipment1.equals(shipment2));
        System.assert(shipment2.equals(shipment1));
        System.assert(shipment1.equals(shipment1));
        System.assert(shipment3.equals(shipment4));
        System.assert(shipment4.equals(shipment3));
        System.assert(shipment3.equals(shipment3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASShipment shipment1 = OASShipment.getExample();
        OASShipment shipment2 = OASShipment.getExample();
        OASShipment shipment3 = new OASShipment();
        OASShipment shipment4 = new OASShipment();

        System.assert(shipment1.equals(shipment2));
        System.assert(shipment2.equals(shipment1));
        System.assert(shipment3.equals(shipment4));
        System.assert(shipment4.equals(shipment3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASShipment shipment1 = OASShipment.getExample();
        OASShipment shipment2 = new OASShipment();

        System.assertEquals(false, shipment1.equals('foo'));
        System.assertEquals(false, shipment2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASShipment shipment1 = OASShipment.getExample();
        OASShipment shipment2 = new OASShipment();
        OASShipment shipment3;

        System.assertEquals(false, shipment1.equals(shipment3));
        System.assertEquals(false, shipment2.equals(shipment3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASShipment shipment1 = OASShipment.getExample();
        OASShipment shipment2 = new OASShipment();

        System.assertEquals(shipment1.hashCode(), shipment1.hashCode());
        System.assertEquals(shipment2.hashCode(), shipment2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASShipment shipment1 = OASShipment.getExample();
        OASShipment shipment2 = OASShipment.getExample();
        OASShipment shipment3 = new OASShipment();
        OASShipment shipment4 = new OASShipment();

        System.assert(shipment1.equals(shipment2));
        System.assert(shipment3.equals(shipment4));
        System.assertEquals(shipment1.hashCode(), shipment2.hashCode());
        System.assertEquals(shipment3.hashCode(), shipment4.hashCode());
    }
}
