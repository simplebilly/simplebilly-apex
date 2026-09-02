@isTest
private class OASPublicDeliveryAppointmentResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASPublicDeliveryAppointmentResponse publicDeliveryAppointmentResponse1 = OASPublicDeliveryAppointmentResponse.getExample();
        OASPublicDeliveryAppointmentResponse publicDeliveryAppointmentResponse2 = publicDeliveryAppointmentResponse1;
        OASPublicDeliveryAppointmentResponse publicDeliveryAppointmentResponse3 = new OASPublicDeliveryAppointmentResponse();
        OASPublicDeliveryAppointmentResponse publicDeliveryAppointmentResponse4 = publicDeliveryAppointmentResponse3;

        System.assert(publicDeliveryAppointmentResponse1.equals(publicDeliveryAppointmentResponse2));
        System.assert(publicDeliveryAppointmentResponse2.equals(publicDeliveryAppointmentResponse1));
        System.assert(publicDeliveryAppointmentResponse1.equals(publicDeliveryAppointmentResponse1));
        System.assert(publicDeliveryAppointmentResponse3.equals(publicDeliveryAppointmentResponse4));
        System.assert(publicDeliveryAppointmentResponse4.equals(publicDeliveryAppointmentResponse3));
        System.assert(publicDeliveryAppointmentResponse3.equals(publicDeliveryAppointmentResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPublicDeliveryAppointmentResponse publicDeliveryAppointmentResponse1 = OASPublicDeliveryAppointmentResponse.getExample();
        OASPublicDeliveryAppointmentResponse publicDeliveryAppointmentResponse2 = OASPublicDeliveryAppointmentResponse.getExample();
        OASPublicDeliveryAppointmentResponse publicDeliveryAppointmentResponse3 = new OASPublicDeliveryAppointmentResponse();
        OASPublicDeliveryAppointmentResponse publicDeliveryAppointmentResponse4 = new OASPublicDeliveryAppointmentResponse();

        System.assert(publicDeliveryAppointmentResponse1.equals(publicDeliveryAppointmentResponse2));
        System.assert(publicDeliveryAppointmentResponse2.equals(publicDeliveryAppointmentResponse1));
        System.assert(publicDeliveryAppointmentResponse3.equals(publicDeliveryAppointmentResponse4));
        System.assert(publicDeliveryAppointmentResponse4.equals(publicDeliveryAppointmentResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPublicDeliveryAppointmentResponse publicDeliveryAppointmentResponse1 = OASPublicDeliveryAppointmentResponse.getExample();
        OASPublicDeliveryAppointmentResponse publicDeliveryAppointmentResponse2 = new OASPublicDeliveryAppointmentResponse();

        System.assertEquals(false, publicDeliveryAppointmentResponse1.equals('foo'));
        System.assertEquals(false, publicDeliveryAppointmentResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPublicDeliveryAppointmentResponse publicDeliveryAppointmentResponse1 = OASPublicDeliveryAppointmentResponse.getExample();
        OASPublicDeliveryAppointmentResponse publicDeliveryAppointmentResponse2 = new OASPublicDeliveryAppointmentResponse();
        OASPublicDeliveryAppointmentResponse publicDeliveryAppointmentResponse3;

        System.assertEquals(false, publicDeliveryAppointmentResponse1.equals(publicDeliveryAppointmentResponse3));
        System.assertEquals(false, publicDeliveryAppointmentResponse2.equals(publicDeliveryAppointmentResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPublicDeliveryAppointmentResponse publicDeliveryAppointmentResponse1 = OASPublicDeliveryAppointmentResponse.getExample();
        OASPublicDeliveryAppointmentResponse publicDeliveryAppointmentResponse2 = new OASPublicDeliveryAppointmentResponse();

        System.assertEquals(publicDeliveryAppointmentResponse1.hashCode(), publicDeliveryAppointmentResponse1.hashCode());
        System.assertEquals(publicDeliveryAppointmentResponse2.hashCode(), publicDeliveryAppointmentResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPublicDeliveryAppointmentResponse publicDeliveryAppointmentResponse1 = OASPublicDeliveryAppointmentResponse.getExample();
        OASPublicDeliveryAppointmentResponse publicDeliveryAppointmentResponse2 = OASPublicDeliveryAppointmentResponse.getExample();
        OASPublicDeliveryAppointmentResponse publicDeliveryAppointmentResponse3 = new OASPublicDeliveryAppointmentResponse();
        OASPublicDeliveryAppointmentResponse publicDeliveryAppointmentResponse4 = new OASPublicDeliveryAppointmentResponse();

        System.assert(publicDeliveryAppointmentResponse1.equals(publicDeliveryAppointmentResponse2));
        System.assert(publicDeliveryAppointmentResponse3.equals(publicDeliveryAppointmentResponse4));
        System.assertEquals(publicDeliveryAppointmentResponse1.hashCode(), publicDeliveryAppointmentResponse2.hashCode());
        System.assertEquals(publicDeliveryAppointmentResponse3.hashCode(), publicDeliveryAppointmentResponse4.hashCode());
    }
}
