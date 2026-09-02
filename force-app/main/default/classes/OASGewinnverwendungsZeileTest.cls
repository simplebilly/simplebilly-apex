@isTest
private class OASGewinnverwendungsZeileTest {
    @isTest
    private static void equalsSameInstance() {
        OASGewinnverwendungsZeile gewinnverwendungsZeile1 = OASGewinnverwendungsZeile.getExample();
        OASGewinnverwendungsZeile gewinnverwendungsZeile2 = gewinnverwendungsZeile1;
        OASGewinnverwendungsZeile gewinnverwendungsZeile3 = new OASGewinnverwendungsZeile();
        OASGewinnverwendungsZeile gewinnverwendungsZeile4 = gewinnverwendungsZeile3;

        System.assert(gewinnverwendungsZeile1.equals(gewinnverwendungsZeile2));
        System.assert(gewinnverwendungsZeile2.equals(gewinnverwendungsZeile1));
        System.assert(gewinnverwendungsZeile1.equals(gewinnverwendungsZeile1));
        System.assert(gewinnverwendungsZeile3.equals(gewinnverwendungsZeile4));
        System.assert(gewinnverwendungsZeile4.equals(gewinnverwendungsZeile3));
        System.assert(gewinnverwendungsZeile3.equals(gewinnverwendungsZeile3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGewinnverwendungsZeile gewinnverwendungsZeile1 = OASGewinnverwendungsZeile.getExample();
        OASGewinnverwendungsZeile gewinnverwendungsZeile2 = OASGewinnverwendungsZeile.getExample();
        OASGewinnverwendungsZeile gewinnverwendungsZeile3 = new OASGewinnverwendungsZeile();
        OASGewinnverwendungsZeile gewinnverwendungsZeile4 = new OASGewinnverwendungsZeile();

        System.assert(gewinnverwendungsZeile1.equals(gewinnverwendungsZeile2));
        System.assert(gewinnverwendungsZeile2.equals(gewinnverwendungsZeile1));
        System.assert(gewinnverwendungsZeile3.equals(gewinnverwendungsZeile4));
        System.assert(gewinnverwendungsZeile4.equals(gewinnverwendungsZeile3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGewinnverwendungsZeile gewinnverwendungsZeile1 = OASGewinnverwendungsZeile.getExample();
        OASGewinnverwendungsZeile gewinnverwendungsZeile2 = new OASGewinnverwendungsZeile();

        System.assertEquals(false, gewinnverwendungsZeile1.equals('foo'));
        System.assertEquals(false, gewinnverwendungsZeile2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGewinnverwendungsZeile gewinnverwendungsZeile1 = OASGewinnverwendungsZeile.getExample();
        OASGewinnverwendungsZeile gewinnverwendungsZeile2 = new OASGewinnverwendungsZeile();
        OASGewinnverwendungsZeile gewinnverwendungsZeile3;

        System.assertEquals(false, gewinnverwendungsZeile1.equals(gewinnverwendungsZeile3));
        System.assertEquals(false, gewinnverwendungsZeile2.equals(gewinnverwendungsZeile3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGewinnverwendungsZeile gewinnverwendungsZeile1 = OASGewinnverwendungsZeile.getExample();
        OASGewinnverwendungsZeile gewinnverwendungsZeile2 = new OASGewinnverwendungsZeile();

        System.assertEquals(gewinnverwendungsZeile1.hashCode(), gewinnverwendungsZeile1.hashCode());
        System.assertEquals(gewinnverwendungsZeile2.hashCode(), gewinnverwendungsZeile2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGewinnverwendungsZeile gewinnverwendungsZeile1 = OASGewinnverwendungsZeile.getExample();
        OASGewinnverwendungsZeile gewinnverwendungsZeile2 = OASGewinnverwendungsZeile.getExample();
        OASGewinnverwendungsZeile gewinnverwendungsZeile3 = new OASGewinnverwendungsZeile();
        OASGewinnverwendungsZeile gewinnverwendungsZeile4 = new OASGewinnverwendungsZeile();

        System.assert(gewinnverwendungsZeile1.equals(gewinnverwendungsZeile2));
        System.assert(gewinnverwendungsZeile3.equals(gewinnverwendungsZeile4));
        System.assertEquals(gewinnverwendungsZeile1.hashCode(), gewinnverwendungsZeile2.hashCode());
        System.assertEquals(gewinnverwendungsZeile3.hashCode(), gewinnverwendungsZeile4.hashCode());
    }
}
