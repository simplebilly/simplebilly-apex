@isTest
private class OASOffenlegungReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASOffenlegungReport offenlegungReport1 = OASOffenlegungReport.getExample();
        OASOffenlegungReport offenlegungReport2 = offenlegungReport1;
        OASOffenlegungReport offenlegungReport3 = new OASOffenlegungReport();
        OASOffenlegungReport offenlegungReport4 = offenlegungReport3;

        System.assert(offenlegungReport1.equals(offenlegungReport2));
        System.assert(offenlegungReport2.equals(offenlegungReport1));
        System.assert(offenlegungReport1.equals(offenlegungReport1));
        System.assert(offenlegungReport3.equals(offenlegungReport4));
        System.assert(offenlegungReport4.equals(offenlegungReport3));
        System.assert(offenlegungReport3.equals(offenlegungReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOffenlegungReport offenlegungReport1 = OASOffenlegungReport.getExample();
        OASOffenlegungReport offenlegungReport2 = OASOffenlegungReport.getExample();
        OASOffenlegungReport offenlegungReport3 = new OASOffenlegungReport();
        OASOffenlegungReport offenlegungReport4 = new OASOffenlegungReport();

        System.assert(offenlegungReport1.equals(offenlegungReport2));
        System.assert(offenlegungReport2.equals(offenlegungReport1));
        System.assert(offenlegungReport3.equals(offenlegungReport4));
        System.assert(offenlegungReport4.equals(offenlegungReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOffenlegungReport offenlegungReport1 = OASOffenlegungReport.getExample();
        OASOffenlegungReport offenlegungReport2 = new OASOffenlegungReport();

        System.assertEquals(false, offenlegungReport1.equals('foo'));
        System.assertEquals(false, offenlegungReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOffenlegungReport offenlegungReport1 = OASOffenlegungReport.getExample();
        OASOffenlegungReport offenlegungReport2 = new OASOffenlegungReport();
        OASOffenlegungReport offenlegungReport3;

        System.assertEquals(false, offenlegungReport1.equals(offenlegungReport3));
        System.assertEquals(false, offenlegungReport2.equals(offenlegungReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOffenlegungReport offenlegungReport1 = OASOffenlegungReport.getExample();
        OASOffenlegungReport offenlegungReport2 = new OASOffenlegungReport();

        System.assertEquals(offenlegungReport1.hashCode(), offenlegungReport1.hashCode());
        System.assertEquals(offenlegungReport2.hashCode(), offenlegungReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOffenlegungReport offenlegungReport1 = OASOffenlegungReport.getExample();
        OASOffenlegungReport offenlegungReport2 = OASOffenlegungReport.getExample();
        OASOffenlegungReport offenlegungReport3 = new OASOffenlegungReport();
        OASOffenlegungReport offenlegungReport4 = new OASOffenlegungReport();

        System.assert(offenlegungReport1.equals(offenlegungReport2));
        System.assert(offenlegungReport3.equals(offenlegungReport4));
        System.assertEquals(offenlegungReport1.hashCode(), offenlegungReport2.hashCode());
        System.assertEquals(offenlegungReport3.hashCode(), offenlegungReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOffenlegungReport offenlegungReport = new OASOffenlegungReport();
        Map<String, String> x-property-mappings = offenlegungReport.getx-property-mappings();
        System.assertEquals('deadlineMonths', x-property-mappings.get('deadline_months'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOffenlegungReport offenlegungReport = new OASOffenlegungReport();
        System.assertEquals(new List<OASOffenlegungItem>(), offenlegungReport.items);
        System.assertEquals(null, offenlegungReport.deadline);
        System.assertEquals(null, offenlegungReport.deadlineMonths);
        System.assertEquals(null, offenlegungReport.kapitalmarktorientiert);
        System.assertEquals(null, offenlegungReport.note);
        System.assertEquals(null, offenlegungReport.year);
    }
}
