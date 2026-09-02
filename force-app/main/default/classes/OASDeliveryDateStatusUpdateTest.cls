@isTest
private class OASDeliveryDateStatusUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeliveryDateStatusUpdate deliveryDateStatusUpdate1 = OASDeliveryDateStatusUpdate.getExample();
        OASDeliveryDateStatusUpdate deliveryDateStatusUpdate2 = deliveryDateStatusUpdate1;
        OASDeliveryDateStatusUpdate deliveryDateStatusUpdate3 = new OASDeliveryDateStatusUpdate();
        OASDeliveryDateStatusUpdate deliveryDateStatusUpdate4 = deliveryDateStatusUpdate3;

        System.assert(deliveryDateStatusUpdate1.equals(deliveryDateStatusUpdate2));
        System.assert(deliveryDateStatusUpdate2.equals(deliveryDateStatusUpdate1));
        System.assert(deliveryDateStatusUpdate1.equals(deliveryDateStatusUpdate1));
        System.assert(deliveryDateStatusUpdate3.equals(deliveryDateStatusUpdate4));
        System.assert(deliveryDateStatusUpdate4.equals(deliveryDateStatusUpdate3));
        System.assert(deliveryDateStatusUpdate3.equals(deliveryDateStatusUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeliveryDateStatusUpdate deliveryDateStatusUpdate1 = OASDeliveryDateStatusUpdate.getExample();
        OASDeliveryDateStatusUpdate deliveryDateStatusUpdate2 = OASDeliveryDateStatusUpdate.getExample();
        OASDeliveryDateStatusUpdate deliveryDateStatusUpdate3 = new OASDeliveryDateStatusUpdate();
        OASDeliveryDateStatusUpdate deliveryDateStatusUpdate4 = new OASDeliveryDateStatusUpdate();

        System.assert(deliveryDateStatusUpdate1.equals(deliveryDateStatusUpdate2));
        System.assert(deliveryDateStatusUpdate2.equals(deliveryDateStatusUpdate1));
        System.assert(deliveryDateStatusUpdate3.equals(deliveryDateStatusUpdate4));
        System.assert(deliveryDateStatusUpdate4.equals(deliveryDateStatusUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeliveryDateStatusUpdate deliveryDateStatusUpdate1 = OASDeliveryDateStatusUpdate.getExample();
        OASDeliveryDateStatusUpdate deliveryDateStatusUpdate2 = new OASDeliveryDateStatusUpdate();

        System.assertEquals(false, deliveryDateStatusUpdate1.equals('foo'));
        System.assertEquals(false, deliveryDateStatusUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeliveryDateStatusUpdate deliveryDateStatusUpdate1 = OASDeliveryDateStatusUpdate.getExample();
        OASDeliveryDateStatusUpdate deliveryDateStatusUpdate2 = new OASDeliveryDateStatusUpdate();
        OASDeliveryDateStatusUpdate deliveryDateStatusUpdate3;

        System.assertEquals(false, deliveryDateStatusUpdate1.equals(deliveryDateStatusUpdate3));
        System.assertEquals(false, deliveryDateStatusUpdate2.equals(deliveryDateStatusUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeliveryDateStatusUpdate deliveryDateStatusUpdate1 = OASDeliveryDateStatusUpdate.getExample();
        OASDeliveryDateStatusUpdate deliveryDateStatusUpdate2 = new OASDeliveryDateStatusUpdate();

        System.assertEquals(deliveryDateStatusUpdate1.hashCode(), deliveryDateStatusUpdate1.hashCode());
        System.assertEquals(deliveryDateStatusUpdate2.hashCode(), deliveryDateStatusUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeliveryDateStatusUpdate deliveryDateStatusUpdate1 = OASDeliveryDateStatusUpdate.getExample();
        OASDeliveryDateStatusUpdate deliveryDateStatusUpdate2 = OASDeliveryDateStatusUpdate.getExample();
        OASDeliveryDateStatusUpdate deliveryDateStatusUpdate3 = new OASDeliveryDateStatusUpdate();
        OASDeliveryDateStatusUpdate deliveryDateStatusUpdate4 = new OASDeliveryDateStatusUpdate();

        System.assert(deliveryDateStatusUpdate1.equals(deliveryDateStatusUpdate2));
        System.assert(deliveryDateStatusUpdate3.equals(deliveryDateStatusUpdate4));
        System.assertEquals(deliveryDateStatusUpdate1.hashCode(), deliveryDateStatusUpdate2.hashCode());
        System.assertEquals(deliveryDateStatusUpdate3.hashCode(), deliveryDateStatusUpdate4.hashCode());
    }
}
