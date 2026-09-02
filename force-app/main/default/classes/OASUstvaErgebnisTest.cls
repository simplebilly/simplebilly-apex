@isTest
private class OASUstvaErgebnisTest {
    @isTest
    private static void equalsSameInstance() {
        OASUstvaErgebnis ustvaErgebnis1 = OASUstvaErgebnis.getExample();
        OASUstvaErgebnis ustvaErgebnis2 = ustvaErgebnis1;
        OASUstvaErgebnis ustvaErgebnis3 = new OASUstvaErgebnis();
        OASUstvaErgebnis ustvaErgebnis4 = ustvaErgebnis3;

        System.assert(ustvaErgebnis1.equals(ustvaErgebnis2));
        System.assert(ustvaErgebnis2.equals(ustvaErgebnis1));
        System.assert(ustvaErgebnis1.equals(ustvaErgebnis1));
        System.assert(ustvaErgebnis3.equals(ustvaErgebnis4));
        System.assert(ustvaErgebnis4.equals(ustvaErgebnis3));
        System.assert(ustvaErgebnis3.equals(ustvaErgebnis3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUstvaErgebnis ustvaErgebnis1 = OASUstvaErgebnis.getExample();
        OASUstvaErgebnis ustvaErgebnis2 = OASUstvaErgebnis.getExample();
        OASUstvaErgebnis ustvaErgebnis3 = new OASUstvaErgebnis();
        OASUstvaErgebnis ustvaErgebnis4 = new OASUstvaErgebnis();

        System.assert(ustvaErgebnis1.equals(ustvaErgebnis2));
        System.assert(ustvaErgebnis2.equals(ustvaErgebnis1));
        System.assert(ustvaErgebnis3.equals(ustvaErgebnis4));
        System.assert(ustvaErgebnis4.equals(ustvaErgebnis3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUstvaErgebnis ustvaErgebnis1 = OASUstvaErgebnis.getExample();
        OASUstvaErgebnis ustvaErgebnis2 = new OASUstvaErgebnis();

        System.assertEquals(false, ustvaErgebnis1.equals('foo'));
        System.assertEquals(false, ustvaErgebnis2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUstvaErgebnis ustvaErgebnis1 = OASUstvaErgebnis.getExample();
        OASUstvaErgebnis ustvaErgebnis2 = new OASUstvaErgebnis();
        OASUstvaErgebnis ustvaErgebnis3;

        System.assertEquals(false, ustvaErgebnis1.equals(ustvaErgebnis3));
        System.assertEquals(false, ustvaErgebnis2.equals(ustvaErgebnis3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUstvaErgebnis ustvaErgebnis1 = OASUstvaErgebnis.getExample();
        OASUstvaErgebnis ustvaErgebnis2 = new OASUstvaErgebnis();

        System.assertEquals(ustvaErgebnis1.hashCode(), ustvaErgebnis1.hashCode());
        System.assertEquals(ustvaErgebnis2.hashCode(), ustvaErgebnis2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUstvaErgebnis ustvaErgebnis1 = OASUstvaErgebnis.getExample();
        OASUstvaErgebnis ustvaErgebnis2 = OASUstvaErgebnis.getExample();
        OASUstvaErgebnis ustvaErgebnis3 = new OASUstvaErgebnis();
        OASUstvaErgebnis ustvaErgebnis4 = new OASUstvaErgebnis();

        System.assert(ustvaErgebnis1.equals(ustvaErgebnis2));
        System.assert(ustvaErgebnis3.equals(ustvaErgebnis4));
        System.assertEquals(ustvaErgebnis1.hashCode(), ustvaErgebnis2.hashCode());
        System.assertEquals(ustvaErgebnis3.hashCode(), ustvaErgebnis4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUstvaErgebnis ustvaErgebnis = new OASUstvaErgebnis();
        Map<String, String> x-property-mappings = ustvaErgebnis.getx-property-mappings();
        System.assertEquals('istKleinunternehmer', x-property-mappings.get('ist_kleinunternehmer'));
        System.assertEquals('kz41', x-property-mappings.get('kz_41'));
        System.assertEquals('kz43', x-property-mappings.get('kz_43'));
        System.assertEquals('kz46', x-property-mappings.get('kz_46'));
        System.assertEquals('kz47', x-property-mappings.get('kz_47'));
        System.assertEquals('kz61', x-property-mappings.get('kz_61'));
        System.assertEquals('kz66', x-property-mappings.get('kz_66'));
        System.assertEquals('kz67', x-property-mappings.get('kz_67'));
        System.assertEquals('kz81', x-property-mappings.get('kz_81'));
        System.assertEquals('kz83', x-property-mappings.get('kz_83'));
        System.assertEquals('kz84', x-property-mappings.get('kz_84'));
        System.assertEquals('kz85', x-property-mappings.get('kz_85'));
        System.assertEquals('kz86', x-property-mappings.get('kz_86'));
        System.assertEquals('kz88', x-property-mappings.get('kz_88'));
        System.assertEquals('kz89', x-property-mappings.get('kz_89'));
        System.assertEquals('kz93', x-property-mappings.get('kz_93'));
        System.assertEquals('zeitraumTyp', x-property-mappings.get('zeitraum_typ'));
    }
}
