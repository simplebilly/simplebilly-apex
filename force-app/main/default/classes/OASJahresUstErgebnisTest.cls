@isTest
private class OASJahresUstErgebnisTest {
    @isTest
    private static void equalsSameInstance() {
        OASJahresUstErgebnis jahresUstErgebnis1 = OASJahresUstErgebnis.getExample();
        OASJahresUstErgebnis jahresUstErgebnis2 = jahresUstErgebnis1;
        OASJahresUstErgebnis jahresUstErgebnis3 = new OASJahresUstErgebnis();
        OASJahresUstErgebnis jahresUstErgebnis4 = jahresUstErgebnis3;

        System.assert(jahresUstErgebnis1.equals(jahresUstErgebnis2));
        System.assert(jahresUstErgebnis2.equals(jahresUstErgebnis1));
        System.assert(jahresUstErgebnis1.equals(jahresUstErgebnis1));
        System.assert(jahresUstErgebnis3.equals(jahresUstErgebnis4));
        System.assert(jahresUstErgebnis4.equals(jahresUstErgebnis3));
        System.assert(jahresUstErgebnis3.equals(jahresUstErgebnis3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASJahresUstErgebnis jahresUstErgebnis1 = OASJahresUstErgebnis.getExample();
        OASJahresUstErgebnis jahresUstErgebnis2 = OASJahresUstErgebnis.getExample();
        OASJahresUstErgebnis jahresUstErgebnis3 = new OASJahresUstErgebnis();
        OASJahresUstErgebnis jahresUstErgebnis4 = new OASJahresUstErgebnis();

        System.assert(jahresUstErgebnis1.equals(jahresUstErgebnis2));
        System.assert(jahresUstErgebnis2.equals(jahresUstErgebnis1));
        System.assert(jahresUstErgebnis3.equals(jahresUstErgebnis4));
        System.assert(jahresUstErgebnis4.equals(jahresUstErgebnis3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASJahresUstErgebnis jahresUstErgebnis1 = OASJahresUstErgebnis.getExample();
        OASJahresUstErgebnis jahresUstErgebnis2 = new OASJahresUstErgebnis();

        System.assertEquals(false, jahresUstErgebnis1.equals('foo'));
        System.assertEquals(false, jahresUstErgebnis2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASJahresUstErgebnis jahresUstErgebnis1 = OASJahresUstErgebnis.getExample();
        OASJahresUstErgebnis jahresUstErgebnis2 = new OASJahresUstErgebnis();
        OASJahresUstErgebnis jahresUstErgebnis3;

        System.assertEquals(false, jahresUstErgebnis1.equals(jahresUstErgebnis3));
        System.assertEquals(false, jahresUstErgebnis2.equals(jahresUstErgebnis3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASJahresUstErgebnis jahresUstErgebnis1 = OASJahresUstErgebnis.getExample();
        OASJahresUstErgebnis jahresUstErgebnis2 = new OASJahresUstErgebnis();

        System.assertEquals(jahresUstErgebnis1.hashCode(), jahresUstErgebnis1.hashCode());
        System.assertEquals(jahresUstErgebnis2.hashCode(), jahresUstErgebnis2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASJahresUstErgebnis jahresUstErgebnis1 = OASJahresUstErgebnis.getExample();
        OASJahresUstErgebnis jahresUstErgebnis2 = OASJahresUstErgebnis.getExample();
        OASJahresUstErgebnis jahresUstErgebnis3 = new OASJahresUstErgebnis();
        OASJahresUstErgebnis jahresUstErgebnis4 = new OASJahresUstErgebnis();

        System.assert(jahresUstErgebnis1.equals(jahresUstErgebnis2));
        System.assert(jahresUstErgebnis3.equals(jahresUstErgebnis4));
        System.assertEquals(jahresUstErgebnis1.hashCode(), jahresUstErgebnis2.hashCode());
        System.assertEquals(jahresUstErgebnis3.hashCode(), jahresUstErgebnis4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASJahresUstErgebnis jahresUstErgebnis = new OASJahresUstErgebnis();
        Map<String, String> x-property-mappings = jahresUstErgebnis.getx-property-mappings();
        System.assertEquals('gespeichertePerioden', x-property-mappings.get('gespeicherte_perioden'));
        System.assertEquals('hatIgTransaktionen', x-property-mappings.get('hat_ig_transaktionen'));
        System.assertEquals('istKleinunternehmer', x-property-mappings.get('ist_kleinunternehmer'));
        System.assertEquals('kz41', x-property-mappings.get('kz_41'));
        System.assertEquals('kz43', x-property-mappings.get('kz_43'));
        System.assertEquals('kz46', x-property-mappings.get('kz_46'));
        System.assertEquals('kz47', x-property-mappings.get('kz_47'));
        System.assertEquals('kz48', x-property-mappings.get('kz_48'));
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
        System.assertEquals('summeVorauszahlungen', x-property-mappings.get('summe_vorauszahlungen'));
    }
}
