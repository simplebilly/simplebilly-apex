@isTest
private class OASEuerKatSummeTest {
    @isTest
    private static void equalsSameInstance() {
        OASEuerKatSumme euerKatSumme1 = OASEuerKatSumme.getExample();
        OASEuerKatSumme euerKatSumme2 = euerKatSumme1;
        OASEuerKatSumme euerKatSumme3 = new OASEuerKatSumme();
        OASEuerKatSumme euerKatSumme4 = euerKatSumme3;

        System.assert(euerKatSumme1.equals(euerKatSumme2));
        System.assert(euerKatSumme2.equals(euerKatSumme1));
        System.assert(euerKatSumme1.equals(euerKatSumme1));
        System.assert(euerKatSumme3.equals(euerKatSumme4));
        System.assert(euerKatSumme4.equals(euerKatSumme3));
        System.assert(euerKatSumme3.equals(euerKatSumme3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEuerKatSumme euerKatSumme1 = OASEuerKatSumme.getExample();
        OASEuerKatSumme euerKatSumme2 = OASEuerKatSumme.getExample();
        OASEuerKatSumme euerKatSumme3 = new OASEuerKatSumme();
        OASEuerKatSumme euerKatSumme4 = new OASEuerKatSumme();

        System.assert(euerKatSumme1.equals(euerKatSumme2));
        System.assert(euerKatSumme2.equals(euerKatSumme1));
        System.assert(euerKatSumme3.equals(euerKatSumme4));
        System.assert(euerKatSumme4.equals(euerKatSumme3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEuerKatSumme euerKatSumme1 = OASEuerKatSumme.getExample();
        OASEuerKatSumme euerKatSumme2 = new OASEuerKatSumme();

        System.assertEquals(false, euerKatSumme1.equals('foo'));
        System.assertEquals(false, euerKatSumme2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEuerKatSumme euerKatSumme1 = OASEuerKatSumme.getExample();
        OASEuerKatSumme euerKatSumme2 = new OASEuerKatSumme();
        OASEuerKatSumme euerKatSumme3;

        System.assertEquals(false, euerKatSumme1.equals(euerKatSumme3));
        System.assertEquals(false, euerKatSumme2.equals(euerKatSumme3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEuerKatSumme euerKatSumme1 = OASEuerKatSumme.getExample();
        OASEuerKatSumme euerKatSumme2 = new OASEuerKatSumme();

        System.assertEquals(euerKatSumme1.hashCode(), euerKatSumme1.hashCode());
        System.assertEquals(euerKatSumme2.hashCode(), euerKatSumme2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEuerKatSumme euerKatSumme1 = OASEuerKatSumme.getExample();
        OASEuerKatSumme euerKatSumme2 = OASEuerKatSumme.getExample();
        OASEuerKatSumme euerKatSumme3 = new OASEuerKatSumme();
        OASEuerKatSumme euerKatSumme4 = new OASEuerKatSumme();

        System.assert(euerKatSumme1.equals(euerKatSumme2));
        System.assert(euerKatSumme3.equals(euerKatSumme4));
        System.assertEquals(euerKatSumme1.hashCode(), euerKatSumme2.hashCode());
        System.assertEquals(euerKatSumme3.hashCode(), euerKatSumme4.hashCode());
    }
}
