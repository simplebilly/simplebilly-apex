@isTest
private class OASStockTransferStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASStockTransferStatus> expected = new Set<OASStockTransferStatus>{
            OASStockTransferStatus.DRAFT,
            OASStockTransferStatus.COMPLETED,
            OASStockTransferStatus.CANCELLED
        };
        Set<OASStockTransferStatus> actual  = new Set<OASStockTransferStatus>(OASStockTransferStatus.values());
        System.assertEquals(expected, actual);
    }
}
