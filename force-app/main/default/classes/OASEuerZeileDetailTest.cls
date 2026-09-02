@isTest
private class OASEuerZeileDetailTest {
    @isTest
    private static void equalsSameInstance() {
        OASEuerZeileDetail euerZeileDetail1 = OASEuerZeileDetail.getExample();
        OASEuerZeileDetail euerZeileDetail2 = euerZeileDetail1;
        OASEuerZeileDetail euerZeileDetail3 = new OASEuerZeileDetail();
        OASEuerZeileDetail euerZeileDetail4 = euerZeileDetail3;

        System.assert(euerZeileDetail1.equals(euerZeileDetail2));
        System.assert(euerZeileDetail2.equals(euerZeileDetail1));
        System.assert(euerZeileDetail1.equals(euerZeileDetail1));
        System.assert(euerZeileDetail3.equals(euerZeileDetail4));
        System.assert(euerZeileDetail4.equals(euerZeileDetail3));
        System.assert(euerZeileDetail3.equals(euerZeileDetail3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEuerZeileDetail euerZeileDetail1 = OASEuerZeileDetail.getExample();
        OASEuerZeileDetail euerZeileDetail2 = OASEuerZeileDetail.getExample();
        OASEuerZeileDetail euerZeileDetail3 = new OASEuerZeileDetail();
        OASEuerZeileDetail euerZeileDetail4 = new OASEuerZeileDetail();

        System.assert(euerZeileDetail1.equals(euerZeileDetail2));
        System.assert(euerZeileDetail2.equals(euerZeileDetail1));
        System.assert(euerZeileDetail3.equals(euerZeileDetail4));
        System.assert(euerZeileDetail4.equals(euerZeileDetail3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEuerZeileDetail euerZeileDetail1 = OASEuerZeileDetail.getExample();
        OASEuerZeileDetail euerZeileDetail2 = new OASEuerZeileDetail();

        System.assertEquals(false, euerZeileDetail1.equals('foo'));
        System.assertEquals(false, euerZeileDetail2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEuerZeileDetail euerZeileDetail1 = OASEuerZeileDetail.getExample();
        OASEuerZeileDetail euerZeileDetail2 = new OASEuerZeileDetail();
        OASEuerZeileDetail euerZeileDetail3;

        System.assertEquals(false, euerZeileDetail1.equals(euerZeileDetail3));
        System.assertEquals(false, euerZeileDetail2.equals(euerZeileDetail3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEuerZeileDetail euerZeileDetail1 = OASEuerZeileDetail.getExample();
        OASEuerZeileDetail euerZeileDetail2 = new OASEuerZeileDetail();

        System.assertEquals(euerZeileDetail1.hashCode(), euerZeileDetail1.hashCode());
        System.assertEquals(euerZeileDetail2.hashCode(), euerZeileDetail2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEuerZeileDetail euerZeileDetail1 = OASEuerZeileDetail.getExample();
        OASEuerZeileDetail euerZeileDetail2 = OASEuerZeileDetail.getExample();
        OASEuerZeileDetail euerZeileDetail3 = new OASEuerZeileDetail();
        OASEuerZeileDetail euerZeileDetail4 = new OASEuerZeileDetail();

        System.assert(euerZeileDetail1.equals(euerZeileDetail2));
        System.assert(euerZeileDetail3.equals(euerZeileDetail4));
        System.assertEquals(euerZeileDetail1.hashCode(), euerZeileDetail2.hashCode());
        System.assertEquals(euerZeileDetail3.hashCode(), euerZeileDetail4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEuerZeileDetail euerZeileDetail = new OASEuerZeileDetail();
        Map<String, String> x-property-mappings = euerZeileDetail.getx-property-mappings();
        System.assertEquals('betragGesamt', x-property-mappings.get('betrag_gesamt'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASEuerZeileDetail euerZeileDetail = new OASEuerZeileDetail();
        System.assertEquals(new List<OASEuerKatSumme>(), euerZeileDetail.kategorien);
        System.assertEquals(null, euerZeileDetail.abschnitt);
        System.assertEquals(null, euerZeileDetail.betragGesamt);
        System.assertEquals(null, euerZeileDetail.bezeichnung);
        System.assertEquals(null, euerZeileDetail.zeile);
    }
}
