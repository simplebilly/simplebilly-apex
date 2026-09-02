@isTest
private class OASLeadStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASLeadStatus> expected = new Set<OASLeadStatus>{
            OASLeadStatus.NEW,
            OASLeadStatus.QUALIFIED
        };
        Set<OASLeadStatus> actual  = new Set<OASLeadStatus>(OASLeadStatus.values());
        System.assertEquals(expected, actual);
    }
}
