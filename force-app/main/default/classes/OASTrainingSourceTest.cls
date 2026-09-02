@isTest
private class OASTrainingSourceTest {
    @isTest
    private static void allowableValues() {
        Set<OASTrainingSource> expected = new Set<OASTrainingSource>{
            OASTrainingSource.BUILTIN,
            OASTrainingSource.PLUGIN
        };
        Set<OASTrainingSource> actual  = new Set<OASTrainingSource>(OASTrainingSource.values());
        System.assertEquals(expected, actual);
    }
}
