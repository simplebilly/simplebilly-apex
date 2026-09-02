@isTest
private class OASAnlageSErgebnisTest {
    @isTest
    private static void equalsSameInstance() {
        OASAnlageSErgebnis anlageSErgebnis1 = OASAnlageSErgebnis.getExample();
        OASAnlageSErgebnis anlageSErgebnis2 = anlageSErgebnis1;
        OASAnlageSErgebnis anlageSErgebnis3 = new OASAnlageSErgebnis();
        OASAnlageSErgebnis anlageSErgebnis4 = anlageSErgebnis3;

        System.assert(anlageSErgebnis1.equals(anlageSErgebnis2));
        System.assert(anlageSErgebnis2.equals(anlageSErgebnis1));
        System.assert(anlageSErgebnis1.equals(anlageSErgebnis1));
        System.assert(anlageSErgebnis3.equals(anlageSErgebnis4));
        System.assert(anlageSErgebnis4.equals(anlageSErgebnis3));
        System.assert(anlageSErgebnis3.equals(anlageSErgebnis3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAnlageSErgebnis anlageSErgebnis1 = OASAnlageSErgebnis.getExample();
        OASAnlageSErgebnis anlageSErgebnis2 = OASAnlageSErgebnis.getExample();
        OASAnlageSErgebnis anlageSErgebnis3 = new OASAnlageSErgebnis();
        OASAnlageSErgebnis anlageSErgebnis4 = new OASAnlageSErgebnis();

        System.assert(anlageSErgebnis1.equals(anlageSErgebnis2));
        System.assert(anlageSErgebnis2.equals(anlageSErgebnis1));
        System.assert(anlageSErgebnis3.equals(anlageSErgebnis4));
        System.assert(anlageSErgebnis4.equals(anlageSErgebnis3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAnlageSErgebnis anlageSErgebnis1 = OASAnlageSErgebnis.getExample();
        OASAnlageSErgebnis anlageSErgebnis2 = new OASAnlageSErgebnis();

        System.assertEquals(false, anlageSErgebnis1.equals('foo'));
        System.assertEquals(false, anlageSErgebnis2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAnlageSErgebnis anlageSErgebnis1 = OASAnlageSErgebnis.getExample();
        OASAnlageSErgebnis anlageSErgebnis2 = new OASAnlageSErgebnis();
        OASAnlageSErgebnis anlageSErgebnis3;

        System.assertEquals(false, anlageSErgebnis1.equals(anlageSErgebnis3));
        System.assertEquals(false, anlageSErgebnis2.equals(anlageSErgebnis3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAnlageSErgebnis anlageSErgebnis1 = OASAnlageSErgebnis.getExample();
        OASAnlageSErgebnis anlageSErgebnis2 = new OASAnlageSErgebnis();

        System.assertEquals(anlageSErgebnis1.hashCode(), anlageSErgebnis1.hashCode());
        System.assertEquals(anlageSErgebnis2.hashCode(), anlageSErgebnis2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAnlageSErgebnis anlageSErgebnis1 = OASAnlageSErgebnis.getExample();
        OASAnlageSErgebnis anlageSErgebnis2 = OASAnlageSErgebnis.getExample();
        OASAnlageSErgebnis anlageSErgebnis3 = new OASAnlageSErgebnis();
        OASAnlageSErgebnis anlageSErgebnis4 = new OASAnlageSErgebnis();

        System.assert(anlageSErgebnis1.equals(anlageSErgebnis2));
        System.assert(anlageSErgebnis3.equals(anlageSErgebnis4));
        System.assertEquals(anlageSErgebnis1.hashCode(), anlageSErgebnis2.hashCode());
        System.assertEquals(anlageSErgebnis3.hashCode(), anlageSErgebnis4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAnlageSErgebnis anlageSErgebnis = new OASAnlageSErgebnis();
        Map<String, String> x-property-mappings = anlageSErgebnis.getx-property-mappings();
        System.assertEquals('gewinnVerlust', x-property-mappings.get('gewinn_verlust'));
        System.assertEquals('kfzHinweise', x-property-mappings.get('kfz_hinweise'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAnlageSErgebnis anlageSErgebnis = new OASAnlageSErgebnis();
        System.assertEquals(new List<OASAnlageSKfzHinweis>(), anlageSErgebnis.kfzHinweise);
        System.assertEquals(null, anlageSErgebnis.gewinnVerlust);
        System.assertEquals(null, anlageSErgebnis.jahr);
    }
}
