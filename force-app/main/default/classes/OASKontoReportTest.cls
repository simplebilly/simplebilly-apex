@isTest
private class OASKontoReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASKontoReport kontoReport1 = OASKontoReport.getExample();
        OASKontoReport kontoReport2 = kontoReport1;
        OASKontoReport kontoReport3 = new OASKontoReport();
        OASKontoReport kontoReport4 = kontoReport3;

        System.assert(kontoReport1.equals(kontoReport2));
        System.assert(kontoReport2.equals(kontoReport1));
        System.assert(kontoReport1.equals(kontoReport1));
        System.assert(kontoReport3.equals(kontoReport4));
        System.assert(kontoReport4.equals(kontoReport3));
        System.assert(kontoReport3.equals(kontoReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASKontoReport kontoReport1 = OASKontoReport.getExample();
        OASKontoReport kontoReport2 = OASKontoReport.getExample();
        OASKontoReport kontoReport3 = new OASKontoReport();
        OASKontoReport kontoReport4 = new OASKontoReport();

        System.assert(kontoReport1.equals(kontoReport2));
        System.assert(kontoReport2.equals(kontoReport1));
        System.assert(kontoReport3.equals(kontoReport4));
        System.assert(kontoReport4.equals(kontoReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASKontoReport kontoReport1 = OASKontoReport.getExample();
        OASKontoReport kontoReport2 = new OASKontoReport();

        System.assertEquals(false, kontoReport1.equals('foo'));
        System.assertEquals(false, kontoReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASKontoReport kontoReport1 = OASKontoReport.getExample();
        OASKontoReport kontoReport2 = new OASKontoReport();
        OASKontoReport kontoReport3;

        System.assertEquals(false, kontoReport1.equals(kontoReport3));
        System.assertEquals(false, kontoReport2.equals(kontoReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASKontoReport kontoReport1 = OASKontoReport.getExample();
        OASKontoReport kontoReport2 = new OASKontoReport();

        System.assertEquals(kontoReport1.hashCode(), kontoReport1.hashCode());
        System.assertEquals(kontoReport2.hashCode(), kontoReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASKontoReport kontoReport1 = OASKontoReport.getExample();
        OASKontoReport kontoReport2 = OASKontoReport.getExample();
        OASKontoReport kontoReport3 = new OASKontoReport();
        OASKontoReport kontoReport4 = new OASKontoReport();

        System.assert(kontoReport1.equals(kontoReport2));
        System.assert(kontoReport3.equals(kontoReport4));
        System.assertEquals(kontoReport1.hashCode(), kontoReport2.hashCode());
        System.assertEquals(kontoReport3.hashCode(), kontoReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASKontoReport kontoReport = new OASKontoReport();
        Map<String, String> x-property-mappings = kontoReport.getx-property-mappings();
        System.assertEquals('generatedAt', x-property-mappings.get('generated_at'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASKontoReport kontoReport = new OASKontoReport();
        System.assertEquals(new List<OASKontoItem>(), kontoReport.konten);
        System.assertEquals(null, kontoReport.generatedAt);
        System.assertEquals(null, kontoReport.period);
    }
}
