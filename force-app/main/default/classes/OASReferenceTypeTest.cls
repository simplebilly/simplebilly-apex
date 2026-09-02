@isTest
private class OASReferenceTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASReferenceType> expected = new Set<OASReferenceType>{
            OASReferenceType.GOODS_RECEIPT,
            OASReferenceType.PRODUCTION_ORDER,
            OASReferenceType.TRANSFER_IN,
            OASReferenceType.STOCK_TRANSFER,
            OASReferenceType.RETURN_ORDER,
            OASReferenceType.INVENTORY_COUNT
        };
        Set<OASReferenceType> actual  = new Set<OASReferenceType>(OASReferenceType.values());
        System.assertEquals(expected, actual);
    }
}
