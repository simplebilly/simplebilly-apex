@isTest
private class OASPlausibilitySummaryTest {
    @isTest
    private static void equalsSameInstance() {
        OASPlausibilitySummary plausibilitySummary1 = OASPlausibilitySummary.getExample();
        OASPlausibilitySummary plausibilitySummary2 = plausibilitySummary1;
        OASPlausibilitySummary plausibilitySummary3 = new OASPlausibilitySummary();
        OASPlausibilitySummary plausibilitySummary4 = plausibilitySummary3;

        System.assert(plausibilitySummary1.equals(plausibilitySummary2));
        System.assert(plausibilitySummary2.equals(plausibilitySummary1));
        System.assert(plausibilitySummary1.equals(plausibilitySummary1));
        System.assert(plausibilitySummary3.equals(plausibilitySummary4));
        System.assert(plausibilitySummary4.equals(plausibilitySummary3));
        System.assert(plausibilitySummary3.equals(plausibilitySummary3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPlausibilitySummary plausibilitySummary1 = OASPlausibilitySummary.getExample();
        OASPlausibilitySummary plausibilitySummary2 = OASPlausibilitySummary.getExample();
        OASPlausibilitySummary plausibilitySummary3 = new OASPlausibilitySummary();
        OASPlausibilitySummary plausibilitySummary4 = new OASPlausibilitySummary();

        System.assert(plausibilitySummary1.equals(plausibilitySummary2));
        System.assert(plausibilitySummary2.equals(plausibilitySummary1));
        System.assert(plausibilitySummary3.equals(plausibilitySummary4));
        System.assert(plausibilitySummary4.equals(plausibilitySummary3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPlausibilitySummary plausibilitySummary1 = OASPlausibilitySummary.getExample();
        OASPlausibilitySummary plausibilitySummary2 = new OASPlausibilitySummary();

        System.assertEquals(false, plausibilitySummary1.equals('foo'));
        System.assertEquals(false, plausibilitySummary2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPlausibilitySummary plausibilitySummary1 = OASPlausibilitySummary.getExample();
        OASPlausibilitySummary plausibilitySummary2 = new OASPlausibilitySummary();
        OASPlausibilitySummary plausibilitySummary3;

        System.assertEquals(false, plausibilitySummary1.equals(plausibilitySummary3));
        System.assertEquals(false, plausibilitySummary2.equals(plausibilitySummary3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPlausibilitySummary plausibilitySummary1 = OASPlausibilitySummary.getExample();
        OASPlausibilitySummary plausibilitySummary2 = new OASPlausibilitySummary();

        System.assertEquals(plausibilitySummary1.hashCode(), plausibilitySummary1.hashCode());
        System.assertEquals(plausibilitySummary2.hashCode(), plausibilitySummary2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPlausibilitySummary plausibilitySummary1 = OASPlausibilitySummary.getExample();
        OASPlausibilitySummary plausibilitySummary2 = OASPlausibilitySummary.getExample();
        OASPlausibilitySummary plausibilitySummary3 = new OASPlausibilitySummary();
        OASPlausibilitySummary plausibilitySummary4 = new OASPlausibilitySummary();

        System.assert(plausibilitySummary1.equals(plausibilitySummary2));
        System.assert(plausibilitySummary3.equals(plausibilitySummary4));
        System.assertEquals(plausibilitySummary1.hashCode(), plausibilitySummary2.hashCode());
        System.assertEquals(plausibilitySummary3.hashCode(), plausibilitySummary4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPlausibilitySummary plausibilitySummary = new OASPlausibilitySummary();
        Map<String, String> x-property-mappings = plausibilitySummary.getx-property-mappings();
        System.assertEquals('overallStatus', x-property-mappings.get('overall_status'));
        System.assertEquals('totalChecks', x-property-mappings.get('total_checks'));
    }
}
