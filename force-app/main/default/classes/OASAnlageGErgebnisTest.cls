@isTest
private class OASAnlageGErgebnisTest {
    @isTest
    private static void equalsSameInstance() {
        OASAnlageGErgebnis anlageGErgebnis1 = OASAnlageGErgebnis.getExample();
        OASAnlageGErgebnis anlageGErgebnis2 = anlageGErgebnis1;
        OASAnlageGErgebnis anlageGErgebnis3 = new OASAnlageGErgebnis();
        OASAnlageGErgebnis anlageGErgebnis4 = anlageGErgebnis3;

        System.assert(anlageGErgebnis1.equals(anlageGErgebnis2));
        System.assert(anlageGErgebnis2.equals(anlageGErgebnis1));
        System.assert(anlageGErgebnis1.equals(anlageGErgebnis1));
        System.assert(anlageGErgebnis3.equals(anlageGErgebnis4));
        System.assert(anlageGErgebnis4.equals(anlageGErgebnis3));
        System.assert(anlageGErgebnis3.equals(anlageGErgebnis3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAnlageGErgebnis anlageGErgebnis1 = OASAnlageGErgebnis.getExample();
        OASAnlageGErgebnis anlageGErgebnis2 = OASAnlageGErgebnis.getExample();
        OASAnlageGErgebnis anlageGErgebnis3 = new OASAnlageGErgebnis();
        OASAnlageGErgebnis anlageGErgebnis4 = new OASAnlageGErgebnis();

        System.assert(anlageGErgebnis1.equals(anlageGErgebnis2));
        System.assert(anlageGErgebnis2.equals(anlageGErgebnis1));
        System.assert(anlageGErgebnis3.equals(anlageGErgebnis4));
        System.assert(anlageGErgebnis4.equals(anlageGErgebnis3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAnlageGErgebnis anlageGErgebnis1 = OASAnlageGErgebnis.getExample();
        OASAnlageGErgebnis anlageGErgebnis2 = new OASAnlageGErgebnis();

        System.assertEquals(false, anlageGErgebnis1.equals('foo'));
        System.assertEquals(false, anlageGErgebnis2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAnlageGErgebnis anlageGErgebnis1 = OASAnlageGErgebnis.getExample();
        OASAnlageGErgebnis anlageGErgebnis2 = new OASAnlageGErgebnis();
        OASAnlageGErgebnis anlageGErgebnis3;

        System.assertEquals(false, anlageGErgebnis1.equals(anlageGErgebnis3));
        System.assertEquals(false, anlageGErgebnis2.equals(anlageGErgebnis3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAnlageGErgebnis anlageGErgebnis1 = OASAnlageGErgebnis.getExample();
        OASAnlageGErgebnis anlageGErgebnis2 = new OASAnlageGErgebnis();

        System.assertEquals(anlageGErgebnis1.hashCode(), anlageGErgebnis1.hashCode());
        System.assertEquals(anlageGErgebnis2.hashCode(), anlageGErgebnis2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAnlageGErgebnis anlageGErgebnis1 = OASAnlageGErgebnis.getExample();
        OASAnlageGErgebnis anlageGErgebnis2 = OASAnlageGErgebnis.getExample();
        OASAnlageGErgebnis anlageGErgebnis3 = new OASAnlageGErgebnis();
        OASAnlageGErgebnis anlageGErgebnis4 = new OASAnlageGErgebnis();

        System.assert(anlageGErgebnis1.equals(anlageGErgebnis2));
        System.assert(anlageGErgebnis3.equals(anlageGErgebnis4));
        System.assertEquals(anlageGErgebnis1.hashCode(), anlageGErgebnis2.hashCode());
        System.assertEquals(anlageGErgebnis3.hashCode(), anlageGErgebnis4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAnlageGErgebnis anlageGErgebnis = new OASAnlageGErgebnis();
        Map<String, String> x-property-mappings = anlageGErgebnis.getx-property-mappings();
        System.assertEquals('gewinnVerlust', x-property-mappings.get('gewinn_verlust'));
        System.assertEquals('gewstGezahlt', x-property-mappings.get('gewst_gezahlt'));
        System.assertEquals('gewstMessbetragApprox', x-property-mappings.get('gewst_messbetrag_approx'));
        System.assertEquals('gewstPflichtig', x-property-mappings.get('gewst_pflichtig'));
        System.assertEquals('kfzHinweise', x-property-mappings.get('kfz_hinweise'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAnlageGErgebnis anlageGErgebnis = new OASAnlageGErgebnis();
        System.assertEquals(new List<OASAnlageGKfzHinweis>(), anlageGErgebnis.kfzHinweise);
        System.assertEquals(null, anlageGErgebnis.gewinnVerlust);
        System.assertEquals(null, anlageGErgebnis.gewstGezahlt);
        System.assertEquals(null, anlageGErgebnis.gewstMessbetragApprox);
        System.assertEquals(null, anlageGErgebnis.gewstPflichtig);
        System.assertEquals(null, anlageGErgebnis.jahr);
    }
}
