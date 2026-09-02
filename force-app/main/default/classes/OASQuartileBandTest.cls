@isTest
private class OASQuartileBandTest {
    @isTest
    private static void equalsSameInstance() {
        OASQuartileBand quartileBand1 = OASQuartileBand.getExample();
        OASQuartileBand quartileBand2 = quartileBand1;
        OASQuartileBand quartileBand3 = new OASQuartileBand();
        OASQuartileBand quartileBand4 = quartileBand3;

        System.assert(quartileBand1.equals(quartileBand2));
        System.assert(quartileBand2.equals(quartileBand1));
        System.assert(quartileBand1.equals(quartileBand1));
        System.assert(quartileBand3.equals(quartileBand4));
        System.assert(quartileBand4.equals(quartileBand3));
        System.assert(quartileBand3.equals(quartileBand3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQuartileBand quartileBand1 = OASQuartileBand.getExample();
        OASQuartileBand quartileBand2 = OASQuartileBand.getExample();
        OASQuartileBand quartileBand3 = new OASQuartileBand();
        OASQuartileBand quartileBand4 = new OASQuartileBand();

        System.assert(quartileBand1.equals(quartileBand2));
        System.assert(quartileBand2.equals(quartileBand1));
        System.assert(quartileBand3.equals(quartileBand4));
        System.assert(quartileBand4.equals(quartileBand3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQuartileBand quartileBand1 = OASQuartileBand.getExample();
        OASQuartileBand quartileBand2 = new OASQuartileBand();

        System.assertEquals(false, quartileBand1.equals('foo'));
        System.assertEquals(false, quartileBand2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQuartileBand quartileBand1 = OASQuartileBand.getExample();
        OASQuartileBand quartileBand2 = new OASQuartileBand();
        OASQuartileBand quartileBand3;

        System.assertEquals(false, quartileBand1.equals(quartileBand3));
        System.assertEquals(false, quartileBand2.equals(quartileBand3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQuartileBand quartileBand1 = OASQuartileBand.getExample();
        OASQuartileBand quartileBand2 = new OASQuartileBand();

        System.assertEquals(quartileBand1.hashCode(), quartileBand1.hashCode());
        System.assertEquals(quartileBand2.hashCode(), quartileBand2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQuartileBand quartileBand1 = OASQuartileBand.getExample();
        OASQuartileBand quartileBand2 = OASQuartileBand.getExample();
        OASQuartileBand quartileBand3 = new OASQuartileBand();
        OASQuartileBand quartileBand4 = new OASQuartileBand();

        System.assert(quartileBand1.equals(quartileBand2));
        System.assert(quartileBand3.equals(quartileBand4));
        System.assertEquals(quartileBand1.hashCode(), quartileBand2.hashCode());
        System.assertEquals(quartileBand3.hashCode(), quartileBand4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQuartileBand quartileBand = new OASQuartileBand();
        Map<String, String> x-property-mappings = quartileBand.getx-property-mappings();
        System.assertEquals('femaleSharePct', x-property-mappings.get('female_share_pct'));
        System.assertEquals('hourlyMedian', x-property-mappings.get('hourly_median'));
        System.assertEquals('maleSharePct', x-property-mappings.get('male_share_pct'));
    }
}
