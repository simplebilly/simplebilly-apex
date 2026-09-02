@isTest
private class OASSyncLogTest {
    @isTest
    private static void equalsSameInstance() {
        OASSyncLog syncLog1 = OASSyncLog.getExample();
        OASSyncLog syncLog2 = syncLog1;
        OASSyncLog syncLog3 = new OASSyncLog();
        OASSyncLog syncLog4 = syncLog3;

        System.assert(syncLog1.equals(syncLog2));
        System.assert(syncLog2.equals(syncLog1));
        System.assert(syncLog1.equals(syncLog1));
        System.assert(syncLog3.equals(syncLog4));
        System.assert(syncLog4.equals(syncLog3));
        System.assert(syncLog3.equals(syncLog3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSyncLog syncLog1 = OASSyncLog.getExample();
        OASSyncLog syncLog2 = OASSyncLog.getExample();
        OASSyncLog syncLog3 = new OASSyncLog();
        OASSyncLog syncLog4 = new OASSyncLog();

        System.assert(syncLog1.equals(syncLog2));
        System.assert(syncLog2.equals(syncLog1));
        System.assert(syncLog3.equals(syncLog4));
        System.assert(syncLog4.equals(syncLog3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSyncLog syncLog1 = OASSyncLog.getExample();
        OASSyncLog syncLog2 = new OASSyncLog();

        System.assertEquals(false, syncLog1.equals('foo'));
        System.assertEquals(false, syncLog2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSyncLog syncLog1 = OASSyncLog.getExample();
        OASSyncLog syncLog2 = new OASSyncLog();
        OASSyncLog syncLog3;

        System.assertEquals(false, syncLog1.equals(syncLog3));
        System.assertEquals(false, syncLog2.equals(syncLog3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSyncLog syncLog1 = OASSyncLog.getExample();
        OASSyncLog syncLog2 = new OASSyncLog();

        System.assertEquals(syncLog1.hashCode(), syncLog1.hashCode());
        System.assertEquals(syncLog2.hashCode(), syncLog2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSyncLog syncLog1 = OASSyncLog.getExample();
        OASSyncLog syncLog2 = OASSyncLog.getExample();
        OASSyncLog syncLog3 = new OASSyncLog();
        OASSyncLog syncLog4 = new OASSyncLog();

        System.assert(syncLog1.equals(syncLog2));
        System.assert(syncLog3.equals(syncLog4));
        System.assertEquals(syncLog1.hashCode(), syncLog2.hashCode());
        System.assertEquals(syncLog3.hashCode(), syncLog4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSyncLog syncLog = new OASSyncLog();
        Map<String, String> x-property-mappings = syncLog.getx-property-mappings();
        System.assertEquals('completedAt', x-property-mappings.get('completed_at'));
        System.assertEquals('connectionId', x-property-mappings.get('connection_id'));
        System.assertEquals('errorMessage', x-property-mappings.get('error_message'));
        System.assertEquals('itemsFailed', x-property-mappings.get('items_failed'));
        System.assertEquals('itemsSynced', x-property-mappings.get('items_synced'));
        System.assertEquals('logId', x-property-mappings.get('log_id'));
        System.assertEquals('startedAt', x-property-mappings.get('started_at'));
        System.assertEquals('syncType', x-property-mappings.get('sync_type'));
    }
}
