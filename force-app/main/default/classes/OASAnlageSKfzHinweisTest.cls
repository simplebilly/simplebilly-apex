@isTest
private class OASAnlageSKfzHinweisTest {
    @isTest
    private static void equalsSameInstance() {
        OASAnlageSKfzHinweis anlageSKfzHinweis1 = OASAnlageSKfzHinweis.getExample();
        OASAnlageSKfzHinweis anlageSKfzHinweis2 = anlageSKfzHinweis1;
        OASAnlageSKfzHinweis anlageSKfzHinweis3 = new OASAnlageSKfzHinweis();
        OASAnlageSKfzHinweis anlageSKfzHinweis4 = anlageSKfzHinweis3;

        System.assert(anlageSKfzHinweis1.equals(anlageSKfzHinweis2));
        System.assert(anlageSKfzHinweis2.equals(anlageSKfzHinweis1));
        System.assert(anlageSKfzHinweis1.equals(anlageSKfzHinweis1));
        System.assert(anlageSKfzHinweis3.equals(anlageSKfzHinweis4));
        System.assert(anlageSKfzHinweis4.equals(anlageSKfzHinweis3));
        System.assert(anlageSKfzHinweis3.equals(anlageSKfzHinweis3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAnlageSKfzHinweis anlageSKfzHinweis1 = OASAnlageSKfzHinweis.getExample();
        OASAnlageSKfzHinweis anlageSKfzHinweis2 = OASAnlageSKfzHinweis.getExample();
        OASAnlageSKfzHinweis anlageSKfzHinweis3 = new OASAnlageSKfzHinweis();
        OASAnlageSKfzHinweis anlageSKfzHinweis4 = new OASAnlageSKfzHinweis();

        System.assert(anlageSKfzHinweis1.equals(anlageSKfzHinweis2));
        System.assert(anlageSKfzHinweis2.equals(anlageSKfzHinweis1));
        System.assert(anlageSKfzHinweis3.equals(anlageSKfzHinweis4));
        System.assert(anlageSKfzHinweis4.equals(anlageSKfzHinweis3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAnlageSKfzHinweis anlageSKfzHinweis1 = OASAnlageSKfzHinweis.getExample();
        OASAnlageSKfzHinweis anlageSKfzHinweis2 = new OASAnlageSKfzHinweis();

        System.assertEquals(false, anlageSKfzHinweis1.equals('foo'));
        System.assertEquals(false, anlageSKfzHinweis2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAnlageSKfzHinweis anlageSKfzHinweis1 = OASAnlageSKfzHinweis.getExample();
        OASAnlageSKfzHinweis anlageSKfzHinweis2 = new OASAnlageSKfzHinweis();
        OASAnlageSKfzHinweis anlageSKfzHinweis3;

        System.assertEquals(false, anlageSKfzHinweis1.equals(anlageSKfzHinweis3));
        System.assertEquals(false, anlageSKfzHinweis2.equals(anlageSKfzHinweis3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAnlageSKfzHinweis anlageSKfzHinweis1 = OASAnlageSKfzHinweis.getExample();
        OASAnlageSKfzHinweis anlageSKfzHinweis2 = new OASAnlageSKfzHinweis();

        System.assertEquals(anlageSKfzHinweis1.hashCode(), anlageSKfzHinweis1.hashCode());
        System.assertEquals(anlageSKfzHinweis2.hashCode(), anlageSKfzHinweis2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAnlageSKfzHinweis anlageSKfzHinweis1 = OASAnlageSKfzHinweis.getExample();
        OASAnlageSKfzHinweis anlageSKfzHinweis2 = OASAnlageSKfzHinweis.getExample();
        OASAnlageSKfzHinweis anlageSKfzHinweis3 = new OASAnlageSKfzHinweis();
        OASAnlageSKfzHinweis anlageSKfzHinweis4 = new OASAnlageSKfzHinweis();

        System.assert(anlageSKfzHinweis1.equals(anlageSKfzHinweis2));
        System.assert(anlageSKfzHinweis3.equals(anlageSKfzHinweis4));
        System.assertEquals(anlageSKfzHinweis1.hashCode(), anlageSKfzHinweis2.hashCode());
        System.assertEquals(anlageSKfzHinweis3.hashCode(), anlageSKfzHinweis4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAnlageSKfzHinweis anlageSKfzHinweis = new OASAnlageSKfzHinweis();
        Map<String, String> x-property-mappings = anlageSKfzHinweis.getx-property-mappings();
        System.assertEquals('privatAnteilProzent', x-property-mappings.get('privat_anteil_prozent'));
    }
}
