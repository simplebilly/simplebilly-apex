@isTest
private class OASPublicDeliveryAppointmentRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASPublicDeliveryAppointmentRequest publicDeliveryAppointmentRequest1 = OASPublicDeliveryAppointmentRequest.getExample();
        OASPublicDeliveryAppointmentRequest publicDeliveryAppointmentRequest2 = publicDeliveryAppointmentRequest1;
        OASPublicDeliveryAppointmentRequest publicDeliveryAppointmentRequest3 = new OASPublicDeliveryAppointmentRequest();
        OASPublicDeliveryAppointmentRequest publicDeliveryAppointmentRequest4 = publicDeliveryAppointmentRequest3;

        System.assert(publicDeliveryAppointmentRequest1.equals(publicDeliveryAppointmentRequest2));
        System.assert(publicDeliveryAppointmentRequest2.equals(publicDeliveryAppointmentRequest1));
        System.assert(publicDeliveryAppointmentRequest1.equals(publicDeliveryAppointmentRequest1));
        System.assert(publicDeliveryAppointmentRequest3.equals(publicDeliveryAppointmentRequest4));
        System.assert(publicDeliveryAppointmentRequest4.equals(publicDeliveryAppointmentRequest3));
        System.assert(publicDeliveryAppointmentRequest3.equals(publicDeliveryAppointmentRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPublicDeliveryAppointmentRequest publicDeliveryAppointmentRequest1 = OASPublicDeliveryAppointmentRequest.getExample();
        OASPublicDeliveryAppointmentRequest publicDeliveryAppointmentRequest2 = OASPublicDeliveryAppointmentRequest.getExample();
        OASPublicDeliveryAppointmentRequest publicDeliveryAppointmentRequest3 = new OASPublicDeliveryAppointmentRequest();
        OASPublicDeliveryAppointmentRequest publicDeliveryAppointmentRequest4 = new OASPublicDeliveryAppointmentRequest();

        System.assert(publicDeliveryAppointmentRequest1.equals(publicDeliveryAppointmentRequest2));
        System.assert(publicDeliveryAppointmentRequest2.equals(publicDeliveryAppointmentRequest1));
        System.assert(publicDeliveryAppointmentRequest3.equals(publicDeliveryAppointmentRequest4));
        System.assert(publicDeliveryAppointmentRequest4.equals(publicDeliveryAppointmentRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPublicDeliveryAppointmentRequest publicDeliveryAppointmentRequest1 = OASPublicDeliveryAppointmentRequest.getExample();
        OASPublicDeliveryAppointmentRequest publicDeliveryAppointmentRequest2 = new OASPublicDeliveryAppointmentRequest();

        System.assertEquals(false, publicDeliveryAppointmentRequest1.equals('foo'));
        System.assertEquals(false, publicDeliveryAppointmentRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPublicDeliveryAppointmentRequest publicDeliveryAppointmentRequest1 = OASPublicDeliveryAppointmentRequest.getExample();
        OASPublicDeliveryAppointmentRequest publicDeliveryAppointmentRequest2 = new OASPublicDeliveryAppointmentRequest();
        OASPublicDeliveryAppointmentRequest publicDeliveryAppointmentRequest3;

        System.assertEquals(false, publicDeliveryAppointmentRequest1.equals(publicDeliveryAppointmentRequest3));
        System.assertEquals(false, publicDeliveryAppointmentRequest2.equals(publicDeliveryAppointmentRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPublicDeliveryAppointmentRequest publicDeliveryAppointmentRequest1 = OASPublicDeliveryAppointmentRequest.getExample();
        OASPublicDeliveryAppointmentRequest publicDeliveryAppointmentRequest2 = new OASPublicDeliveryAppointmentRequest();

        System.assertEquals(publicDeliveryAppointmentRequest1.hashCode(), publicDeliveryAppointmentRequest1.hashCode());
        System.assertEquals(publicDeliveryAppointmentRequest2.hashCode(), publicDeliveryAppointmentRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPublicDeliveryAppointmentRequest publicDeliveryAppointmentRequest1 = OASPublicDeliveryAppointmentRequest.getExample();
        OASPublicDeliveryAppointmentRequest publicDeliveryAppointmentRequest2 = OASPublicDeliveryAppointmentRequest.getExample();
        OASPublicDeliveryAppointmentRequest publicDeliveryAppointmentRequest3 = new OASPublicDeliveryAppointmentRequest();
        OASPublicDeliveryAppointmentRequest publicDeliveryAppointmentRequest4 = new OASPublicDeliveryAppointmentRequest();

        System.assert(publicDeliveryAppointmentRequest1.equals(publicDeliveryAppointmentRequest2));
        System.assert(publicDeliveryAppointmentRequest3.equals(publicDeliveryAppointmentRequest4));
        System.assertEquals(publicDeliveryAppointmentRequest1.hashCode(), publicDeliveryAppointmentRequest2.hashCode());
        System.assertEquals(publicDeliveryAppointmentRequest3.hashCode(), publicDeliveryAppointmentRequest4.hashCode());
    }
}
