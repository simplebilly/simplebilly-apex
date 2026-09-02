@isTest
private class OASEuerDetailErgebnisTest {
    @isTest
    private static void equalsSameInstance() {
        OASEuerDetailErgebnis euerDetailErgebnis1 = OASEuerDetailErgebnis.getExample();
        OASEuerDetailErgebnis euerDetailErgebnis2 = euerDetailErgebnis1;
        OASEuerDetailErgebnis euerDetailErgebnis3 = new OASEuerDetailErgebnis();
        OASEuerDetailErgebnis euerDetailErgebnis4 = euerDetailErgebnis3;

        System.assert(euerDetailErgebnis1.equals(euerDetailErgebnis2));
        System.assert(euerDetailErgebnis2.equals(euerDetailErgebnis1));
        System.assert(euerDetailErgebnis1.equals(euerDetailErgebnis1));
        System.assert(euerDetailErgebnis3.equals(euerDetailErgebnis4));
        System.assert(euerDetailErgebnis4.equals(euerDetailErgebnis3));
        System.assert(euerDetailErgebnis3.equals(euerDetailErgebnis3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEuerDetailErgebnis euerDetailErgebnis1 = OASEuerDetailErgebnis.getExample();
        OASEuerDetailErgebnis euerDetailErgebnis2 = OASEuerDetailErgebnis.getExample();
        OASEuerDetailErgebnis euerDetailErgebnis3 = new OASEuerDetailErgebnis();
        OASEuerDetailErgebnis euerDetailErgebnis4 = new OASEuerDetailErgebnis();

        System.assert(euerDetailErgebnis1.equals(euerDetailErgebnis2));
        System.assert(euerDetailErgebnis2.equals(euerDetailErgebnis1));
        System.assert(euerDetailErgebnis3.equals(euerDetailErgebnis4));
        System.assert(euerDetailErgebnis4.equals(euerDetailErgebnis3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEuerDetailErgebnis euerDetailErgebnis1 = OASEuerDetailErgebnis.getExample();
        OASEuerDetailErgebnis euerDetailErgebnis2 = new OASEuerDetailErgebnis();

        System.assertEquals(false, euerDetailErgebnis1.equals('foo'));
        System.assertEquals(false, euerDetailErgebnis2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEuerDetailErgebnis euerDetailErgebnis1 = OASEuerDetailErgebnis.getExample();
        OASEuerDetailErgebnis euerDetailErgebnis2 = new OASEuerDetailErgebnis();
        OASEuerDetailErgebnis euerDetailErgebnis3;

        System.assertEquals(false, euerDetailErgebnis1.equals(euerDetailErgebnis3));
        System.assertEquals(false, euerDetailErgebnis2.equals(euerDetailErgebnis3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEuerDetailErgebnis euerDetailErgebnis1 = OASEuerDetailErgebnis.getExample();
        OASEuerDetailErgebnis euerDetailErgebnis2 = new OASEuerDetailErgebnis();

        System.assertEquals(euerDetailErgebnis1.hashCode(), euerDetailErgebnis1.hashCode());
        System.assertEquals(euerDetailErgebnis2.hashCode(), euerDetailErgebnis2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEuerDetailErgebnis euerDetailErgebnis1 = OASEuerDetailErgebnis.getExample();
        OASEuerDetailErgebnis euerDetailErgebnis2 = OASEuerDetailErgebnis.getExample();
        OASEuerDetailErgebnis euerDetailErgebnis3 = new OASEuerDetailErgebnis();
        OASEuerDetailErgebnis euerDetailErgebnis4 = new OASEuerDetailErgebnis();

        System.assert(euerDetailErgebnis1.equals(euerDetailErgebnis2));
        System.assert(euerDetailErgebnis3.equals(euerDetailErgebnis4));
        System.assertEquals(euerDetailErgebnis1.hashCode(), euerDetailErgebnis2.hashCode());
        System.assertEquals(euerDetailErgebnis3.hashCode(), euerDetailErgebnis4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASEuerDetailErgebnis euerDetailErgebnis = new OASEuerDetailErgebnis();
        System.assertEquals(new List<OASEuerZeileDetail>(), euerDetailErgebnis.zeilen);
        System.assertEquals(null, euerDetailErgebnis.jahr);
    }
}
