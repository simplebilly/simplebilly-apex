@isTest
private class OASBetriebsstaettenDetailTest {
    @isTest
    private static void equalsSameInstance() {
        OASBetriebsstaettenDetail betriebsstaettenDetail1 = OASBetriebsstaettenDetail.getExample();
        OASBetriebsstaettenDetail betriebsstaettenDetail2 = betriebsstaettenDetail1;
        OASBetriebsstaettenDetail betriebsstaettenDetail3 = new OASBetriebsstaettenDetail();
        OASBetriebsstaettenDetail betriebsstaettenDetail4 = betriebsstaettenDetail3;

        System.assert(betriebsstaettenDetail1.equals(betriebsstaettenDetail2));
        System.assert(betriebsstaettenDetail2.equals(betriebsstaettenDetail1));
        System.assert(betriebsstaettenDetail1.equals(betriebsstaettenDetail1));
        System.assert(betriebsstaettenDetail3.equals(betriebsstaettenDetail4));
        System.assert(betriebsstaettenDetail4.equals(betriebsstaettenDetail3));
        System.assert(betriebsstaettenDetail3.equals(betriebsstaettenDetail3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBetriebsstaettenDetail betriebsstaettenDetail1 = OASBetriebsstaettenDetail.getExample();
        OASBetriebsstaettenDetail betriebsstaettenDetail2 = OASBetriebsstaettenDetail.getExample();
        OASBetriebsstaettenDetail betriebsstaettenDetail3 = new OASBetriebsstaettenDetail();
        OASBetriebsstaettenDetail betriebsstaettenDetail4 = new OASBetriebsstaettenDetail();

        System.assert(betriebsstaettenDetail1.equals(betriebsstaettenDetail2));
        System.assert(betriebsstaettenDetail2.equals(betriebsstaettenDetail1));
        System.assert(betriebsstaettenDetail3.equals(betriebsstaettenDetail4));
        System.assert(betriebsstaettenDetail4.equals(betriebsstaettenDetail3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBetriebsstaettenDetail betriebsstaettenDetail1 = OASBetriebsstaettenDetail.getExample();
        OASBetriebsstaettenDetail betriebsstaettenDetail2 = new OASBetriebsstaettenDetail();

        System.assertEquals(false, betriebsstaettenDetail1.equals('foo'));
        System.assertEquals(false, betriebsstaettenDetail2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBetriebsstaettenDetail betriebsstaettenDetail1 = OASBetriebsstaettenDetail.getExample();
        OASBetriebsstaettenDetail betriebsstaettenDetail2 = new OASBetriebsstaettenDetail();
        OASBetriebsstaettenDetail betriebsstaettenDetail3;

        System.assertEquals(false, betriebsstaettenDetail1.equals(betriebsstaettenDetail3));
        System.assertEquals(false, betriebsstaettenDetail2.equals(betriebsstaettenDetail3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBetriebsstaettenDetail betriebsstaettenDetail1 = OASBetriebsstaettenDetail.getExample();
        OASBetriebsstaettenDetail betriebsstaettenDetail2 = new OASBetriebsstaettenDetail();

        System.assertEquals(betriebsstaettenDetail1.hashCode(), betriebsstaettenDetail1.hashCode());
        System.assertEquals(betriebsstaettenDetail2.hashCode(), betriebsstaettenDetail2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBetriebsstaettenDetail betriebsstaettenDetail1 = OASBetriebsstaettenDetail.getExample();
        OASBetriebsstaettenDetail betriebsstaettenDetail2 = OASBetriebsstaettenDetail.getExample();
        OASBetriebsstaettenDetail betriebsstaettenDetail3 = new OASBetriebsstaettenDetail();
        OASBetriebsstaettenDetail betriebsstaettenDetail4 = new OASBetriebsstaettenDetail();

        System.assert(betriebsstaettenDetail1.equals(betriebsstaettenDetail2));
        System.assert(betriebsstaettenDetail3.equals(betriebsstaettenDetail4));
        System.assertEquals(betriebsstaettenDetail1.hashCode(), betriebsstaettenDetail2.hashCode());
        System.assertEquals(betriebsstaettenDetail3.hashCode(), betriebsstaettenDetail4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBetriebsstaettenDetail betriebsstaettenDetail = new OASBetriebsstaettenDetail();
        Map<String, String> x-property-mappings = betriebsstaettenDetail.getx-property-mappings();
        System.assertEquals('monatlicherBeitrag', x-property-mappings.get('monatlicher_beitrag'));
    }
}
