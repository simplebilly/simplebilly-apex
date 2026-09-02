@isTest
private class OASGewinnverwendungsReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASGewinnverwendungsReport gewinnverwendungsReport1 = OASGewinnverwendungsReport.getExample();
        OASGewinnverwendungsReport gewinnverwendungsReport2 = gewinnverwendungsReport1;
        OASGewinnverwendungsReport gewinnverwendungsReport3 = new OASGewinnverwendungsReport();
        OASGewinnverwendungsReport gewinnverwendungsReport4 = gewinnverwendungsReport3;

        System.assert(gewinnverwendungsReport1.equals(gewinnverwendungsReport2));
        System.assert(gewinnverwendungsReport2.equals(gewinnverwendungsReport1));
        System.assert(gewinnverwendungsReport1.equals(gewinnverwendungsReport1));
        System.assert(gewinnverwendungsReport3.equals(gewinnverwendungsReport4));
        System.assert(gewinnverwendungsReport4.equals(gewinnverwendungsReport3));
        System.assert(gewinnverwendungsReport3.equals(gewinnverwendungsReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGewinnverwendungsReport gewinnverwendungsReport1 = OASGewinnverwendungsReport.getExample();
        OASGewinnverwendungsReport gewinnverwendungsReport2 = OASGewinnverwendungsReport.getExample();
        OASGewinnverwendungsReport gewinnverwendungsReport3 = new OASGewinnverwendungsReport();
        OASGewinnverwendungsReport gewinnverwendungsReport4 = new OASGewinnverwendungsReport();

        System.assert(gewinnverwendungsReport1.equals(gewinnverwendungsReport2));
        System.assert(gewinnverwendungsReport2.equals(gewinnverwendungsReport1));
        System.assert(gewinnverwendungsReport3.equals(gewinnverwendungsReport4));
        System.assert(gewinnverwendungsReport4.equals(gewinnverwendungsReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGewinnverwendungsReport gewinnverwendungsReport1 = OASGewinnverwendungsReport.getExample();
        OASGewinnverwendungsReport gewinnverwendungsReport2 = new OASGewinnverwendungsReport();

        System.assertEquals(false, gewinnverwendungsReport1.equals('foo'));
        System.assertEquals(false, gewinnverwendungsReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGewinnverwendungsReport gewinnverwendungsReport1 = OASGewinnverwendungsReport.getExample();
        OASGewinnverwendungsReport gewinnverwendungsReport2 = new OASGewinnverwendungsReport();
        OASGewinnverwendungsReport gewinnverwendungsReport3;

        System.assertEquals(false, gewinnverwendungsReport1.equals(gewinnverwendungsReport3));
        System.assertEquals(false, gewinnverwendungsReport2.equals(gewinnverwendungsReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGewinnverwendungsReport gewinnverwendungsReport1 = OASGewinnverwendungsReport.getExample();
        OASGewinnverwendungsReport gewinnverwendungsReport2 = new OASGewinnverwendungsReport();

        System.assertEquals(gewinnverwendungsReport1.hashCode(), gewinnverwendungsReport1.hashCode());
        System.assertEquals(gewinnverwendungsReport2.hashCode(), gewinnverwendungsReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGewinnverwendungsReport gewinnverwendungsReport1 = OASGewinnverwendungsReport.getExample();
        OASGewinnverwendungsReport gewinnverwendungsReport2 = OASGewinnverwendungsReport.getExample();
        OASGewinnverwendungsReport gewinnverwendungsReport3 = new OASGewinnverwendungsReport();
        OASGewinnverwendungsReport gewinnverwendungsReport4 = new OASGewinnverwendungsReport();

        System.assert(gewinnverwendungsReport1.equals(gewinnverwendungsReport2));
        System.assert(gewinnverwendungsReport3.equals(gewinnverwendungsReport4));
        System.assertEquals(gewinnverwendungsReport1.hashCode(), gewinnverwendungsReport2.hashCode());
        System.assertEquals(gewinnverwendungsReport3.hashCode(), gewinnverwendungsReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGewinnverwendungsReport gewinnverwendungsReport = new OASGewinnverwendungsReport();
        Map<String, String> x-property-mappings = gewinnverwendungsReport.getx-property-mappings();
        System.assertEquals('gesetzlicheRuecklageBestand', x-property-mappings.get('gesetzliche_ruecklage_bestand'));
        System.assertEquals('gesetzlicheRuecklageCap', x-property-mappings.get('gesetzliche_ruecklage_cap'));
        System.assertEquals('gesetzlicheRuecklageNach', x-property-mappings.get('gesetzliche_ruecklage_nach'));
        System.assertEquals('gesetzlicheRuecklageSoll', x-property-mappings.get('gesetzliche_ruecklage_soll'));
        System.assertEquals('gezeichnetesKapital', x-property-mappings.get('gezeichnetes_kapital'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGewinnverwendungsReport gewinnverwendungsReport = new OASGewinnverwendungsReport();
        System.assertEquals(new List<OASGewinnverwendungsZeile>(), gewinnverwendungsReport.zeilen);
        System.assertEquals(null, gewinnverwendungsReport.bilanzgewinn);
        System.assertEquals(null, gewinnverwendungsReport.gesetzlicheRuecklageBestand);
        System.assertEquals(null, gewinnverwendungsReport.gesetzlicheRuecklageCap);
        System.assertEquals(null, gewinnverwendungsReport.gesetzlicheRuecklageNach);
        System.assertEquals(null, gewinnverwendungsReport.gesetzlicheRuecklageSoll);
        System.assertEquals(null, gewinnverwendungsReport.gezeichnetesKapital);
        System.assertEquals(null, gewinnverwendungsReport.jahresueberschuss);
        System.assertEquals(null, gewinnverwendungsReport.year);
    }
}
