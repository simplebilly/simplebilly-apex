@isTest
private class OASProductionOrderStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASProductionOrderStatus> expected = new Set<OASProductionOrderStatus>{
            OASProductionOrderStatus.PLANNED,
            OASProductionOrderStatus.IN_PRODUCTION,
            OASProductionOrderStatus.COMPLETED,
            OASProductionOrderStatus.CANCELLED
        };
        Set<OASProductionOrderStatus> actual  = new Set<OASProductionOrderStatus>(OASProductionOrderStatus.values());
        System.assertEquals(expected, actual);
    }
}
