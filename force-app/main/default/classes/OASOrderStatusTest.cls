@isTest
private class OASOrderStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASOrderStatus> expected = new Set<OASOrderStatus>{
            OASOrderStatus.PENDING,
            OASOrderStatus.ORDERED,
            OASOrderStatus.CONFIRMED,
            OASOrderStatus.PROCESSING,
            OASOrderStatus.PAID,
            OASOrderStatus.SHIPPED,
            OASOrderStatus.COMPLETED,
            OASOrderStatus.CLOSED,
            OASOrderStatus.CANCELLED,
            OASOrderStatus.REFUNDED,
            OASOrderStatus.FAILED
        };
        Set<OASOrderStatus> actual  = new Set<OASOrderStatus>(OASOrderStatus.values());
        System.assertEquals(expected, actual);
    }
}
