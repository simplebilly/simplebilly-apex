@isTest
private class OASInventoryCountStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASInventoryCountStatus> expected = new Set<OASInventoryCountStatus>{
            OASInventoryCountStatus.DRAFT,
            OASInventoryCountStatus.COUNTING,
            OASInventoryCountStatus.REVIEWED,
            OASInventoryCountStatus.POSTED
        };
        Set<OASInventoryCountStatus> actual  = new Set<OASInventoryCountStatus>(OASInventoryCountStatus.values());
        System.assertEquals(expected, actual);
    }
}
