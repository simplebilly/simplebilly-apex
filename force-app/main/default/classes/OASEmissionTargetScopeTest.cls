@isTest
private class OASEmissionTargetScopeTest {
    @isTest
    private static void allowableValues() {
        Set<OASEmissionTargetScope> expected = new Set<OASEmissionTargetScope>{
            OASEmissionTargetScope.TOTAL,
            OASEmissionTargetScope._1,
            OASEmissionTargetScope._2,
            OASEmissionTargetScope._3
        };
        Set<OASEmissionTargetScope> actual  = new Set<OASEmissionTargetScope>(OASEmissionTargetScope.values());
        System.assertEquals(expected, actual);
    }
}
