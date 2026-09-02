@isTest
private class OASReturnOrderStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASReturnOrderStatus> expected = new Set<OASReturnOrderStatus>{
            OASReturnOrderStatus.REQUESTED,
            OASReturnOrderStatus.RECEIVED,
            OASReturnOrderStatus.INSPECTED,
            OASReturnOrderStatus.RESTOCKED,
            OASReturnOrderStatus.CLOSED
        };
        Set<OASReturnOrderStatus> actual  = new Set<OASReturnOrderStatus>(OASReturnOrderStatus.values());
        System.assertEquals(expected, actual);
    }
}
