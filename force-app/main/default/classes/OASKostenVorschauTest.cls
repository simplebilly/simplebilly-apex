@isTest
private class OASKostenVorschauTest {
    @isTest
    private static void equalsSameInstance() {
        OASKostenVorschau kostenVorschau1 = OASKostenVorschau.getExample();
        OASKostenVorschau kostenVorschau2 = kostenVorschau1;
        OASKostenVorschau kostenVorschau3 = new OASKostenVorschau();
        OASKostenVorschau kostenVorschau4 = kostenVorschau3;

        System.assert(kostenVorschau1.equals(kostenVorschau2));
        System.assert(kostenVorschau2.equals(kostenVorschau1));
        System.assert(kostenVorschau1.equals(kostenVorschau1));
        System.assert(kostenVorschau3.equals(kostenVorschau4));
        System.assert(kostenVorschau4.equals(kostenVorschau3));
        System.assert(kostenVorschau3.equals(kostenVorschau3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASKostenVorschau kostenVorschau1 = OASKostenVorschau.getExample();
        OASKostenVorschau kostenVorschau2 = OASKostenVorschau.getExample();
        OASKostenVorschau kostenVorschau3 = new OASKostenVorschau();
        OASKostenVorschau kostenVorschau4 = new OASKostenVorschau();

        System.assert(kostenVorschau1.equals(kostenVorschau2));
        System.assert(kostenVorschau2.equals(kostenVorschau1));
        System.assert(kostenVorschau3.equals(kostenVorschau4));
        System.assert(kostenVorschau4.equals(kostenVorschau3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASKostenVorschau kostenVorschau1 = OASKostenVorschau.getExample();
        OASKostenVorschau kostenVorschau2 = new OASKostenVorschau();

        System.assertEquals(false, kostenVorschau1.equals('foo'));
        System.assertEquals(false, kostenVorschau2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASKostenVorschau kostenVorschau1 = OASKostenVorschau.getExample();
        OASKostenVorschau kostenVorschau2 = new OASKostenVorschau();
        OASKostenVorschau kostenVorschau3;

        System.assertEquals(false, kostenVorschau1.equals(kostenVorschau3));
        System.assertEquals(false, kostenVorschau2.equals(kostenVorschau3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASKostenVorschau kostenVorschau1 = OASKostenVorschau.getExample();
        OASKostenVorschau kostenVorschau2 = new OASKostenVorschau();

        System.assertEquals(kostenVorschau1.hashCode(), kostenVorschau1.hashCode());
        System.assertEquals(kostenVorschau2.hashCode(), kostenVorschau2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASKostenVorschau kostenVorschau1 = OASKostenVorschau.getExample();
        OASKostenVorschau kostenVorschau2 = OASKostenVorschau.getExample();
        OASKostenVorschau kostenVorschau3 = new OASKostenVorschau();
        OASKostenVorschau kostenVorschau4 = new OASKostenVorschau();

        System.assert(kostenVorschau1.equals(kostenVorschau2));
        System.assert(kostenVorschau3.equals(kostenVorschau4));
        System.assertEquals(kostenVorschau1.hashCode(), kostenVorschau2.hashCode());
        System.assertEquals(kostenVorschau3.hashCode(), kostenVorschau4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASKostenVorschau kostenVorschau = new OASKostenVorschau();
        System.assertEquals(new List<OASKostenEintrag>(), kostenVorschau.eintraege);
        System.assertEquals(null, kostenVorschau.gesamt);
    }
}
