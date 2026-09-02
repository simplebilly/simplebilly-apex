@isTest
private class OASReminderLevelTest {
    @isTest
    private static void allowableValues() {
        Set<OASReminderLevel> expected = new Set<OASReminderLevel>{
            OASReminderLevel.NONE,
            OASReminderLevel.DUE,
            OASReminderLevel.LEVEL1,
            OASReminderLevel.LEVEL2,
            OASReminderLevel.LEVEL3
        };
        Set<OASReminderLevel> actual  = new Set<OASReminderLevel>(OASReminderLevel.values());
        System.assertEquals(expected, actual);
    }
}
