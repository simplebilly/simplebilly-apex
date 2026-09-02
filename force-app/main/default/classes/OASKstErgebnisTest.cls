@isTest
private class OASKstErgebnisTest {
    @isTest
    private static void equalsSameInstance() {
        OASKstErgebnis kstErgebnis1 = OASKstErgebnis.getExample();
        OASKstErgebnis kstErgebnis2 = kstErgebnis1;
        OASKstErgebnis kstErgebnis3 = new OASKstErgebnis();
        OASKstErgebnis kstErgebnis4 = kstErgebnis3;

        System.assert(kstErgebnis1.equals(kstErgebnis2));
        System.assert(kstErgebnis2.equals(kstErgebnis1));
        System.assert(kstErgebnis1.equals(kstErgebnis1));
        System.assert(kstErgebnis3.equals(kstErgebnis4));
        System.assert(kstErgebnis4.equals(kstErgebnis3));
        System.assert(kstErgebnis3.equals(kstErgebnis3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASKstErgebnis kstErgebnis1 = OASKstErgebnis.getExample();
        OASKstErgebnis kstErgebnis2 = OASKstErgebnis.getExample();
        OASKstErgebnis kstErgebnis3 = new OASKstErgebnis();
        OASKstErgebnis kstErgebnis4 = new OASKstErgebnis();

        System.assert(kstErgebnis1.equals(kstErgebnis2));
        System.assert(kstErgebnis2.equals(kstErgebnis1));
        System.assert(kstErgebnis3.equals(kstErgebnis4));
        System.assert(kstErgebnis4.equals(kstErgebnis3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASKstErgebnis kstErgebnis1 = OASKstErgebnis.getExample();
        OASKstErgebnis kstErgebnis2 = new OASKstErgebnis();

        System.assertEquals(false, kstErgebnis1.equals('foo'));
        System.assertEquals(false, kstErgebnis2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASKstErgebnis kstErgebnis1 = OASKstErgebnis.getExample();
        OASKstErgebnis kstErgebnis2 = new OASKstErgebnis();
        OASKstErgebnis kstErgebnis3;

        System.assertEquals(false, kstErgebnis1.equals(kstErgebnis3));
        System.assertEquals(false, kstErgebnis2.equals(kstErgebnis3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASKstErgebnis kstErgebnis1 = OASKstErgebnis.getExample();
        OASKstErgebnis kstErgebnis2 = new OASKstErgebnis();

        System.assertEquals(kstErgebnis1.hashCode(), kstErgebnis1.hashCode());
        System.assertEquals(kstErgebnis2.hashCode(), kstErgebnis2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASKstErgebnis kstErgebnis1 = OASKstErgebnis.getExample();
        OASKstErgebnis kstErgebnis2 = OASKstErgebnis.getExample();
        OASKstErgebnis kstErgebnis3 = new OASKstErgebnis();
        OASKstErgebnis kstErgebnis4 = new OASKstErgebnis();

        System.assert(kstErgebnis1.equals(kstErgebnis2));
        System.assert(kstErgebnis3.equals(kstErgebnis4));
        System.assertEquals(kstErgebnis1.hashCode(), kstErgebnis2.hashCode());
        System.assertEquals(kstErgebnis3.hashCode(), kstErgebnis4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASKstErgebnis kstErgebnis = new OASKstErgebnis();
        Map<String, String> x-property-mappings = kstErgebnis.getx-property-mappings();
        System.assertEquals('istKapitalgesellschaft', x-property-mappings.get('ist_kapitalgesellschaft'));
    }
}
