@isTest
private class OASJobPostingStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASJobPostingStatus> expected = new Set<OASJobPostingStatus>{
            OASJobPostingStatus.DRAFT,
            OASJobPostingStatus.PUBLISHED,
            OASJobPostingStatus.CLOSED
        };
        Set<OASJobPostingStatus> actual  = new Set<OASJobPostingStatus>(OASJobPostingStatus.values());
        System.assertEquals(expected, actual);
    }
}
