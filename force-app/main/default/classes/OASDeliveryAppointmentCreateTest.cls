@isTest
private class OASDeliveryAppointmentCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeliveryAppointmentCreate deliveryAppointmentCreate1 = OASDeliveryAppointmentCreate.getExample();
        OASDeliveryAppointmentCreate deliveryAppointmentCreate2 = deliveryAppointmentCreate1;
        OASDeliveryAppointmentCreate deliveryAppointmentCreate3 = new OASDeliveryAppointmentCreate();
        OASDeliveryAppointmentCreate deliveryAppointmentCreate4 = deliveryAppointmentCreate3;

        System.assert(deliveryAppointmentCreate1.equals(deliveryAppointmentCreate2));
        System.assert(deliveryAppointmentCreate2.equals(deliveryAppointmentCreate1));
        System.assert(deliveryAppointmentCreate1.equals(deliveryAppointmentCreate1));
        System.assert(deliveryAppointmentCreate3.equals(deliveryAppointmentCreate4));
        System.assert(deliveryAppointmentCreate4.equals(deliveryAppointmentCreate3));
        System.assert(deliveryAppointmentCreate3.equals(deliveryAppointmentCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeliveryAppointmentCreate deliveryAppointmentCreate1 = OASDeliveryAppointmentCreate.getExample();
        OASDeliveryAppointmentCreate deliveryAppointmentCreate2 = OASDeliveryAppointmentCreate.getExample();
        OASDeliveryAppointmentCreate deliveryAppointmentCreate3 = new OASDeliveryAppointmentCreate();
        OASDeliveryAppointmentCreate deliveryAppointmentCreate4 = new OASDeliveryAppointmentCreate();

        System.assert(deliveryAppointmentCreate1.equals(deliveryAppointmentCreate2));
        System.assert(deliveryAppointmentCreate2.equals(deliveryAppointmentCreate1));
        System.assert(deliveryAppointmentCreate3.equals(deliveryAppointmentCreate4));
        System.assert(deliveryAppointmentCreate4.equals(deliveryAppointmentCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeliveryAppointmentCreate deliveryAppointmentCreate1 = OASDeliveryAppointmentCreate.getExample();
        OASDeliveryAppointmentCreate deliveryAppointmentCreate2 = new OASDeliveryAppointmentCreate();

        System.assertEquals(false, deliveryAppointmentCreate1.equals('foo'));
        System.assertEquals(false, deliveryAppointmentCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeliveryAppointmentCreate deliveryAppointmentCreate1 = OASDeliveryAppointmentCreate.getExample();
        OASDeliveryAppointmentCreate deliveryAppointmentCreate2 = new OASDeliveryAppointmentCreate();
        OASDeliveryAppointmentCreate deliveryAppointmentCreate3;

        System.assertEquals(false, deliveryAppointmentCreate1.equals(deliveryAppointmentCreate3));
        System.assertEquals(false, deliveryAppointmentCreate2.equals(deliveryAppointmentCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeliveryAppointmentCreate deliveryAppointmentCreate1 = OASDeliveryAppointmentCreate.getExample();
        OASDeliveryAppointmentCreate deliveryAppointmentCreate2 = new OASDeliveryAppointmentCreate();

        System.assertEquals(deliveryAppointmentCreate1.hashCode(), deliveryAppointmentCreate1.hashCode());
        System.assertEquals(deliveryAppointmentCreate2.hashCode(), deliveryAppointmentCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeliveryAppointmentCreate deliveryAppointmentCreate1 = OASDeliveryAppointmentCreate.getExample();
        OASDeliveryAppointmentCreate deliveryAppointmentCreate2 = OASDeliveryAppointmentCreate.getExample();
        OASDeliveryAppointmentCreate deliveryAppointmentCreate3 = new OASDeliveryAppointmentCreate();
        OASDeliveryAppointmentCreate deliveryAppointmentCreate4 = new OASDeliveryAppointmentCreate();

        System.assert(deliveryAppointmentCreate1.equals(deliveryAppointmentCreate2));
        System.assert(deliveryAppointmentCreate3.equals(deliveryAppointmentCreate4));
        System.assertEquals(deliveryAppointmentCreate1.hashCode(), deliveryAppointmentCreate2.hashCode());
        System.assertEquals(deliveryAppointmentCreate3.hashCode(), deliveryAppointmentCreate4.hashCode());
    }
}
