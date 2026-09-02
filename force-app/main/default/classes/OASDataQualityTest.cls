@isTest
private class OASDataQualityTest {
    @isTest
    private static void equalsSameInstance() {
        OASDataQuality dataQuality1 = OASDataQuality.getExample();
        OASDataQuality dataQuality2 = dataQuality1;
        OASDataQuality dataQuality3 = new OASDataQuality();
        OASDataQuality dataQuality4 = dataQuality3;

        System.assert(dataQuality1.equals(dataQuality2));
        System.assert(dataQuality2.equals(dataQuality1));
        System.assert(dataQuality1.equals(dataQuality1));
        System.assert(dataQuality3.equals(dataQuality4));
        System.assert(dataQuality4.equals(dataQuality3));
        System.assert(dataQuality3.equals(dataQuality3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDataQuality dataQuality1 = OASDataQuality.getExample();
        OASDataQuality dataQuality2 = OASDataQuality.getExample();
        OASDataQuality dataQuality3 = new OASDataQuality();
        OASDataQuality dataQuality4 = new OASDataQuality();

        System.assert(dataQuality1.equals(dataQuality2));
        System.assert(dataQuality2.equals(dataQuality1));
        System.assert(dataQuality3.equals(dataQuality4));
        System.assert(dataQuality4.equals(dataQuality3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDataQuality dataQuality1 = OASDataQuality.getExample();
        OASDataQuality dataQuality2 = new OASDataQuality();

        System.assertEquals(false, dataQuality1.equals('foo'));
        System.assertEquals(false, dataQuality2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDataQuality dataQuality1 = OASDataQuality.getExample();
        OASDataQuality dataQuality2 = new OASDataQuality();
        OASDataQuality dataQuality3;

        System.assertEquals(false, dataQuality1.equals(dataQuality3));
        System.assertEquals(false, dataQuality2.equals(dataQuality3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDataQuality dataQuality1 = OASDataQuality.getExample();
        OASDataQuality dataQuality2 = new OASDataQuality();

        System.assertEquals(dataQuality1.hashCode(), dataQuality1.hashCode());
        System.assertEquals(dataQuality2.hashCode(), dataQuality2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDataQuality dataQuality1 = OASDataQuality.getExample();
        OASDataQuality dataQuality2 = OASDataQuality.getExample();
        OASDataQuality dataQuality3 = new OASDataQuality();
        OASDataQuality dataQuality4 = new OASDataQuality();

        System.assert(dataQuality1.equals(dataQuality2));
        System.assert(dataQuality3.equals(dataQuality4));
        System.assertEquals(dataQuality1.hashCode(), dataQuality2.hashCode());
        System.assertEquals(dataQuality3.hashCode(), dataQuality4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDataQuality dataQuality = new OASDataQuality();
        Map<String, String> x-property-mappings = dataQuality.getx-property-mappings();
        System.assertEquals('activityLines', x-property-mappings.get('activity_lines'));
        System.assertEquals('activitySharePct', x-property-mappings.get('activity_share_pct'));
        System.assertEquals('spendLines', x-property-mappings.get('spend_lines'));
    }
}
