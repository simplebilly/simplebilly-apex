@isTest
private class OASRecurringTemplateTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASRecurringTemplateType> expected = new Set<OASRecurringTemplateType>{
            OASRecurringTemplateType.INVOICE,
            OASRecurringTemplateType.REPORT
        };
        Set<OASRecurringTemplateType> actual  = new Set<OASRecurringTemplateType>(OASRecurringTemplateType.values());
        System.assertEquals(expected, actual);
    }
}
