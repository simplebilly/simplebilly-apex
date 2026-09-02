@isTest
private class OASDeliveryDateStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASDeliveryDateStatus> expected = new Set<OASDeliveryDateStatus>{
            OASDeliveryDateStatus.PROMISED,
            OASDeliveryDateStatus.CONFIRMED,
            OASDeliveryDateStatus.RESCHEDULED,
            OASDeliveryDateStatus.FULFILLED,
            OASDeliveryDateStatus.LATE,
            OASDeliveryDateStatus.CANCELLED
        };
        Set<OASDeliveryDateStatus> actual  = new Set<OASDeliveryDateStatus>(OASDeliveryDateStatus.values());
        System.assertEquals(expected, actual);
    }
}
