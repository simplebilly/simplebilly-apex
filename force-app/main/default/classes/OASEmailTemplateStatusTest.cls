@isTest
private class OASEmailTemplateStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASEmailTemplateStatus> expected = new Set<OASEmailTemplateStatus>{
            OASEmailTemplateStatus.ACTIVE,
            OASEmailTemplateStatus.INACTIVE
        };
        Set<OASEmailTemplateStatus> actual  = new Set<OASEmailTemplateStatus>(OASEmailTemplateStatus.values());
        System.assertEquals(expected, actual);
    }
}
