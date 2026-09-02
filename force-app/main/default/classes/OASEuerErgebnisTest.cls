@isTest
private class OASEuerErgebnisTest {
    @isTest
    private static void equalsSameInstance() {
        OASEuerErgebnis euerErgebnis1 = OASEuerErgebnis.getExample();
        OASEuerErgebnis euerErgebnis2 = euerErgebnis1;
        OASEuerErgebnis euerErgebnis3 = new OASEuerErgebnis();
        OASEuerErgebnis euerErgebnis4 = euerErgebnis3;

        System.assert(euerErgebnis1.equals(euerErgebnis2));
        System.assert(euerErgebnis2.equals(euerErgebnis1));
        System.assert(euerErgebnis1.equals(euerErgebnis1));
        System.assert(euerErgebnis3.equals(euerErgebnis4));
        System.assert(euerErgebnis4.equals(euerErgebnis3));
        System.assert(euerErgebnis3.equals(euerErgebnis3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEuerErgebnis euerErgebnis1 = OASEuerErgebnis.getExample();
        OASEuerErgebnis euerErgebnis2 = OASEuerErgebnis.getExample();
        OASEuerErgebnis euerErgebnis3 = new OASEuerErgebnis();
        OASEuerErgebnis euerErgebnis4 = new OASEuerErgebnis();

        System.assert(euerErgebnis1.equals(euerErgebnis2));
        System.assert(euerErgebnis2.equals(euerErgebnis1));
        System.assert(euerErgebnis3.equals(euerErgebnis4));
        System.assert(euerErgebnis4.equals(euerErgebnis3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEuerErgebnis euerErgebnis1 = OASEuerErgebnis.getExample();
        OASEuerErgebnis euerErgebnis2 = new OASEuerErgebnis();

        System.assertEquals(false, euerErgebnis1.equals('foo'));
        System.assertEquals(false, euerErgebnis2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEuerErgebnis euerErgebnis1 = OASEuerErgebnis.getExample();
        OASEuerErgebnis euerErgebnis2 = new OASEuerErgebnis();
        OASEuerErgebnis euerErgebnis3;

        System.assertEquals(false, euerErgebnis1.equals(euerErgebnis3));
        System.assertEquals(false, euerErgebnis2.equals(euerErgebnis3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEuerErgebnis euerErgebnis1 = OASEuerErgebnis.getExample();
        OASEuerErgebnis euerErgebnis2 = new OASEuerErgebnis();

        System.assertEquals(euerErgebnis1.hashCode(), euerErgebnis1.hashCode());
        System.assertEquals(euerErgebnis2.hashCode(), euerErgebnis2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEuerErgebnis euerErgebnis1 = OASEuerErgebnis.getExample();
        OASEuerErgebnis euerErgebnis2 = OASEuerErgebnis.getExample();
        OASEuerErgebnis euerErgebnis3 = new OASEuerErgebnis();
        OASEuerErgebnis euerErgebnis4 = new OASEuerErgebnis();

        System.assert(euerErgebnis1.equals(euerErgebnis2));
        System.assert(euerErgebnis3.equals(euerErgebnis4));
        System.assertEquals(euerErgebnis1.hashCode(), euerErgebnis2.hashCode());
        System.assertEquals(euerErgebnis3.hashCode(), euerErgebnis4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEuerErgebnis euerErgebnis = new OASEuerErgebnis();
        Map<String, String> x-property-mappings = euerErgebnis.getx-property-mappings();
        System.assertEquals('anlageZugaenge', x-property-mappings.get('anlage_zugaenge'));
        System.assertEquals('gewinnVerlust', x-property-mappings.get('gewinn_verlust'));
        System.assertEquals('summeAusgaben', x-property-mappings.get('summe_ausgaben'));
        System.assertEquals('summeEinnahmen', x-property-mappings.get('summe_einnahmen'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASEuerErgebnis euerErgebnis = new OASEuerErgebnis();
        System.assertEquals(new List<OASEuerZeile>(), euerErgebnis.zeilen);
        System.assertEquals(null, euerErgebnis.anlageZugaenge);
        System.assertEquals(null, euerErgebnis.gewinnVerlust);
        System.assertEquals(null, euerErgebnis.jahr);
        System.assertEquals(null, euerErgebnis.summeAusgaben);
        System.assertEquals(null, euerErgebnis.summeEinnahmen);
    }
}
