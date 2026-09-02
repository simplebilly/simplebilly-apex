@isTest
private class OASKonzernThresholdsTest {
    @isTest
    private static void equalsSameInstance() {
        OASKonzernThresholds konzernThresholds1 = OASKonzernThresholds.getExample();
        OASKonzernThresholds konzernThresholds2 = konzernThresholds1;
        OASKonzernThresholds konzernThresholds3 = new OASKonzernThresholds();
        OASKonzernThresholds konzernThresholds4 = konzernThresholds3;

        System.assert(konzernThresholds1.equals(konzernThresholds2));
        System.assert(konzernThresholds2.equals(konzernThresholds1));
        System.assert(konzernThresholds1.equals(konzernThresholds1));
        System.assert(konzernThresholds3.equals(konzernThresholds4));
        System.assert(konzernThresholds4.equals(konzernThresholds3));
        System.assert(konzernThresholds3.equals(konzernThresholds3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASKonzernThresholds konzernThresholds1 = OASKonzernThresholds.getExample();
        OASKonzernThresholds konzernThresholds2 = OASKonzernThresholds.getExample();
        OASKonzernThresholds konzernThresholds3 = new OASKonzernThresholds();
        OASKonzernThresholds konzernThresholds4 = new OASKonzernThresholds();

        System.assert(konzernThresholds1.equals(konzernThresholds2));
        System.assert(konzernThresholds2.equals(konzernThresholds1));
        System.assert(konzernThresholds3.equals(konzernThresholds4));
        System.assert(konzernThresholds4.equals(konzernThresholds3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASKonzernThresholds konzernThresholds1 = OASKonzernThresholds.getExample();
        OASKonzernThresholds konzernThresholds2 = new OASKonzernThresholds();

        System.assertEquals(false, konzernThresholds1.equals('foo'));
        System.assertEquals(false, konzernThresholds2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASKonzernThresholds konzernThresholds1 = OASKonzernThresholds.getExample();
        OASKonzernThresholds konzernThresholds2 = new OASKonzernThresholds();
        OASKonzernThresholds konzernThresholds3;

        System.assertEquals(false, konzernThresholds1.equals(konzernThresholds3));
        System.assertEquals(false, konzernThresholds2.equals(konzernThresholds3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASKonzernThresholds konzernThresholds1 = OASKonzernThresholds.getExample();
        OASKonzernThresholds konzernThresholds2 = new OASKonzernThresholds();

        System.assertEquals(konzernThresholds1.hashCode(), konzernThresholds1.hashCode());
        System.assertEquals(konzernThresholds2.hashCode(), konzernThresholds2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASKonzernThresholds konzernThresholds1 = OASKonzernThresholds.getExample();
        OASKonzernThresholds konzernThresholds2 = OASKonzernThresholds.getExample();
        OASKonzernThresholds konzernThresholds3 = new OASKonzernThresholds();
        OASKonzernThresholds konzernThresholds4 = new OASKonzernThresholds();

        System.assert(konzernThresholds1.equals(konzernThresholds2));
        System.assert(konzernThresholds3.equals(konzernThresholds4));
        System.assertEquals(konzernThresholds1.hashCode(), konzernThresholds2.hashCode());
        System.assertEquals(konzernThresholds3.hashCode(), konzernThresholds4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASKonzernThresholds konzernThresholds = new OASKonzernThresholds();
        Map<String, String> x-property-mappings = konzernThresholds.getx-property-mappings();
        System.assertEquals('nettoUmsatz', x-property-mappings.get('netto_umsatz'));
    }
}
