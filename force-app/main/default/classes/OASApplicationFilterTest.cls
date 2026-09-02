@isTest
private class OASApplicationFilterTest {
    @isTest
    private static void equalsSameInstance() {
        OASApplicationFilter applicationFilter1 = OASApplicationFilter.getExample();
        OASApplicationFilter applicationFilter2 = applicationFilter1;
        OASApplicationFilter applicationFilter3 = new OASApplicationFilter();
        OASApplicationFilter applicationFilter4 = applicationFilter3;

        System.assert(applicationFilter1.equals(applicationFilter2));
        System.assert(applicationFilter2.equals(applicationFilter1));
        System.assert(applicationFilter1.equals(applicationFilter1));
        System.assert(applicationFilter3.equals(applicationFilter4));
        System.assert(applicationFilter4.equals(applicationFilter3));
        System.assert(applicationFilter3.equals(applicationFilter3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASApplicationFilter applicationFilter1 = OASApplicationFilter.getExample();
        OASApplicationFilter applicationFilter2 = OASApplicationFilter.getExample();
        OASApplicationFilter applicationFilter3 = new OASApplicationFilter();
        OASApplicationFilter applicationFilter4 = new OASApplicationFilter();

        System.assert(applicationFilter1.equals(applicationFilter2));
        System.assert(applicationFilter2.equals(applicationFilter1));
        System.assert(applicationFilter3.equals(applicationFilter4));
        System.assert(applicationFilter4.equals(applicationFilter3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASApplicationFilter applicationFilter1 = OASApplicationFilter.getExample();
        OASApplicationFilter applicationFilter2 = new OASApplicationFilter();

        System.assertEquals(false, applicationFilter1.equals('foo'));
        System.assertEquals(false, applicationFilter2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASApplicationFilter applicationFilter1 = OASApplicationFilter.getExample();
        OASApplicationFilter applicationFilter2 = new OASApplicationFilter();
        OASApplicationFilter applicationFilter3;

        System.assertEquals(false, applicationFilter1.equals(applicationFilter3));
        System.assertEquals(false, applicationFilter2.equals(applicationFilter3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASApplicationFilter applicationFilter1 = OASApplicationFilter.getExample();
        OASApplicationFilter applicationFilter2 = new OASApplicationFilter();

        System.assertEquals(applicationFilter1.hashCode(), applicationFilter1.hashCode());
        System.assertEquals(applicationFilter2.hashCode(), applicationFilter2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASApplicationFilter applicationFilter1 = OASApplicationFilter.getExample();
        OASApplicationFilter applicationFilter2 = OASApplicationFilter.getExample();
        OASApplicationFilter applicationFilter3 = new OASApplicationFilter();
        OASApplicationFilter applicationFilter4 = new OASApplicationFilter();

        System.assert(applicationFilter1.equals(applicationFilter2));
        System.assert(applicationFilter3.equals(applicationFilter4));
        System.assertEquals(applicationFilter1.hashCode(), applicationFilter2.hashCode());
        System.assertEquals(applicationFilter3.hashCode(), applicationFilter4.hashCode());
    }
}
