@isTest
private class OASEksErgebnisTest {
    @isTest
    private static void equalsSameInstance() {
        OASEksErgebnis eksErgebnis1 = OASEksErgebnis.getExample();
        OASEksErgebnis eksErgebnis2 = eksErgebnis1;
        OASEksErgebnis eksErgebnis3 = new OASEksErgebnis();
        OASEksErgebnis eksErgebnis4 = eksErgebnis3;

        System.assert(eksErgebnis1.equals(eksErgebnis2));
        System.assert(eksErgebnis2.equals(eksErgebnis1));
        System.assert(eksErgebnis1.equals(eksErgebnis1));
        System.assert(eksErgebnis3.equals(eksErgebnis4));
        System.assert(eksErgebnis4.equals(eksErgebnis3));
        System.assert(eksErgebnis3.equals(eksErgebnis3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEksErgebnis eksErgebnis1 = OASEksErgebnis.getExample();
        OASEksErgebnis eksErgebnis2 = OASEksErgebnis.getExample();
        OASEksErgebnis eksErgebnis3 = new OASEksErgebnis();
        OASEksErgebnis eksErgebnis4 = new OASEksErgebnis();

        System.assert(eksErgebnis1.equals(eksErgebnis2));
        System.assert(eksErgebnis2.equals(eksErgebnis1));
        System.assert(eksErgebnis3.equals(eksErgebnis4));
        System.assert(eksErgebnis4.equals(eksErgebnis3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEksErgebnis eksErgebnis1 = OASEksErgebnis.getExample();
        OASEksErgebnis eksErgebnis2 = new OASEksErgebnis();

        System.assertEquals(false, eksErgebnis1.equals('foo'));
        System.assertEquals(false, eksErgebnis2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEksErgebnis eksErgebnis1 = OASEksErgebnis.getExample();
        OASEksErgebnis eksErgebnis2 = new OASEksErgebnis();
        OASEksErgebnis eksErgebnis3;

        System.assertEquals(false, eksErgebnis1.equals(eksErgebnis3));
        System.assertEquals(false, eksErgebnis2.equals(eksErgebnis3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEksErgebnis eksErgebnis1 = OASEksErgebnis.getExample();
        OASEksErgebnis eksErgebnis2 = new OASEksErgebnis();

        System.assertEquals(eksErgebnis1.hashCode(), eksErgebnis1.hashCode());
        System.assertEquals(eksErgebnis2.hashCode(), eksErgebnis2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEksErgebnis eksErgebnis1 = OASEksErgebnis.getExample();
        OASEksErgebnis eksErgebnis2 = OASEksErgebnis.getExample();
        OASEksErgebnis eksErgebnis3 = new OASEksErgebnis();
        OASEksErgebnis eksErgebnis4 = new OASEksErgebnis();

        System.assert(eksErgebnis1.equals(eksErgebnis2));
        System.assert(eksErgebnis3.equals(eksErgebnis4));
        System.assertEquals(eksErgebnis1.hashCode(), eksErgebnis2.hashCode());
        System.assertEquals(eksErgebnis3.hashCode(), eksErgebnis4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEksErgebnis eksErgebnis = new OASEksErgebnis();
        Map<String, String> x-property-mappings = eksErgebnis.getx-property-mappings();
        System.assertEquals('prognoseNaechste6Monate', x-property-mappings.get('prognose_naechste_6_monate'));
        System.assertEquals('summeAusgaben', x-property-mappings.get('summe_ausgaben'));
        System.assertEquals('summeEinnahmen', x-property-mappings.get('summe_einnahmen'));
        System.assertEquals('zeitraumBis', x-property-mappings.get('zeitraum_bis'));
        System.assertEquals('zeitraumVon', x-property-mappings.get('zeitraum_von'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASEksErgebnis eksErgebnis = new OASEksErgebnis();
        System.assertEquals(new List<OASEksMonatsWert>(), eksErgebnis.monate);
        System.assertEquals(null, eksErgebnis.gesamtergebnis);
        System.assertEquals(null, eksErgebnis.prognoseNaechste6Monate);
        System.assertEquals(null, eksErgebnis.summeAusgaben);
        System.assertEquals(null, eksErgebnis.summeEinnahmen);
        System.assertEquals(null, eksErgebnis.zeitraumBis);
        System.assertEquals(null, eksErgebnis.zeitraumVon);
    }
}
