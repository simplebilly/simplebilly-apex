@isTest
private class OASFristEintragTest {
    @isTest
    private static void equalsSameInstance() {
        OASFristEintrag fristEintrag1 = OASFristEintrag.getExample();
        OASFristEintrag fristEintrag2 = fristEintrag1;
        OASFristEintrag fristEintrag3 = new OASFristEintrag();
        OASFristEintrag fristEintrag4 = fristEintrag3;

        System.assert(fristEintrag1.equals(fristEintrag2));
        System.assert(fristEintrag2.equals(fristEintrag1));
        System.assert(fristEintrag1.equals(fristEintrag1));
        System.assert(fristEintrag3.equals(fristEintrag4));
        System.assert(fristEintrag4.equals(fristEintrag3));
        System.assert(fristEintrag3.equals(fristEintrag3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFristEintrag fristEintrag1 = OASFristEintrag.getExample();
        OASFristEintrag fristEintrag2 = OASFristEintrag.getExample();
        OASFristEintrag fristEintrag3 = new OASFristEintrag();
        OASFristEintrag fristEintrag4 = new OASFristEintrag();

        System.assert(fristEintrag1.equals(fristEintrag2));
        System.assert(fristEintrag2.equals(fristEintrag1));
        System.assert(fristEintrag3.equals(fristEintrag4));
        System.assert(fristEintrag4.equals(fristEintrag3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFristEintrag fristEintrag1 = OASFristEintrag.getExample();
        OASFristEintrag fristEintrag2 = new OASFristEintrag();

        System.assertEquals(false, fristEintrag1.equals('foo'));
        System.assertEquals(false, fristEintrag2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFristEintrag fristEintrag1 = OASFristEintrag.getExample();
        OASFristEintrag fristEintrag2 = new OASFristEintrag();
        OASFristEintrag fristEintrag3;

        System.assertEquals(false, fristEintrag1.equals(fristEintrag3));
        System.assertEquals(false, fristEintrag2.equals(fristEintrag3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFristEintrag fristEintrag1 = OASFristEintrag.getExample();
        OASFristEintrag fristEintrag2 = new OASFristEintrag();

        System.assertEquals(fristEintrag1.hashCode(), fristEintrag1.hashCode());
        System.assertEquals(fristEintrag2.hashCode(), fristEintrag2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFristEintrag fristEintrag1 = OASFristEintrag.getExample();
        OASFristEintrag fristEintrag2 = OASFristEintrag.getExample();
        OASFristEintrag fristEintrag3 = new OASFristEintrag();
        OASFristEintrag fristEintrag4 = new OASFristEintrag();

        System.assert(fristEintrag1.equals(fristEintrag2));
        System.assert(fristEintrag3.equals(fristEintrag4));
        System.assertEquals(fristEintrag1.hashCode(), fristEintrag2.hashCode());
        System.assertEquals(fristEintrag3.hashCode(), fristEintrag4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFristEintrag fristEintrag = new OASFristEintrag();
        Map<String, String> x-property-mappings = fristEintrag.getx-property-mappings();
        System.assertEquals('faelligOriginal', x-property-mappings.get('faellig_original'));
    }
}
