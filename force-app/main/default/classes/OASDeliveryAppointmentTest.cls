@isTest
private class OASDeliveryAppointmentTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeliveryAppointment deliveryAppointment1 = OASDeliveryAppointment.getExample();
        OASDeliveryAppointment deliveryAppointment2 = deliveryAppointment1;
        OASDeliveryAppointment deliveryAppointment3 = new OASDeliveryAppointment();
        OASDeliveryAppointment deliveryAppointment4 = deliveryAppointment3;

        System.assert(deliveryAppointment1.equals(deliveryAppointment2));
        System.assert(deliveryAppointment2.equals(deliveryAppointment1));
        System.assert(deliveryAppointment1.equals(deliveryAppointment1));
        System.assert(deliveryAppointment3.equals(deliveryAppointment4));
        System.assert(deliveryAppointment4.equals(deliveryAppointment3));
        System.assert(deliveryAppointment3.equals(deliveryAppointment3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeliveryAppointment deliveryAppointment1 = OASDeliveryAppointment.getExample();
        OASDeliveryAppointment deliveryAppointment2 = OASDeliveryAppointment.getExample();
        OASDeliveryAppointment deliveryAppointment3 = new OASDeliveryAppointment();
        OASDeliveryAppointment deliveryAppointment4 = new OASDeliveryAppointment();

        System.assert(deliveryAppointment1.equals(deliveryAppointment2));
        System.assert(deliveryAppointment2.equals(deliveryAppointment1));
        System.assert(deliveryAppointment3.equals(deliveryAppointment4));
        System.assert(deliveryAppointment4.equals(deliveryAppointment3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeliveryAppointment deliveryAppointment1 = OASDeliveryAppointment.getExample();
        OASDeliveryAppointment deliveryAppointment2 = new OASDeliveryAppointment();

        System.assertEquals(false, deliveryAppointment1.equals('foo'));
        System.assertEquals(false, deliveryAppointment2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeliveryAppointment deliveryAppointment1 = OASDeliveryAppointment.getExample();
        OASDeliveryAppointment deliveryAppointment2 = new OASDeliveryAppointment();
        OASDeliveryAppointment deliveryAppointment3;

        System.assertEquals(false, deliveryAppointment1.equals(deliveryAppointment3));
        System.assertEquals(false, deliveryAppointment2.equals(deliveryAppointment3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeliveryAppointment deliveryAppointment1 = OASDeliveryAppointment.getExample();
        OASDeliveryAppointment deliveryAppointment2 = new OASDeliveryAppointment();

        System.assertEquals(deliveryAppointment1.hashCode(), deliveryAppointment1.hashCode());
        System.assertEquals(deliveryAppointment2.hashCode(), deliveryAppointment2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeliveryAppointment deliveryAppointment1 = OASDeliveryAppointment.getExample();
        OASDeliveryAppointment deliveryAppointment2 = OASDeliveryAppointment.getExample();
        OASDeliveryAppointment deliveryAppointment3 = new OASDeliveryAppointment();
        OASDeliveryAppointment deliveryAppointment4 = new OASDeliveryAppointment();

        System.assert(deliveryAppointment1.equals(deliveryAppointment2));
        System.assert(deliveryAppointment3.equals(deliveryAppointment4));
        System.assertEquals(deliveryAppointment1.hashCode(), deliveryAppointment2.hashCode());
        System.assertEquals(deliveryAppointment3.hashCode(), deliveryAppointment4.hashCode());
    }
}
