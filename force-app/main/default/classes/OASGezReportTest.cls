@isTest
private class OASGezReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASGezReport gezReport1 = OASGezReport.getExample();
        OASGezReport gezReport2 = gezReport1;
        OASGezReport gezReport3 = new OASGezReport();
        OASGezReport gezReport4 = gezReport3;

        System.assert(gezReport1.equals(gezReport2));
        System.assert(gezReport2.equals(gezReport1));
        System.assert(gezReport1.equals(gezReport1));
        System.assert(gezReport3.equals(gezReport4));
        System.assert(gezReport4.equals(gezReport3));
        System.assert(gezReport3.equals(gezReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGezReport gezReport1 = OASGezReport.getExample();
        OASGezReport gezReport2 = OASGezReport.getExample();
        OASGezReport gezReport3 = new OASGezReport();
        OASGezReport gezReport4 = new OASGezReport();

        System.assert(gezReport1.equals(gezReport2));
        System.assert(gezReport2.equals(gezReport1));
        System.assert(gezReport3.equals(gezReport4));
        System.assert(gezReport4.equals(gezReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGezReport gezReport1 = OASGezReport.getExample();
        OASGezReport gezReport2 = new OASGezReport();

        System.assertEquals(false, gezReport1.equals('foo'));
        System.assertEquals(false, gezReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGezReport gezReport1 = OASGezReport.getExample();
        OASGezReport gezReport2 = new OASGezReport();
        OASGezReport gezReport3;

        System.assertEquals(false, gezReport1.equals(gezReport3));
        System.assertEquals(false, gezReport2.equals(gezReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGezReport gezReport1 = OASGezReport.getExample();
        OASGezReport gezReport2 = new OASGezReport();

        System.assertEquals(gezReport1.hashCode(), gezReport1.hashCode());
        System.assertEquals(gezReport2.hashCode(), gezReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGezReport gezReport1 = OASGezReport.getExample();
        OASGezReport gezReport2 = OASGezReport.getExample();
        OASGezReport gezReport3 = new OASGezReport();
        OASGezReport gezReport4 = new OASGezReport();

        System.assert(gezReport1.equals(gezReport2));
        System.assert(gezReport3.equals(gezReport4));
        System.assertEquals(gezReport1.hashCode(), gezReport2.hashCode());
        System.assertEquals(gezReport3.hashCode(), gezReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGezReport gezReport = new OASGezReport();
        Map<String, String> x-property-mappings = gezReport.getx-property-mappings();
        System.assertEquals('beitragsfreieKfz', x-property-mappings.get('beitragsfreie_kfz'));
        System.assertEquals('beitragspflichtigeKfz', x-property-mappings.get('beitragspflichtige_kfz'));
        System.assertEquals('hotelzimmerBeitrag', x-property-mappings.get('hotelzimmer_beitrag'));
        System.assertEquals('jaehrlicherBeitrag', x-property-mappings.get('jaehrlicher_beitrag'));
        System.assertEquals('kfzBeitrag', x-property-mappings.get('kfz_beitrag'));
        System.assertEquals('monatlicherBeitrag', x-property-mappings.get('monatlicher_beitrag'));
        System.assertEquals('vierteljaehrlicherBeitrag', x-property-mappings.get('vierteljaehrlicher_beitrag'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGezReport gezReport = new OASGezReport();
        System.assertEquals(new List<OASBetriebsstaettenDetail>(), gezReport.betriebsstaetten);
        System.assertEquals(null, gezReport.beitragsfreieKfz);
        System.assertEquals(null, gezReport.beitragspflichtigeKfz);
        System.assertEquals(null, gezReport.hinweis);
        System.assertEquals(null, gezReport.hotelzimmerBeitrag);
        System.assertEquals(null, gezReport.jaehrlicherBeitrag);
        System.assertEquals(null, gezReport.jahr);
        System.assertEquals(null, gezReport.kfzBeitrag);
        System.assertEquals(null, gezReport.monatlicherBeitrag);
        System.assertEquals(null, gezReport.vierteljaehrlicherBeitrag);
    }
}
