@isTest
private class OASKostenEintragTest {
    @isTest
    private static void equalsSameInstance() {
        OASKostenEintrag kostenEintrag1 = OASKostenEintrag.getExample();
        OASKostenEintrag kostenEintrag2 = kostenEintrag1;
        OASKostenEintrag kostenEintrag3 = new OASKostenEintrag();
        OASKostenEintrag kostenEintrag4 = kostenEintrag3;

        System.assert(kostenEintrag1.equals(kostenEintrag2));
        System.assert(kostenEintrag2.equals(kostenEintrag1));
        System.assert(kostenEintrag1.equals(kostenEintrag1));
        System.assert(kostenEintrag3.equals(kostenEintrag4));
        System.assert(kostenEintrag4.equals(kostenEintrag3));
        System.assert(kostenEintrag3.equals(kostenEintrag3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASKostenEintrag kostenEintrag1 = OASKostenEintrag.getExample();
        OASKostenEintrag kostenEintrag2 = OASKostenEintrag.getExample();
        OASKostenEintrag kostenEintrag3 = new OASKostenEintrag();
        OASKostenEintrag kostenEintrag4 = new OASKostenEintrag();

        System.assert(kostenEintrag1.equals(kostenEintrag2));
        System.assert(kostenEintrag2.equals(kostenEintrag1));
        System.assert(kostenEintrag3.equals(kostenEintrag4));
        System.assert(kostenEintrag4.equals(kostenEintrag3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASKostenEintrag kostenEintrag1 = OASKostenEintrag.getExample();
        OASKostenEintrag kostenEintrag2 = new OASKostenEintrag();

        System.assertEquals(false, kostenEintrag1.equals('foo'));
        System.assertEquals(false, kostenEintrag2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASKostenEintrag kostenEintrag1 = OASKostenEintrag.getExample();
        OASKostenEintrag kostenEintrag2 = new OASKostenEintrag();
        OASKostenEintrag kostenEintrag3;

        System.assertEquals(false, kostenEintrag1.equals(kostenEintrag3));
        System.assertEquals(false, kostenEintrag2.equals(kostenEintrag3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASKostenEintrag kostenEintrag1 = OASKostenEintrag.getExample();
        OASKostenEintrag kostenEintrag2 = new OASKostenEintrag();

        System.assertEquals(kostenEintrag1.hashCode(), kostenEintrag1.hashCode());
        System.assertEquals(kostenEintrag2.hashCode(), kostenEintrag2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASKostenEintrag kostenEintrag1 = OASKostenEintrag.getExample();
        OASKostenEintrag kostenEintrag2 = OASKostenEintrag.getExample();
        OASKostenEintrag kostenEintrag3 = new OASKostenEintrag();
        OASKostenEintrag kostenEintrag4 = new OASKostenEintrag();

        System.assert(kostenEintrag1.equals(kostenEintrag2));
        System.assert(kostenEintrag3.equals(kostenEintrag4));
        System.assertEquals(kostenEintrag1.hashCode(), kostenEintrag2.hashCode());
        System.assertEquals(kostenEintrag3.hashCode(), kostenEintrag4.hashCode());
    }
}
