@isTest
private class OASEuerZeileTest {
    @isTest
    private static void equalsSameInstance() {
        OASEuerZeile euerZeile1 = OASEuerZeile.getExample();
        OASEuerZeile euerZeile2 = euerZeile1;
        OASEuerZeile euerZeile3 = new OASEuerZeile();
        OASEuerZeile euerZeile4 = euerZeile3;

        System.assert(euerZeile1.equals(euerZeile2));
        System.assert(euerZeile2.equals(euerZeile1));
        System.assert(euerZeile1.equals(euerZeile1));
        System.assert(euerZeile3.equals(euerZeile4));
        System.assert(euerZeile4.equals(euerZeile3));
        System.assert(euerZeile3.equals(euerZeile3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEuerZeile euerZeile1 = OASEuerZeile.getExample();
        OASEuerZeile euerZeile2 = OASEuerZeile.getExample();
        OASEuerZeile euerZeile3 = new OASEuerZeile();
        OASEuerZeile euerZeile4 = new OASEuerZeile();

        System.assert(euerZeile1.equals(euerZeile2));
        System.assert(euerZeile2.equals(euerZeile1));
        System.assert(euerZeile3.equals(euerZeile4));
        System.assert(euerZeile4.equals(euerZeile3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEuerZeile euerZeile1 = OASEuerZeile.getExample();
        OASEuerZeile euerZeile2 = new OASEuerZeile();

        System.assertEquals(false, euerZeile1.equals('foo'));
        System.assertEquals(false, euerZeile2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEuerZeile euerZeile1 = OASEuerZeile.getExample();
        OASEuerZeile euerZeile2 = new OASEuerZeile();
        OASEuerZeile euerZeile3;

        System.assertEquals(false, euerZeile1.equals(euerZeile3));
        System.assertEquals(false, euerZeile2.equals(euerZeile3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEuerZeile euerZeile1 = OASEuerZeile.getExample();
        OASEuerZeile euerZeile2 = new OASEuerZeile();

        System.assertEquals(euerZeile1.hashCode(), euerZeile1.hashCode());
        System.assertEquals(euerZeile2.hashCode(), euerZeile2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEuerZeile euerZeile1 = OASEuerZeile.getExample();
        OASEuerZeile euerZeile2 = OASEuerZeile.getExample();
        OASEuerZeile euerZeile3 = new OASEuerZeile();
        OASEuerZeile euerZeile4 = new OASEuerZeile();

        System.assert(euerZeile1.equals(euerZeile2));
        System.assert(euerZeile3.equals(euerZeile4));
        System.assertEquals(euerZeile1.hashCode(), euerZeile2.hashCode());
        System.assertEquals(euerZeile3.hashCode(), euerZeile4.hashCode());
    }
}
