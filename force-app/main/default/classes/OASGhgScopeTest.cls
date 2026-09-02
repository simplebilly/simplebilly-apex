@isTest
private class OASGhgScopeTest {
    @isTest
    private static void allowableValues() {
        Set<OASGhgScope> expected = new Set<OASGhgScope>{
            OASGhgScope._1,
            OASGhgScope._2,
            OASGhgScope._3
        };
        Set<OASGhgScope> actual  = new Set<OASGhgScope>(OASGhgScope.values());
        System.assertEquals(expected, actual);
    }
}
