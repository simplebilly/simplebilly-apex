@isTest
private class OASDeliveryAppointmentStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASDeliveryAppointmentStatus> expected = new Set<OASDeliveryAppointmentStatus>{
            OASDeliveryAppointmentStatus.REQUESTED,
            OASDeliveryAppointmentStatus.CONFIRMED,
            OASDeliveryAppointmentStatus.ARRIVED,
            OASDeliveryAppointmentStatus.CANCELLED,
            OASDeliveryAppointmentStatus.COMPLETED
        };
        Set<OASDeliveryAppointmentStatus> actual  = new Set<OASDeliveryAppointmentStatus>(OASDeliveryAppointmentStatus.values());
        System.assertEquals(expected, actual);
    }
}
