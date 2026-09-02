@isTest
private class OASFristenErgebnisTest {
    @isTest
    private static void equalsSameInstance() {
        OASFristenErgebnis fristenErgebnis1 = OASFristenErgebnis.getExample();
        OASFristenErgebnis fristenErgebnis2 = fristenErgebnis1;
        OASFristenErgebnis fristenErgebnis3 = new OASFristenErgebnis();
        OASFristenErgebnis fristenErgebnis4 = fristenErgebnis3;

        System.assert(fristenErgebnis1.equals(fristenErgebnis2));
        System.assert(fristenErgebnis2.equals(fristenErgebnis1));
        System.assert(fristenErgebnis1.equals(fristenErgebnis1));
        System.assert(fristenErgebnis3.equals(fristenErgebnis4));
        System.assert(fristenErgebnis4.equals(fristenErgebnis3));
        System.assert(fristenErgebnis3.equals(fristenErgebnis3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFristenErgebnis fristenErgebnis1 = OASFristenErgebnis.getExample();
        OASFristenErgebnis fristenErgebnis2 = OASFristenErgebnis.getExample();
        OASFristenErgebnis fristenErgebnis3 = new OASFristenErgebnis();
        OASFristenErgebnis fristenErgebnis4 = new OASFristenErgebnis();

        System.assert(fristenErgebnis1.equals(fristenErgebnis2));
        System.assert(fristenErgebnis2.equals(fristenErgebnis1));
        System.assert(fristenErgebnis3.equals(fristenErgebnis4));
        System.assert(fristenErgebnis4.equals(fristenErgebnis3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFristenErgebnis fristenErgebnis1 = OASFristenErgebnis.getExample();
        OASFristenErgebnis fristenErgebnis2 = new OASFristenErgebnis();

        System.assertEquals(false, fristenErgebnis1.equals('foo'));
        System.assertEquals(false, fristenErgebnis2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFristenErgebnis fristenErgebnis1 = OASFristenErgebnis.getExample();
        OASFristenErgebnis fristenErgebnis2 = new OASFristenErgebnis();
        OASFristenErgebnis fristenErgebnis3;

        System.assertEquals(false, fristenErgebnis1.equals(fristenErgebnis3));
        System.assertEquals(false, fristenErgebnis2.equals(fristenErgebnis3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFristenErgebnis fristenErgebnis1 = OASFristenErgebnis.getExample();
        OASFristenErgebnis fristenErgebnis2 = new OASFristenErgebnis();

        System.assertEquals(fristenErgebnis1.hashCode(), fristenErgebnis1.hashCode());
        System.assertEquals(fristenErgebnis2.hashCode(), fristenErgebnis2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFristenErgebnis fristenErgebnis1 = OASFristenErgebnis.getExample();
        OASFristenErgebnis fristenErgebnis2 = OASFristenErgebnis.getExample();
        OASFristenErgebnis fristenErgebnis3 = new OASFristenErgebnis();
        OASFristenErgebnis fristenErgebnis4 = new OASFristenErgebnis();

        System.assert(fristenErgebnis1.equals(fristenErgebnis2));
        System.assert(fristenErgebnis3.equals(fristenErgebnis4));
        System.assertEquals(fristenErgebnis1.hashCode(), fristenErgebnis2.hashCode());
        System.assertEquals(fristenErgebnis3.hashCode(), fristenErgebnis4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASFristenErgebnis fristenErgebnis = new OASFristenErgebnis();
        System.assertEquals(new List<OASFristEintrag>(), fristenErgebnis.fristen);
        System.assertEquals(null, fristenErgebnis.anzahl);
    }
}
