@isTest
private class OASCreateEmissionEntryTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreateEmissionEntry createEmissionEntry1 = OASCreateEmissionEntry.getExample();
        OASCreateEmissionEntry createEmissionEntry2 = createEmissionEntry1;
        OASCreateEmissionEntry createEmissionEntry3 = new OASCreateEmissionEntry();
        OASCreateEmissionEntry createEmissionEntry4 = createEmissionEntry3;

        System.assert(createEmissionEntry1.equals(createEmissionEntry2));
        System.assert(createEmissionEntry2.equals(createEmissionEntry1));
        System.assert(createEmissionEntry1.equals(createEmissionEntry1));
        System.assert(createEmissionEntry3.equals(createEmissionEntry4));
        System.assert(createEmissionEntry4.equals(createEmissionEntry3));
        System.assert(createEmissionEntry3.equals(createEmissionEntry3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateEmissionEntry createEmissionEntry1 = OASCreateEmissionEntry.getExample();
        OASCreateEmissionEntry createEmissionEntry2 = OASCreateEmissionEntry.getExample();
        OASCreateEmissionEntry createEmissionEntry3 = new OASCreateEmissionEntry();
        OASCreateEmissionEntry createEmissionEntry4 = new OASCreateEmissionEntry();

        System.assert(createEmissionEntry1.equals(createEmissionEntry2));
        System.assert(createEmissionEntry2.equals(createEmissionEntry1));
        System.assert(createEmissionEntry3.equals(createEmissionEntry4));
        System.assert(createEmissionEntry4.equals(createEmissionEntry3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateEmissionEntry createEmissionEntry1 = OASCreateEmissionEntry.getExample();
        OASCreateEmissionEntry createEmissionEntry2 = new OASCreateEmissionEntry();

        System.assertEquals(false, createEmissionEntry1.equals('foo'));
        System.assertEquals(false, createEmissionEntry2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateEmissionEntry createEmissionEntry1 = OASCreateEmissionEntry.getExample();
        OASCreateEmissionEntry createEmissionEntry2 = new OASCreateEmissionEntry();
        OASCreateEmissionEntry createEmissionEntry3;

        System.assertEquals(false, createEmissionEntry1.equals(createEmissionEntry3));
        System.assertEquals(false, createEmissionEntry2.equals(createEmissionEntry3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateEmissionEntry createEmissionEntry1 = OASCreateEmissionEntry.getExample();
        OASCreateEmissionEntry createEmissionEntry2 = new OASCreateEmissionEntry();

        System.assertEquals(createEmissionEntry1.hashCode(), createEmissionEntry1.hashCode());
        System.assertEquals(createEmissionEntry2.hashCode(), createEmissionEntry2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateEmissionEntry createEmissionEntry1 = OASCreateEmissionEntry.getExample();
        OASCreateEmissionEntry createEmissionEntry2 = OASCreateEmissionEntry.getExample();
        OASCreateEmissionEntry createEmissionEntry3 = new OASCreateEmissionEntry();
        OASCreateEmissionEntry createEmissionEntry4 = new OASCreateEmissionEntry();

        System.assert(createEmissionEntry1.equals(createEmissionEntry2));
        System.assert(createEmissionEntry3.equals(createEmissionEntry4));
        System.assertEquals(createEmissionEntry1.hashCode(), createEmissionEntry2.hashCode());
        System.assertEquals(createEmissionEntry3.hashCode(), createEmissionEntry4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateEmissionEntry createEmissionEntry = new OASCreateEmissionEntry();
        Map<String, String> x-property-mappings = createEmissionEntry.getx-property-mappings();
        System.assertEquals('activityValue', x-property-mappings.get('activity_value'));
        System.assertEquals('categoryId', x-property-mappings.get('category_id'));
    }
}
