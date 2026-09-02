@isTest
private class OASDiscountTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASDiscountType> expected = new Set<OASDiscountType>{
            OASDiscountType.PERCENTAGE,
            OASDiscountType.FIXED_AMOUNT
        };
        Set<OASDiscountType> actual  = new Set<OASDiscountType>(OASDiscountType.values());
        System.assertEquals(expected, actual);
    }
}
