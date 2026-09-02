@isTest
private class OASEksMonatsWertTest {
    @isTest
    private static void equalsSameInstance() {
        OASEksMonatsWert eksMonatsWert1 = OASEksMonatsWert.getExample();
        OASEksMonatsWert eksMonatsWert2 = eksMonatsWert1;
        OASEksMonatsWert eksMonatsWert3 = new OASEksMonatsWert();
        OASEksMonatsWert eksMonatsWert4 = eksMonatsWert3;

        System.assert(eksMonatsWert1.equals(eksMonatsWert2));
        System.assert(eksMonatsWert2.equals(eksMonatsWert1));
        System.assert(eksMonatsWert1.equals(eksMonatsWert1));
        System.assert(eksMonatsWert3.equals(eksMonatsWert4));
        System.assert(eksMonatsWert4.equals(eksMonatsWert3));
        System.assert(eksMonatsWert3.equals(eksMonatsWert3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEksMonatsWert eksMonatsWert1 = OASEksMonatsWert.getExample();
        OASEksMonatsWert eksMonatsWert2 = OASEksMonatsWert.getExample();
        OASEksMonatsWert eksMonatsWert3 = new OASEksMonatsWert();
        OASEksMonatsWert eksMonatsWert4 = new OASEksMonatsWert();

        System.assert(eksMonatsWert1.equals(eksMonatsWert2));
        System.assert(eksMonatsWert2.equals(eksMonatsWert1));
        System.assert(eksMonatsWert3.equals(eksMonatsWert4));
        System.assert(eksMonatsWert4.equals(eksMonatsWert3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEksMonatsWert eksMonatsWert1 = OASEksMonatsWert.getExample();
        OASEksMonatsWert eksMonatsWert2 = new OASEksMonatsWert();

        System.assertEquals(false, eksMonatsWert1.equals('foo'));
        System.assertEquals(false, eksMonatsWert2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEksMonatsWert eksMonatsWert1 = OASEksMonatsWert.getExample();
        OASEksMonatsWert eksMonatsWert2 = new OASEksMonatsWert();
        OASEksMonatsWert eksMonatsWert3;

        System.assertEquals(false, eksMonatsWert1.equals(eksMonatsWert3));
        System.assertEquals(false, eksMonatsWert2.equals(eksMonatsWert3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEksMonatsWert eksMonatsWert1 = OASEksMonatsWert.getExample();
        OASEksMonatsWert eksMonatsWert2 = new OASEksMonatsWert();

        System.assertEquals(eksMonatsWert1.hashCode(), eksMonatsWert1.hashCode());
        System.assertEquals(eksMonatsWert2.hashCode(), eksMonatsWert2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEksMonatsWert eksMonatsWert1 = OASEksMonatsWert.getExample();
        OASEksMonatsWert eksMonatsWert2 = OASEksMonatsWert.getExample();
        OASEksMonatsWert eksMonatsWert3 = new OASEksMonatsWert();
        OASEksMonatsWert eksMonatsWert4 = new OASEksMonatsWert();

        System.assert(eksMonatsWert1.equals(eksMonatsWert2));
        System.assert(eksMonatsWert3.equals(eksMonatsWert4));
        System.assertEquals(eksMonatsWert1.hashCode(), eksMonatsWert2.hashCode());
        System.assertEquals(eksMonatsWert3.hashCode(), eksMonatsWert4.hashCode());
    }
}
