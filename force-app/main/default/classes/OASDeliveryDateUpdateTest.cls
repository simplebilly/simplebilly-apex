@isTest
private class OASDeliveryDateUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeliveryDateUpdate deliveryDateUpdate1 = OASDeliveryDateUpdate.getExample();
        OASDeliveryDateUpdate deliveryDateUpdate2 = deliveryDateUpdate1;
        OASDeliveryDateUpdate deliveryDateUpdate3 = new OASDeliveryDateUpdate();
        OASDeliveryDateUpdate deliveryDateUpdate4 = deliveryDateUpdate3;

        System.assert(deliveryDateUpdate1.equals(deliveryDateUpdate2));
        System.assert(deliveryDateUpdate2.equals(deliveryDateUpdate1));
        System.assert(deliveryDateUpdate1.equals(deliveryDateUpdate1));
        System.assert(deliveryDateUpdate3.equals(deliveryDateUpdate4));
        System.assert(deliveryDateUpdate4.equals(deliveryDateUpdate3));
        System.assert(deliveryDateUpdate3.equals(deliveryDateUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeliveryDateUpdate deliveryDateUpdate1 = OASDeliveryDateUpdate.getExample();
        OASDeliveryDateUpdate deliveryDateUpdate2 = OASDeliveryDateUpdate.getExample();
        OASDeliveryDateUpdate deliveryDateUpdate3 = new OASDeliveryDateUpdate();
        OASDeliveryDateUpdate deliveryDateUpdate4 = new OASDeliveryDateUpdate();

        System.assert(deliveryDateUpdate1.equals(deliveryDateUpdate2));
        System.assert(deliveryDateUpdate2.equals(deliveryDateUpdate1));
        System.assert(deliveryDateUpdate3.equals(deliveryDateUpdate4));
        System.assert(deliveryDateUpdate4.equals(deliveryDateUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeliveryDateUpdate deliveryDateUpdate1 = OASDeliveryDateUpdate.getExample();
        OASDeliveryDateUpdate deliveryDateUpdate2 = new OASDeliveryDateUpdate();

        System.assertEquals(false, deliveryDateUpdate1.equals('foo'));
        System.assertEquals(false, deliveryDateUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeliveryDateUpdate deliveryDateUpdate1 = OASDeliveryDateUpdate.getExample();
        OASDeliveryDateUpdate deliveryDateUpdate2 = new OASDeliveryDateUpdate();
        OASDeliveryDateUpdate deliveryDateUpdate3;

        System.assertEquals(false, deliveryDateUpdate1.equals(deliveryDateUpdate3));
        System.assertEquals(false, deliveryDateUpdate2.equals(deliveryDateUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeliveryDateUpdate deliveryDateUpdate1 = OASDeliveryDateUpdate.getExample();
        OASDeliveryDateUpdate deliveryDateUpdate2 = new OASDeliveryDateUpdate();

        System.assertEquals(deliveryDateUpdate1.hashCode(), deliveryDateUpdate1.hashCode());
        System.assertEquals(deliveryDateUpdate2.hashCode(), deliveryDateUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeliveryDateUpdate deliveryDateUpdate1 = OASDeliveryDateUpdate.getExample();
        OASDeliveryDateUpdate deliveryDateUpdate2 = OASDeliveryDateUpdate.getExample();
        OASDeliveryDateUpdate deliveryDateUpdate3 = new OASDeliveryDateUpdate();
        OASDeliveryDateUpdate deliveryDateUpdate4 = new OASDeliveryDateUpdate();

        System.assert(deliveryDateUpdate1.equals(deliveryDateUpdate2));
        System.assert(deliveryDateUpdate3.equals(deliveryDateUpdate4));
        System.assertEquals(deliveryDateUpdate1.hashCode(), deliveryDateUpdate2.hashCode());
        System.assertEquals(deliveryDateUpdate3.hashCode(), deliveryDateUpdate4.hashCode());
    }
}
