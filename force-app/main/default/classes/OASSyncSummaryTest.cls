@isTest
private class OASSyncSummaryTest {
    @isTest
    private static void equalsSameInstance() {
        OASSyncSummary syncSummary1 = OASSyncSummary.getExample();
        OASSyncSummary syncSummary2 = syncSummary1;
        OASSyncSummary syncSummary3 = new OASSyncSummary();
        OASSyncSummary syncSummary4 = syncSummary3;

        System.assert(syncSummary1.equals(syncSummary2));
        System.assert(syncSummary2.equals(syncSummary1));
        System.assert(syncSummary1.equals(syncSummary1));
        System.assert(syncSummary3.equals(syncSummary4));
        System.assert(syncSummary4.equals(syncSummary3));
        System.assert(syncSummary3.equals(syncSummary3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSyncSummary syncSummary1 = OASSyncSummary.getExample();
        OASSyncSummary syncSummary2 = OASSyncSummary.getExample();
        OASSyncSummary syncSummary3 = new OASSyncSummary();
        OASSyncSummary syncSummary4 = new OASSyncSummary();

        System.assert(syncSummary1.equals(syncSummary2));
        System.assert(syncSummary2.equals(syncSummary1));
        System.assert(syncSummary3.equals(syncSummary4));
        System.assert(syncSummary4.equals(syncSummary3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSyncSummary syncSummary1 = OASSyncSummary.getExample();
        OASSyncSummary syncSummary2 = new OASSyncSummary();

        System.assertEquals(false, syncSummary1.equals('foo'));
        System.assertEquals(false, syncSummary2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSyncSummary syncSummary1 = OASSyncSummary.getExample();
        OASSyncSummary syncSummary2 = new OASSyncSummary();
        OASSyncSummary syncSummary3;

        System.assertEquals(false, syncSummary1.equals(syncSummary3));
        System.assertEquals(false, syncSummary2.equals(syncSummary3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSyncSummary syncSummary1 = OASSyncSummary.getExample();
        OASSyncSummary syncSummary2 = new OASSyncSummary();

        System.assertEquals(syncSummary1.hashCode(), syncSummary1.hashCode());
        System.assertEquals(syncSummary2.hashCode(), syncSummary2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSyncSummary syncSummary1 = OASSyncSummary.getExample();
        OASSyncSummary syncSummary2 = OASSyncSummary.getExample();
        OASSyncSummary syncSummary3 = new OASSyncSummary();
        OASSyncSummary syncSummary4 = new OASSyncSummary();

        System.assert(syncSummary1.equals(syncSummary2));
        System.assert(syncSummary3.equals(syncSummary4));
        System.assertEquals(syncSummary1.hashCode(), syncSummary2.hashCode());
        System.assertEquals(syncSummary3.hashCode(), syncSummary4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSyncSummary syncSummary = new OASSyncSummary();
        Map<String, String> x-property-mappings = syncSummary.getx-property-mappings();
        System.assertEquals('errorMessage', x-property-mappings.get('error_message'));
        System.assertEquals('itemsFailed', x-property-mappings.get('items_failed'));
        System.assertEquals('itemsSynced', x-property-mappings.get('items_synced'));
    }
}
