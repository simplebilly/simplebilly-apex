@isTest
private class OASChangelogEntryTest {
    @isTest
    private static void equalsSameInstance() {
        OASChangelogEntry changelogEntry1 = OASChangelogEntry.getExample();
        OASChangelogEntry changelogEntry2 = changelogEntry1;
        OASChangelogEntry changelogEntry3 = new OASChangelogEntry();
        OASChangelogEntry changelogEntry4 = changelogEntry3;

        System.assert(changelogEntry1.equals(changelogEntry2));
        System.assert(changelogEntry2.equals(changelogEntry1));
        System.assert(changelogEntry1.equals(changelogEntry1));
        System.assert(changelogEntry3.equals(changelogEntry4));
        System.assert(changelogEntry4.equals(changelogEntry3));
        System.assert(changelogEntry3.equals(changelogEntry3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASChangelogEntry changelogEntry1 = OASChangelogEntry.getExample();
        OASChangelogEntry changelogEntry2 = OASChangelogEntry.getExample();
        OASChangelogEntry changelogEntry3 = new OASChangelogEntry();
        OASChangelogEntry changelogEntry4 = new OASChangelogEntry();

        System.assert(changelogEntry1.equals(changelogEntry2));
        System.assert(changelogEntry2.equals(changelogEntry1));
        System.assert(changelogEntry3.equals(changelogEntry4));
        System.assert(changelogEntry4.equals(changelogEntry3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASChangelogEntry changelogEntry1 = OASChangelogEntry.getExample();
        OASChangelogEntry changelogEntry2 = new OASChangelogEntry();

        System.assertEquals(false, changelogEntry1.equals('foo'));
        System.assertEquals(false, changelogEntry2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASChangelogEntry changelogEntry1 = OASChangelogEntry.getExample();
        OASChangelogEntry changelogEntry2 = new OASChangelogEntry();
        OASChangelogEntry changelogEntry3;

        System.assertEquals(false, changelogEntry1.equals(changelogEntry3));
        System.assertEquals(false, changelogEntry2.equals(changelogEntry3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASChangelogEntry changelogEntry1 = OASChangelogEntry.getExample();
        OASChangelogEntry changelogEntry2 = new OASChangelogEntry();

        System.assertEquals(changelogEntry1.hashCode(), changelogEntry1.hashCode());
        System.assertEquals(changelogEntry2.hashCode(), changelogEntry2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASChangelogEntry changelogEntry1 = OASChangelogEntry.getExample();
        OASChangelogEntry changelogEntry2 = OASChangelogEntry.getExample();
        OASChangelogEntry changelogEntry3 = new OASChangelogEntry();
        OASChangelogEntry changelogEntry4 = new OASChangelogEntry();

        System.assert(changelogEntry1.equals(changelogEntry2));
        System.assert(changelogEntry3.equals(changelogEntry4));
        System.assertEquals(changelogEntry1.hashCode(), changelogEntry2.hashCode());
        System.assertEquals(changelogEntry3.hashCode(), changelogEntry4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASChangelogEntry changelogEntry = new OASChangelogEntry();
        Map<String, String> x-property-mappings = changelogEntry.getx-property-mappings();
        System.assertEquals('r_date', x-property-mappings.get('date'));
    }
}
