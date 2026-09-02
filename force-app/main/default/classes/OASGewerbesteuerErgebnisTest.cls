@isTest
private class OASGewerbesteuerErgebnisTest {
    @isTest
    private static void equalsSameInstance() {
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis1 = OASGewerbesteuerErgebnis.getExample();
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis2 = gewerbesteuerErgebnis1;
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis3 = new OASGewerbesteuerErgebnis();
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis4 = gewerbesteuerErgebnis3;

        System.assert(gewerbesteuerErgebnis1.equals(gewerbesteuerErgebnis2));
        System.assert(gewerbesteuerErgebnis2.equals(gewerbesteuerErgebnis1));
        System.assert(gewerbesteuerErgebnis1.equals(gewerbesteuerErgebnis1));
        System.assert(gewerbesteuerErgebnis3.equals(gewerbesteuerErgebnis4));
        System.assert(gewerbesteuerErgebnis4.equals(gewerbesteuerErgebnis3));
        System.assert(gewerbesteuerErgebnis3.equals(gewerbesteuerErgebnis3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis1 = OASGewerbesteuerErgebnis.getExample();
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis2 = OASGewerbesteuerErgebnis.getExample();
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis3 = new OASGewerbesteuerErgebnis();
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis4 = new OASGewerbesteuerErgebnis();

        System.assert(gewerbesteuerErgebnis1.equals(gewerbesteuerErgebnis2));
        System.assert(gewerbesteuerErgebnis2.equals(gewerbesteuerErgebnis1));
        System.assert(gewerbesteuerErgebnis3.equals(gewerbesteuerErgebnis4));
        System.assert(gewerbesteuerErgebnis4.equals(gewerbesteuerErgebnis3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis1 = OASGewerbesteuerErgebnis.getExample();
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis2 = new OASGewerbesteuerErgebnis();

        System.assertEquals(false, gewerbesteuerErgebnis1.equals('foo'));
        System.assertEquals(false, gewerbesteuerErgebnis2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis1 = OASGewerbesteuerErgebnis.getExample();
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis2 = new OASGewerbesteuerErgebnis();
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis3;

        System.assertEquals(false, gewerbesteuerErgebnis1.equals(gewerbesteuerErgebnis3));
        System.assertEquals(false, gewerbesteuerErgebnis2.equals(gewerbesteuerErgebnis3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis1 = OASGewerbesteuerErgebnis.getExample();
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis2 = new OASGewerbesteuerErgebnis();

        System.assertEquals(gewerbesteuerErgebnis1.hashCode(), gewerbesteuerErgebnis1.hashCode());
        System.assertEquals(gewerbesteuerErgebnis2.hashCode(), gewerbesteuerErgebnis2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis1 = OASGewerbesteuerErgebnis.getExample();
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis2 = OASGewerbesteuerErgebnis.getExample();
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis3 = new OASGewerbesteuerErgebnis();
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis4 = new OASGewerbesteuerErgebnis();

        System.assert(gewerbesteuerErgebnis1.equals(gewerbesteuerErgebnis2));
        System.assert(gewerbesteuerErgebnis3.equals(gewerbesteuerErgebnis4));
        System.assertEquals(gewerbesteuerErgebnis1.hashCode(), gewerbesteuerErgebnis2.hashCode());
        System.assertEquals(gewerbesteuerErgebnis3.hashCode(), gewerbesteuerErgebnis4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGewerbesteuerErgebnis gewerbesteuerErgebnis = new OASGewerbesteuerErgebnis();
        Map<String, String> x-property-mappings = gewerbesteuerErgebnis.getx-property-mappings();
        System.assertEquals('steuerArt', x-property-mappings.get('steuer_art'));
    }
}
