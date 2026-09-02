@isTest
private class OASEmissionEntryTest {
    @isTest
    private static void equalsSameInstance() {
        OASEmissionEntry emissionEntry1 = OASEmissionEntry.getExample();
        OASEmissionEntry emissionEntry2 = emissionEntry1;
        OASEmissionEntry emissionEntry3 = new OASEmissionEntry();
        OASEmissionEntry emissionEntry4 = emissionEntry3;

        System.assert(emissionEntry1.equals(emissionEntry2));
        System.assert(emissionEntry2.equals(emissionEntry1));
        System.assert(emissionEntry1.equals(emissionEntry1));
        System.assert(emissionEntry3.equals(emissionEntry4));
        System.assert(emissionEntry4.equals(emissionEntry3));
        System.assert(emissionEntry3.equals(emissionEntry3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEmissionEntry emissionEntry1 = OASEmissionEntry.getExample();
        OASEmissionEntry emissionEntry2 = OASEmissionEntry.getExample();
        OASEmissionEntry emissionEntry3 = new OASEmissionEntry();
        OASEmissionEntry emissionEntry4 = new OASEmissionEntry();

        System.assert(emissionEntry1.equals(emissionEntry2));
        System.assert(emissionEntry2.equals(emissionEntry1));
        System.assert(emissionEntry3.equals(emissionEntry4));
        System.assert(emissionEntry4.equals(emissionEntry3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEmissionEntry emissionEntry1 = OASEmissionEntry.getExample();
        OASEmissionEntry emissionEntry2 = new OASEmissionEntry();

        System.assertEquals(false, emissionEntry1.equals('foo'));
        System.assertEquals(false, emissionEntry2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEmissionEntry emissionEntry1 = OASEmissionEntry.getExample();
        OASEmissionEntry emissionEntry2 = new OASEmissionEntry();
        OASEmissionEntry emissionEntry3;

        System.assertEquals(false, emissionEntry1.equals(emissionEntry3));
        System.assertEquals(false, emissionEntry2.equals(emissionEntry3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEmissionEntry emissionEntry1 = OASEmissionEntry.getExample();
        OASEmissionEntry emissionEntry2 = new OASEmissionEntry();

        System.assertEquals(emissionEntry1.hashCode(), emissionEntry1.hashCode());
        System.assertEquals(emissionEntry2.hashCode(), emissionEntry2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEmissionEntry emissionEntry1 = OASEmissionEntry.getExample();
        OASEmissionEntry emissionEntry2 = OASEmissionEntry.getExample();
        OASEmissionEntry emissionEntry3 = new OASEmissionEntry();
        OASEmissionEntry emissionEntry4 = new OASEmissionEntry();

        System.assert(emissionEntry1.equals(emissionEntry2));
        System.assert(emissionEntry3.equals(emissionEntry4));
        System.assertEquals(emissionEntry1.hashCode(), emissionEntry2.hashCode());
        System.assertEquals(emissionEntry3.hashCode(), emissionEntry4.hashCode());
    }
}
