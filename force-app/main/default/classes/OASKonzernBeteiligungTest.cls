@isTest
private class OASKonzernBeteiligungTest {
    @isTest
    private static void equalsSameInstance() {
        OASKonzernBeteiligung konzernBeteiligung1 = OASKonzernBeteiligung.getExample();
        OASKonzernBeteiligung konzernBeteiligung2 = konzernBeteiligung1;
        OASKonzernBeteiligung konzernBeteiligung3 = new OASKonzernBeteiligung();
        OASKonzernBeteiligung konzernBeteiligung4 = konzernBeteiligung3;

        System.assert(konzernBeteiligung1.equals(konzernBeteiligung2));
        System.assert(konzernBeteiligung2.equals(konzernBeteiligung1));
        System.assert(konzernBeteiligung1.equals(konzernBeteiligung1));
        System.assert(konzernBeteiligung3.equals(konzernBeteiligung4));
        System.assert(konzernBeteiligung4.equals(konzernBeteiligung3));
        System.assert(konzernBeteiligung3.equals(konzernBeteiligung3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASKonzernBeteiligung konzernBeteiligung1 = OASKonzernBeteiligung.getExample();
        OASKonzernBeteiligung konzernBeteiligung2 = OASKonzernBeteiligung.getExample();
        OASKonzernBeteiligung konzernBeteiligung3 = new OASKonzernBeteiligung();
        OASKonzernBeteiligung konzernBeteiligung4 = new OASKonzernBeteiligung();

        System.assert(konzernBeteiligung1.equals(konzernBeteiligung2));
        System.assert(konzernBeteiligung2.equals(konzernBeteiligung1));
        System.assert(konzernBeteiligung3.equals(konzernBeteiligung4));
        System.assert(konzernBeteiligung4.equals(konzernBeteiligung3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASKonzernBeteiligung konzernBeteiligung1 = OASKonzernBeteiligung.getExample();
        OASKonzernBeteiligung konzernBeteiligung2 = new OASKonzernBeteiligung();

        System.assertEquals(false, konzernBeteiligung1.equals('foo'));
        System.assertEquals(false, konzernBeteiligung2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASKonzernBeteiligung konzernBeteiligung1 = OASKonzernBeteiligung.getExample();
        OASKonzernBeteiligung konzernBeteiligung2 = new OASKonzernBeteiligung();
        OASKonzernBeteiligung konzernBeteiligung3;

        System.assertEquals(false, konzernBeteiligung1.equals(konzernBeteiligung3));
        System.assertEquals(false, konzernBeteiligung2.equals(konzernBeteiligung3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASKonzernBeteiligung konzernBeteiligung1 = OASKonzernBeteiligung.getExample();
        OASKonzernBeteiligung konzernBeteiligung2 = new OASKonzernBeteiligung();

        System.assertEquals(konzernBeteiligung1.hashCode(), konzernBeteiligung1.hashCode());
        System.assertEquals(konzernBeteiligung2.hashCode(), konzernBeteiligung2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASKonzernBeteiligung konzernBeteiligung1 = OASKonzernBeteiligung.getExample();
        OASKonzernBeteiligung konzernBeteiligung2 = OASKonzernBeteiligung.getExample();
        OASKonzernBeteiligung konzernBeteiligung3 = new OASKonzernBeteiligung();
        OASKonzernBeteiligung konzernBeteiligung4 = new OASKonzernBeteiligung();

        System.assert(konzernBeteiligung1.equals(konzernBeteiligung2));
        System.assert(konzernBeteiligung3.equals(konzernBeteiligung4));
        System.assertEquals(konzernBeteiligung1.hashCode(), konzernBeteiligung2.hashCode());
        System.assertEquals(konzernBeteiligung3.hashCode(), konzernBeteiligung4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASKonzernBeteiligung konzernBeteiligung = new OASKonzernBeteiligung();
        Map<String, String> x-property-mappings = konzernBeteiligung.getx-property-mappings();
        System.assertEquals('companyName', x-property-mappings.get('company_name'));
        System.assertEquals('controlBasis', x-property-mappings.get('control_basis'));
        System.assertEquals('ownershipPct', x-property-mappings.get('ownership_pct'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASKonzernBeteiligung konzernBeteiligung = new OASKonzernBeteiligung();
        System.assertEquals(new List<String>(), konzernBeteiligung.controlBasis);
        System.assertEquals(null, konzernBeteiligung.companyName);
        System.assertEquals(null, konzernBeteiligung.controlled);
        System.assertEquals(null, konzernBeteiligung.ownershipPct);
    }
}
