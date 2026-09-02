@isTest
private class OASBilanzReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASBilanzReport bilanzReport1 = OASBilanzReport.getExample();
        OASBilanzReport bilanzReport2 = bilanzReport1;
        OASBilanzReport bilanzReport3 = new OASBilanzReport();
        OASBilanzReport bilanzReport4 = bilanzReport3;

        System.assert(bilanzReport1.equals(bilanzReport2));
        System.assert(bilanzReport2.equals(bilanzReport1));
        System.assert(bilanzReport1.equals(bilanzReport1));
        System.assert(bilanzReport3.equals(bilanzReport4));
        System.assert(bilanzReport4.equals(bilanzReport3));
        System.assert(bilanzReport3.equals(bilanzReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBilanzReport bilanzReport1 = OASBilanzReport.getExample();
        OASBilanzReport bilanzReport2 = OASBilanzReport.getExample();
        OASBilanzReport bilanzReport3 = new OASBilanzReport();
        OASBilanzReport bilanzReport4 = new OASBilanzReport();

        System.assert(bilanzReport1.equals(bilanzReport2));
        System.assert(bilanzReport2.equals(bilanzReport1));
        System.assert(bilanzReport3.equals(bilanzReport4));
        System.assert(bilanzReport4.equals(bilanzReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBilanzReport bilanzReport1 = OASBilanzReport.getExample();
        OASBilanzReport bilanzReport2 = new OASBilanzReport();

        System.assertEquals(false, bilanzReport1.equals('foo'));
        System.assertEquals(false, bilanzReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBilanzReport bilanzReport1 = OASBilanzReport.getExample();
        OASBilanzReport bilanzReport2 = new OASBilanzReport();
        OASBilanzReport bilanzReport3;

        System.assertEquals(false, bilanzReport1.equals(bilanzReport3));
        System.assertEquals(false, bilanzReport2.equals(bilanzReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBilanzReport bilanzReport1 = OASBilanzReport.getExample();
        OASBilanzReport bilanzReport2 = new OASBilanzReport();

        System.assertEquals(bilanzReport1.hashCode(), bilanzReport1.hashCode());
        System.assertEquals(bilanzReport2.hashCode(), bilanzReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBilanzReport bilanzReport1 = OASBilanzReport.getExample();
        OASBilanzReport bilanzReport2 = OASBilanzReport.getExample();
        OASBilanzReport bilanzReport3 = new OASBilanzReport();
        OASBilanzReport bilanzReport4 = new OASBilanzReport();

        System.assert(bilanzReport1.equals(bilanzReport2));
        System.assert(bilanzReport3.equals(bilanzReport4));
        System.assertEquals(bilanzReport1.hashCode(), bilanzReport2.hashCode());
        System.assertEquals(bilanzReport3.hashCode(), bilanzReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBilanzReport bilanzReport = new OASBilanzReport();
        Map<String, String> x-property-mappings = bilanzReport.getx-property-mappings();
        System.assertEquals('generatedAt', x-property-mappings.get('generated_at'));
        System.assertEquals('totalAktiva', x-property-mappings.get('total_aktiva'));
        System.assertEquals('totalPassiva', x-property-mappings.get('total_passiva'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBilanzReport bilanzReport = new OASBilanzReport();
        System.assertEquals(new List<OASBilanzItem>(), bilanzReport.aktiva);
        System.assertEquals(new List<OASBilanzItem>(), bilanzReport.passiva);
        System.assertEquals(null, bilanzReport.balanced);
        System.assertEquals(null, bilanzReport.generatedAt);
        System.assertEquals(null, bilanzReport.period);
        System.assertEquals(null, bilanzReport.totalAktiva);
        System.assertEquals(null, bilanzReport.totalPassiva);
    }
}
