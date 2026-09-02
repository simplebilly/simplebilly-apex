@isTest
private class OASVerfahrensdokumentationTest {
    @isTest
    private static void equalsSameInstance() {
        OASVerfahrensdokumentation verfahrensdokumentation1 = OASVerfahrensdokumentation.getExample();
        OASVerfahrensdokumentation verfahrensdokumentation2 = verfahrensdokumentation1;
        OASVerfahrensdokumentation verfahrensdokumentation3 = new OASVerfahrensdokumentation();
        OASVerfahrensdokumentation verfahrensdokumentation4 = verfahrensdokumentation3;

        System.assert(verfahrensdokumentation1.equals(verfahrensdokumentation2));
        System.assert(verfahrensdokumentation2.equals(verfahrensdokumentation1));
        System.assert(verfahrensdokumentation1.equals(verfahrensdokumentation1));
        System.assert(verfahrensdokumentation3.equals(verfahrensdokumentation4));
        System.assert(verfahrensdokumentation4.equals(verfahrensdokumentation3));
        System.assert(verfahrensdokumentation3.equals(verfahrensdokumentation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASVerfahrensdokumentation verfahrensdokumentation1 = OASVerfahrensdokumentation.getExample();
        OASVerfahrensdokumentation verfahrensdokumentation2 = OASVerfahrensdokumentation.getExample();
        OASVerfahrensdokumentation verfahrensdokumentation3 = new OASVerfahrensdokumentation();
        OASVerfahrensdokumentation verfahrensdokumentation4 = new OASVerfahrensdokumentation();

        System.assert(verfahrensdokumentation1.equals(verfahrensdokumentation2));
        System.assert(verfahrensdokumentation2.equals(verfahrensdokumentation1));
        System.assert(verfahrensdokumentation3.equals(verfahrensdokumentation4));
        System.assert(verfahrensdokumentation4.equals(verfahrensdokumentation3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASVerfahrensdokumentation verfahrensdokumentation1 = OASVerfahrensdokumentation.getExample();
        OASVerfahrensdokumentation verfahrensdokumentation2 = new OASVerfahrensdokumentation();

        System.assertEquals(false, verfahrensdokumentation1.equals('foo'));
        System.assertEquals(false, verfahrensdokumentation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASVerfahrensdokumentation verfahrensdokumentation1 = OASVerfahrensdokumentation.getExample();
        OASVerfahrensdokumentation verfahrensdokumentation2 = new OASVerfahrensdokumentation();
        OASVerfahrensdokumentation verfahrensdokumentation3;

        System.assertEquals(false, verfahrensdokumentation1.equals(verfahrensdokumentation3));
        System.assertEquals(false, verfahrensdokumentation2.equals(verfahrensdokumentation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASVerfahrensdokumentation verfahrensdokumentation1 = OASVerfahrensdokumentation.getExample();
        OASVerfahrensdokumentation verfahrensdokumentation2 = new OASVerfahrensdokumentation();

        System.assertEquals(verfahrensdokumentation1.hashCode(), verfahrensdokumentation1.hashCode());
        System.assertEquals(verfahrensdokumentation2.hashCode(), verfahrensdokumentation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASVerfahrensdokumentation verfahrensdokumentation1 = OASVerfahrensdokumentation.getExample();
        OASVerfahrensdokumentation verfahrensdokumentation2 = OASVerfahrensdokumentation.getExample();
        OASVerfahrensdokumentation verfahrensdokumentation3 = new OASVerfahrensdokumentation();
        OASVerfahrensdokumentation verfahrensdokumentation4 = new OASVerfahrensdokumentation();

        System.assert(verfahrensdokumentation1.equals(verfahrensdokumentation2));
        System.assert(verfahrensdokumentation3.equals(verfahrensdokumentation4));
        System.assertEquals(verfahrensdokumentation1.hashCode(), verfahrensdokumentation2.hashCode());
        System.assertEquals(verfahrensdokumentation3.hashCode(), verfahrensdokumentation4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASVerfahrensdokumentation verfahrensdokumentation = new OASVerfahrensdokumentation();
        Map<String, String> x-property-mappings = verfahrensdokumentation.getx-property-mappings();
        System.assertEquals('generatedAt', x-property-mappings.get('generated_at'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASVerfahrensdokumentation verfahrensdokumentation = new OASVerfahrensdokumentation();
        System.assertEquals(new List<OASComplianceEntry>(), verfahrensdokumentation.entries);
        System.assertEquals(null, verfahrensdokumentation.generatedAt);
        System.assertEquals(null, verfahrensdokumentation.title);
        System.assertEquals(null, verfahrensdokumentation.version);
    }
}
