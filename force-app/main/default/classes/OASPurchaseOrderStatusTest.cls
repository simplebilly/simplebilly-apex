@isTest
private class OASPurchaseOrderStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASPurchaseOrderStatus> expected = new Set<OASPurchaseOrderStatus>{
            OASPurchaseOrderStatus.DRAFT,
            OASPurchaseOrderStatus.ORDERED,
            OASPurchaseOrderStatus.PARTIALLY_RECEIVED,
            OASPurchaseOrderStatus.RECEIVED,
            OASPurchaseOrderStatus.CANCELLED
        };
        Set<OASPurchaseOrderStatus> actual  = new Set<OASPurchaseOrderStatus>(OASPurchaseOrderStatus.values());
        System.assertEquals(expected, actual);
    }
}
