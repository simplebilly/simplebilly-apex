@isTest
private class OASPostingCategoryTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASPostingCategoryType> expected = new Set<OASPostingCategoryType>{
            OASPostingCategoryType.INCOME,
            OASPostingCategoryType.EXPENSE
        };
        Set<OASPostingCategoryType> actual  = new Set<OASPostingCategoryType>(OASPostingCategoryType.values());
        System.assertEquals(expected, actual);
    }
}
