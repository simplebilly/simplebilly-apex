@isTest
private class OASKonzernStatusTest {
    @isTest
    private static void equalsSameInstance() {
        OASKonzernStatus konzernStatus1 = OASKonzernStatus.getExample();
        OASKonzernStatus konzernStatus2 = konzernStatus1;
        OASKonzernStatus konzernStatus3 = new OASKonzernStatus();
        OASKonzernStatus konzernStatus4 = konzernStatus3;

        System.assert(konzernStatus1.equals(konzernStatus2));
        System.assert(konzernStatus2.equals(konzernStatus1));
        System.assert(konzernStatus1.equals(konzernStatus1));
        System.assert(konzernStatus3.equals(konzernStatus4));
        System.assert(konzernStatus4.equals(konzernStatus3));
        System.assert(konzernStatus3.equals(konzernStatus3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASKonzernStatus konzernStatus1 = OASKonzernStatus.getExample();
        OASKonzernStatus konzernStatus2 = OASKonzernStatus.getExample();
        OASKonzernStatus konzernStatus3 = new OASKonzernStatus();
        OASKonzernStatus konzernStatus4 = new OASKonzernStatus();

        System.assert(konzernStatus1.equals(konzernStatus2));
        System.assert(konzernStatus2.equals(konzernStatus1));
        System.assert(konzernStatus3.equals(konzernStatus4));
        System.assert(konzernStatus4.equals(konzernStatus3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASKonzernStatus konzernStatus1 = OASKonzernStatus.getExample();
        OASKonzernStatus konzernStatus2 = new OASKonzernStatus();

        System.assertEquals(false, konzernStatus1.equals('foo'));
        System.assertEquals(false, konzernStatus2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASKonzernStatus konzernStatus1 = OASKonzernStatus.getExample();
        OASKonzernStatus konzernStatus2 = new OASKonzernStatus();
        OASKonzernStatus konzernStatus3;

        System.assertEquals(false, konzernStatus1.equals(konzernStatus3));
        System.assertEquals(false, konzernStatus2.equals(konzernStatus3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASKonzernStatus konzernStatus1 = OASKonzernStatus.getExample();
        OASKonzernStatus konzernStatus2 = new OASKonzernStatus();

        System.assertEquals(konzernStatus1.hashCode(), konzernStatus1.hashCode());
        System.assertEquals(konzernStatus2.hashCode(), konzernStatus2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASKonzernStatus konzernStatus1 = OASKonzernStatus.getExample();
        OASKonzernStatus konzernStatus2 = OASKonzernStatus.getExample();
        OASKonzernStatus konzernStatus3 = new OASKonzernStatus();
        OASKonzernStatus konzernStatus4 = new OASKonzernStatus();

        System.assert(konzernStatus1.equals(konzernStatus2));
        System.assert(konzernStatus3.equals(konzernStatus4));
        System.assertEquals(konzernStatus1.hashCode(), konzernStatus2.hashCode());
        System.assertEquals(konzernStatus3.hashCode(), konzernStatus4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASKonzernStatus konzernStatus = new OASKonzernStatus();
        Map<String, String> x-property-mappings = konzernStatus.getx-property-mappings();
        System.assertEquals('missingGroupFigures', x-property-mappings.get('missing_group_figures'));
        System.assertEquals('parentName', x-property-mappings.get('parent_name'));
        System.assertEquals('parentSitus', x-property-mappings.get('parent_situs'));
        System.assertEquals('zwischenholdingBefreit', x-property-mappings.get('zwischenholding_befreit'));
        System.assertEquals('zwischenholdingHinweis', x-property-mappings.get('zwischenholding_hinweis'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASKonzernStatus konzernStatus = new OASKonzernStatus();
        System.assertEquals(new List<OASKonzernBeteiligung>(), konzernStatus.participations);
        System.assertEquals(null, konzernStatus.groessenbefreit);
        System.assertEquals(null, konzernStatus.kapitalmarktorientiert);
        System.assertEquals(null, konzernStatus.konzernabschlusspflicht);
        System.assertEquals(null, konzernStatus.missingGroupFigures);
        System.assertEquals(null, konzernStatus.mutterunternehmen);
        System.assertEquals(null, konzernStatus.parentName);
        System.assertEquals(null, konzernStatus.parentSitus);
        System.assertEquals(null, konzernStatus.thresholds);
        System.assertEquals(null, konzernStatus.year);
        System.assertEquals(null, konzernStatus.zwischenholdingBefreit);
        System.assertEquals(null, konzernStatus.zwischenholdingHinweis);
    }
}
