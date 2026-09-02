@isTest
private class OASDeliveryDateCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeliveryDateCreate deliveryDateCreate1 = OASDeliveryDateCreate.getExample();
        OASDeliveryDateCreate deliveryDateCreate2 = deliveryDateCreate1;
        OASDeliveryDateCreate deliveryDateCreate3 = new OASDeliveryDateCreate();
        OASDeliveryDateCreate deliveryDateCreate4 = deliveryDateCreate3;

        System.assert(deliveryDateCreate1.equals(deliveryDateCreate2));
        System.assert(deliveryDateCreate2.equals(deliveryDateCreate1));
        System.assert(deliveryDateCreate1.equals(deliveryDateCreate1));
        System.assert(deliveryDateCreate3.equals(deliveryDateCreate4));
        System.assert(deliveryDateCreate4.equals(deliveryDateCreate3));
        System.assert(deliveryDateCreate3.equals(deliveryDateCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeliveryDateCreate deliveryDateCreate1 = OASDeliveryDateCreate.getExample();
        OASDeliveryDateCreate deliveryDateCreate2 = OASDeliveryDateCreate.getExample();
        OASDeliveryDateCreate deliveryDateCreate3 = new OASDeliveryDateCreate();
        OASDeliveryDateCreate deliveryDateCreate4 = new OASDeliveryDateCreate();

        System.assert(deliveryDateCreate1.equals(deliveryDateCreate2));
        System.assert(deliveryDateCreate2.equals(deliveryDateCreate1));
        System.assert(deliveryDateCreate3.equals(deliveryDateCreate4));
        System.assert(deliveryDateCreate4.equals(deliveryDateCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeliveryDateCreate deliveryDateCreate1 = OASDeliveryDateCreate.getExample();
        OASDeliveryDateCreate deliveryDateCreate2 = new OASDeliveryDateCreate();

        System.assertEquals(false, deliveryDateCreate1.equals('foo'));
        System.assertEquals(false, deliveryDateCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeliveryDateCreate deliveryDateCreate1 = OASDeliveryDateCreate.getExample();
        OASDeliveryDateCreate deliveryDateCreate2 = new OASDeliveryDateCreate();
        OASDeliveryDateCreate deliveryDateCreate3;

        System.assertEquals(false, deliveryDateCreate1.equals(deliveryDateCreate3));
        System.assertEquals(false, deliveryDateCreate2.equals(deliveryDateCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeliveryDateCreate deliveryDateCreate1 = OASDeliveryDateCreate.getExample();
        OASDeliveryDateCreate deliveryDateCreate2 = new OASDeliveryDateCreate();

        System.assertEquals(deliveryDateCreate1.hashCode(), deliveryDateCreate1.hashCode());
        System.assertEquals(deliveryDateCreate2.hashCode(), deliveryDateCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeliveryDateCreate deliveryDateCreate1 = OASDeliveryDateCreate.getExample();
        OASDeliveryDateCreate deliveryDateCreate2 = OASDeliveryDateCreate.getExample();
        OASDeliveryDateCreate deliveryDateCreate3 = new OASDeliveryDateCreate();
        OASDeliveryDateCreate deliveryDateCreate4 = new OASDeliveryDateCreate();

        System.assert(deliveryDateCreate1.equals(deliveryDateCreate2));
        System.assert(deliveryDateCreate3.equals(deliveryDateCreate4));
        System.assertEquals(deliveryDateCreate1.hashCode(), deliveryDateCreate2.hashCode());
        System.assertEquals(deliveryDateCreate3.hashCode(), deliveryDateCreate4.hashCode());
    }
}
