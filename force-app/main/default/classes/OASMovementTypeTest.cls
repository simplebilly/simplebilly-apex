@isTest
private class OASMovementTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASMovementType> expected = new Set<OASMovementType>{
            OASMovementType.GOODS_RECEIPT,
            OASMovementType.GOODS_RECEIPT_REVERSAL,
            OASMovementType.TRANSFER_IN,
            OASMovementType.TRANSFER_OUT,
            OASMovementType.RETURN_RESTOCK,
            OASMovementType.PRODUCTION_CONSUMPTION,
            OASMovementType.PRODUCTION_COMPLETION,
            OASMovementType.INVENTORY_ADJUSTMENT,
            OASMovementType.SALE,
            OASMovementType.OTHER
        };
        Set<OASMovementType> actual  = new Set<OASMovementType>(OASMovementType.values());
        System.assertEquals(expected, actual);
    }
}
