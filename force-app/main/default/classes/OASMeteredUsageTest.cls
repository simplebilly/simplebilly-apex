@isTest
private class OASMeteredUsageTest {
    @isTest
    private static void equalsSameInstance() {
        OASMeteredUsage meteredUsage1 = OASMeteredUsage.getExample();
        OASMeteredUsage meteredUsage2 = meteredUsage1;
        OASMeteredUsage meteredUsage3 = new OASMeteredUsage();
        OASMeteredUsage meteredUsage4 = meteredUsage3;

        System.assert(meteredUsage1.equals(meteredUsage2));
        System.assert(meteredUsage2.equals(meteredUsage1));
        System.assert(meteredUsage1.equals(meteredUsage1));
        System.assert(meteredUsage3.equals(meteredUsage4));
        System.assert(meteredUsage4.equals(meteredUsage3));
        System.assert(meteredUsage3.equals(meteredUsage3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMeteredUsage meteredUsage1 = OASMeteredUsage.getExample();
        OASMeteredUsage meteredUsage2 = OASMeteredUsage.getExample();
        OASMeteredUsage meteredUsage3 = new OASMeteredUsage();
        OASMeteredUsage meteredUsage4 = new OASMeteredUsage();

        System.assert(meteredUsage1.equals(meteredUsage2));
        System.assert(meteredUsage2.equals(meteredUsage1));
        System.assert(meteredUsage3.equals(meteredUsage4));
        System.assert(meteredUsage4.equals(meteredUsage3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMeteredUsage meteredUsage1 = OASMeteredUsage.getExample();
        OASMeteredUsage meteredUsage2 = new OASMeteredUsage();

        System.assertEquals(false, meteredUsage1.equals('foo'));
        System.assertEquals(false, meteredUsage2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMeteredUsage meteredUsage1 = OASMeteredUsage.getExample();
        OASMeteredUsage meteredUsage2 = new OASMeteredUsage();
        OASMeteredUsage meteredUsage3;

        System.assertEquals(false, meteredUsage1.equals(meteredUsage3));
        System.assertEquals(false, meteredUsage2.equals(meteredUsage3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMeteredUsage meteredUsage1 = OASMeteredUsage.getExample();
        OASMeteredUsage meteredUsage2 = new OASMeteredUsage();

        System.assertEquals(meteredUsage1.hashCode(), meteredUsage1.hashCode());
        System.assertEquals(meteredUsage2.hashCode(), meteredUsage2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMeteredUsage meteredUsage1 = OASMeteredUsage.getExample();
        OASMeteredUsage meteredUsage2 = OASMeteredUsage.getExample();
        OASMeteredUsage meteredUsage3 = new OASMeteredUsage();
        OASMeteredUsage meteredUsage4 = new OASMeteredUsage();

        System.assert(meteredUsage1.equals(meteredUsage2));
        System.assert(meteredUsage3.equals(meteredUsage4));
        System.assertEquals(meteredUsage1.hashCode(), meteredUsage2.hashCode());
        System.assertEquals(meteredUsage3.hashCode(), meteredUsage4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASMeteredUsage meteredUsage = new OASMeteredUsage();
        Map<String, String> x-property-mappings = meteredUsage.getx-property-mappings();
        System.assertEquals('r_limit', x-property-mappings.get('limit'));
    }
}
