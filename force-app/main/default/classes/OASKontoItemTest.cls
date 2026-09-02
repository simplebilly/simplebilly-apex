@isTest
private class OASKontoItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASKontoItem kontoItem1 = OASKontoItem.getExample();
        OASKontoItem kontoItem2 = kontoItem1;
        OASKontoItem kontoItem3 = new OASKontoItem();
        OASKontoItem kontoItem4 = kontoItem3;

        System.assert(kontoItem1.equals(kontoItem2));
        System.assert(kontoItem2.equals(kontoItem1));
        System.assert(kontoItem1.equals(kontoItem1));
        System.assert(kontoItem3.equals(kontoItem4));
        System.assert(kontoItem4.equals(kontoItem3));
        System.assert(kontoItem3.equals(kontoItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASKontoItem kontoItem1 = OASKontoItem.getExample();
        OASKontoItem kontoItem2 = OASKontoItem.getExample();
        OASKontoItem kontoItem3 = new OASKontoItem();
        OASKontoItem kontoItem4 = new OASKontoItem();

        System.assert(kontoItem1.equals(kontoItem2));
        System.assert(kontoItem2.equals(kontoItem1));
        System.assert(kontoItem3.equals(kontoItem4));
        System.assert(kontoItem4.equals(kontoItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASKontoItem kontoItem1 = OASKontoItem.getExample();
        OASKontoItem kontoItem2 = new OASKontoItem();

        System.assertEquals(false, kontoItem1.equals('foo'));
        System.assertEquals(false, kontoItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASKontoItem kontoItem1 = OASKontoItem.getExample();
        OASKontoItem kontoItem2 = new OASKontoItem();
        OASKontoItem kontoItem3;

        System.assertEquals(false, kontoItem1.equals(kontoItem3));
        System.assertEquals(false, kontoItem2.equals(kontoItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASKontoItem kontoItem1 = OASKontoItem.getExample();
        OASKontoItem kontoItem2 = new OASKontoItem();

        System.assertEquals(kontoItem1.hashCode(), kontoItem1.hashCode());
        System.assertEquals(kontoItem2.hashCode(), kontoItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASKontoItem kontoItem1 = OASKontoItem.getExample();
        OASKontoItem kontoItem2 = OASKontoItem.getExample();
        OASKontoItem kontoItem3 = new OASKontoItem();
        OASKontoItem kontoItem4 = new OASKontoItem();

        System.assert(kontoItem1.equals(kontoItem2));
        System.assert(kontoItem3.equals(kontoItem4));
        System.assertEquals(kontoItem1.hashCode(), kontoItem2.hashCode());
        System.assertEquals(kontoItem3.hashCode(), kontoItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASKontoItem kontoItem = new OASKontoItem();
        Map<String, String> x-property-mappings = kontoItem.getx-property-mappings();
        System.assertEquals('habenUmsatz', x-property-mappings.get('haben_umsatz'));
        System.assertEquals('sollUmsatz', x-property-mappings.get('soll_umsatz'));
    }
}
