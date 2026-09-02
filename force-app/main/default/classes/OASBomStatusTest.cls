@isTest
private class OASBomStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASBomStatus> expected = new Set<OASBomStatus>{
            OASBomStatus.DRAFT,
            OASBomStatus.ACTIVE,
            OASBomStatus.ARCHIVED
        };
        Set<OASBomStatus> actual  = new Set<OASBomStatus>(OASBomStatus.values());
        System.assertEquals(expected, actual);
    }
}
