@isTest
private class OASPublicDeliveryAppointmentStatusReTest {
    @isTest
    private static void equalsSameInstance() {
        OASPublicDeliveryAppointmentStatusRe publicDeliveryAppointmentStatusResponse1 = OASPublicDeliveryAppointmentStatusRe.getExample();
        OASPublicDeliveryAppointmentStatusRe publicDeliveryAppointmentStatusResponse2 = publicDeliveryAppointmentStatusResponse1;
        OASPublicDeliveryAppointmentStatusRe publicDeliveryAppointmentStatusResponse3 = new OASPublicDeliveryAppointmentStatusRe();
        OASPublicDeliveryAppointmentStatusRe publicDeliveryAppointmentStatusResponse4 = publicDeliveryAppointmentStatusResponse3;

        System.assert(publicDeliveryAppointmentStatusResponse1.equals(publicDeliveryAppointmentStatusResponse2));
        System.assert(publicDeliveryAppointmentStatusResponse2.equals(publicDeliveryAppointmentStatusResponse1));
        System.assert(publicDeliveryAppointmentStatusResponse1.equals(publicDeliveryAppointmentStatusResponse1));
        System.assert(publicDeliveryAppointmentStatusResponse3.equals(publicDeliveryAppointmentStatusResponse4));
        System.assert(publicDeliveryAppointmentStatusResponse4.equals(publicDeliveryAppointmentStatusResponse3));
        System.assert(publicDeliveryAppointmentStatusResponse3.equals(publicDeliveryAppointmentStatusResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPublicDeliveryAppointmentStatusRe publicDeliveryAppointmentStatusResponse1 = OASPublicDeliveryAppointmentStatusRe.getExample();
        OASPublicDeliveryAppointmentStatusRe publicDeliveryAppointmentStatusResponse2 = OASPublicDeliveryAppointmentStatusRe.getExample();
        OASPublicDeliveryAppointmentStatusRe publicDeliveryAppointmentStatusResponse3 = new OASPublicDeliveryAppointmentStatusRe();
        OASPublicDeliveryAppointmentStatusRe publicDeliveryAppointmentStatusResponse4 = new OASPublicDeliveryAppointmentStatusRe();

        System.assert(publicDeliveryAppointmentStatusResponse1.equals(publicDeliveryAppointmentStatusResponse2));
        System.assert(publicDeliveryAppointmentStatusResponse2.equals(publicDeliveryAppointmentStatusResponse1));
        System.assert(publicDeliveryAppointmentStatusResponse3.equals(publicDeliveryAppointmentStatusResponse4));
        System.assert(publicDeliveryAppointmentStatusResponse4.equals(publicDeliveryAppointmentStatusResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPublicDeliveryAppointmentStatusRe publicDeliveryAppointmentStatusResponse1 = OASPublicDeliveryAppointmentStatusRe.getExample();
        OASPublicDeliveryAppointmentStatusRe publicDeliveryAppointmentStatusResponse2 = new OASPublicDeliveryAppointmentStatusRe();

        System.assertEquals(false, publicDeliveryAppointmentStatusResponse1.equals('foo'));
        System.assertEquals(false, publicDeliveryAppointmentStatusResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPublicDeliveryAppointmentStatusRe publicDeliveryAppointmentStatusResponse1 = OASPublicDeliveryAppointmentStatusRe.getExample();
        OASPublicDeliveryAppointmentStatusRe publicDeliveryAppointmentStatusResponse2 = new OASPublicDeliveryAppointmentStatusRe();
        OASPublicDeliveryAppointmentStatusRe publicDeliveryAppointmentStatusResponse3;

        System.assertEquals(false, publicDeliveryAppointmentStatusResponse1.equals(publicDeliveryAppointmentStatusResponse3));
        System.assertEquals(false, publicDeliveryAppointmentStatusResponse2.equals(publicDeliveryAppointmentStatusResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPublicDeliveryAppointmentStatusRe publicDeliveryAppointmentStatusResponse1 = OASPublicDeliveryAppointmentStatusRe.getExample();
        OASPublicDeliveryAppointmentStatusRe publicDeliveryAppointmentStatusResponse2 = new OASPublicDeliveryAppointmentStatusRe();

        System.assertEquals(publicDeliveryAppointmentStatusResponse1.hashCode(), publicDeliveryAppointmentStatusResponse1.hashCode());
        System.assertEquals(publicDeliveryAppointmentStatusResponse2.hashCode(), publicDeliveryAppointmentStatusResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPublicDeliveryAppointmentStatusRe publicDeliveryAppointmentStatusResponse1 = OASPublicDeliveryAppointmentStatusRe.getExample();
        OASPublicDeliveryAppointmentStatusRe publicDeliveryAppointmentStatusResponse2 = OASPublicDeliveryAppointmentStatusRe.getExample();
        OASPublicDeliveryAppointmentStatusRe publicDeliveryAppointmentStatusResponse3 = new OASPublicDeliveryAppointmentStatusRe();
        OASPublicDeliveryAppointmentStatusRe publicDeliveryAppointmentStatusResponse4 = new OASPublicDeliveryAppointmentStatusRe();

        System.assert(publicDeliveryAppointmentStatusResponse1.equals(publicDeliveryAppointmentStatusResponse2));
        System.assert(publicDeliveryAppointmentStatusResponse3.equals(publicDeliveryAppointmentStatusResponse4));
        System.assertEquals(publicDeliveryAppointmentStatusResponse1.hashCode(), publicDeliveryAppointmentStatusResponse2.hashCode());
        System.assertEquals(publicDeliveryAppointmentStatusResponse3.hashCode(), publicDeliveryAppointmentStatusResponse4.hashCode());
    }
}
