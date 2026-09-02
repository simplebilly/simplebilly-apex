@isTest
private class OASAnlageGKfzHinweisTest {
    @isTest
    private static void equalsSameInstance() {
        OASAnlageGKfzHinweis anlageGKfzHinweis1 = OASAnlageGKfzHinweis.getExample();
        OASAnlageGKfzHinweis anlageGKfzHinweis2 = anlageGKfzHinweis1;
        OASAnlageGKfzHinweis anlageGKfzHinweis3 = new OASAnlageGKfzHinweis();
        OASAnlageGKfzHinweis anlageGKfzHinweis4 = anlageGKfzHinweis3;

        System.assert(anlageGKfzHinweis1.equals(anlageGKfzHinweis2));
        System.assert(anlageGKfzHinweis2.equals(anlageGKfzHinweis1));
        System.assert(anlageGKfzHinweis1.equals(anlageGKfzHinweis1));
        System.assert(anlageGKfzHinweis3.equals(anlageGKfzHinweis4));
        System.assert(anlageGKfzHinweis4.equals(anlageGKfzHinweis3));
        System.assert(anlageGKfzHinweis3.equals(anlageGKfzHinweis3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAnlageGKfzHinweis anlageGKfzHinweis1 = OASAnlageGKfzHinweis.getExample();
        OASAnlageGKfzHinweis anlageGKfzHinweis2 = OASAnlageGKfzHinweis.getExample();
        OASAnlageGKfzHinweis anlageGKfzHinweis3 = new OASAnlageGKfzHinweis();
        OASAnlageGKfzHinweis anlageGKfzHinweis4 = new OASAnlageGKfzHinweis();

        System.assert(anlageGKfzHinweis1.equals(anlageGKfzHinweis2));
        System.assert(anlageGKfzHinweis2.equals(anlageGKfzHinweis1));
        System.assert(anlageGKfzHinweis3.equals(anlageGKfzHinweis4));
        System.assert(anlageGKfzHinweis4.equals(anlageGKfzHinweis3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAnlageGKfzHinweis anlageGKfzHinweis1 = OASAnlageGKfzHinweis.getExample();
        OASAnlageGKfzHinweis anlageGKfzHinweis2 = new OASAnlageGKfzHinweis();

        System.assertEquals(false, anlageGKfzHinweis1.equals('foo'));
        System.assertEquals(false, anlageGKfzHinweis2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAnlageGKfzHinweis anlageGKfzHinweis1 = OASAnlageGKfzHinweis.getExample();
        OASAnlageGKfzHinweis anlageGKfzHinweis2 = new OASAnlageGKfzHinweis();
        OASAnlageGKfzHinweis anlageGKfzHinweis3;

        System.assertEquals(false, anlageGKfzHinweis1.equals(anlageGKfzHinweis3));
        System.assertEquals(false, anlageGKfzHinweis2.equals(anlageGKfzHinweis3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAnlageGKfzHinweis anlageGKfzHinweis1 = OASAnlageGKfzHinweis.getExample();
        OASAnlageGKfzHinweis anlageGKfzHinweis2 = new OASAnlageGKfzHinweis();

        System.assertEquals(anlageGKfzHinweis1.hashCode(), anlageGKfzHinweis1.hashCode());
        System.assertEquals(anlageGKfzHinweis2.hashCode(), anlageGKfzHinweis2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAnlageGKfzHinweis anlageGKfzHinweis1 = OASAnlageGKfzHinweis.getExample();
        OASAnlageGKfzHinweis anlageGKfzHinweis2 = OASAnlageGKfzHinweis.getExample();
        OASAnlageGKfzHinweis anlageGKfzHinweis3 = new OASAnlageGKfzHinweis();
        OASAnlageGKfzHinweis anlageGKfzHinweis4 = new OASAnlageGKfzHinweis();

        System.assert(anlageGKfzHinweis1.equals(anlageGKfzHinweis2));
        System.assert(anlageGKfzHinweis3.equals(anlageGKfzHinweis4));
        System.assertEquals(anlageGKfzHinweis1.hashCode(), anlageGKfzHinweis2.hashCode());
        System.assertEquals(anlageGKfzHinweis3.hashCode(), anlageGKfzHinweis4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAnlageGKfzHinweis anlageGKfzHinweis = new OASAnlageGKfzHinweis();
        Map<String, String> x-property-mappings = anlageGKfzHinweis.getx-property-mappings();
        System.assertEquals('privatAnteilProzent', x-property-mappings.get('privat_anteil_prozent'));
    }
}
