@isTest
private class OASUmsatzsteuerReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASUmsatzsteuerReport umsatzsteuerReport1 = OASUmsatzsteuerReport.getExample();
        OASUmsatzsteuerReport umsatzsteuerReport2 = umsatzsteuerReport1;
        OASUmsatzsteuerReport umsatzsteuerReport3 = new OASUmsatzsteuerReport();
        OASUmsatzsteuerReport umsatzsteuerReport4 = umsatzsteuerReport3;

        System.assert(umsatzsteuerReport1.equals(umsatzsteuerReport2));
        System.assert(umsatzsteuerReport2.equals(umsatzsteuerReport1));
        System.assert(umsatzsteuerReport1.equals(umsatzsteuerReport1));
        System.assert(umsatzsteuerReport3.equals(umsatzsteuerReport4));
        System.assert(umsatzsteuerReport4.equals(umsatzsteuerReport3));
        System.assert(umsatzsteuerReport3.equals(umsatzsteuerReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUmsatzsteuerReport umsatzsteuerReport1 = OASUmsatzsteuerReport.getExample();
        OASUmsatzsteuerReport umsatzsteuerReport2 = OASUmsatzsteuerReport.getExample();
        OASUmsatzsteuerReport umsatzsteuerReport3 = new OASUmsatzsteuerReport();
        OASUmsatzsteuerReport umsatzsteuerReport4 = new OASUmsatzsteuerReport();

        System.assert(umsatzsteuerReport1.equals(umsatzsteuerReport2));
        System.assert(umsatzsteuerReport2.equals(umsatzsteuerReport1));
        System.assert(umsatzsteuerReport3.equals(umsatzsteuerReport4));
        System.assert(umsatzsteuerReport4.equals(umsatzsteuerReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUmsatzsteuerReport umsatzsteuerReport1 = OASUmsatzsteuerReport.getExample();
        OASUmsatzsteuerReport umsatzsteuerReport2 = new OASUmsatzsteuerReport();

        System.assertEquals(false, umsatzsteuerReport1.equals('foo'));
        System.assertEquals(false, umsatzsteuerReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUmsatzsteuerReport umsatzsteuerReport1 = OASUmsatzsteuerReport.getExample();
        OASUmsatzsteuerReport umsatzsteuerReport2 = new OASUmsatzsteuerReport();
        OASUmsatzsteuerReport umsatzsteuerReport3;

        System.assertEquals(false, umsatzsteuerReport1.equals(umsatzsteuerReport3));
        System.assertEquals(false, umsatzsteuerReport2.equals(umsatzsteuerReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUmsatzsteuerReport umsatzsteuerReport1 = OASUmsatzsteuerReport.getExample();
        OASUmsatzsteuerReport umsatzsteuerReport2 = new OASUmsatzsteuerReport();

        System.assertEquals(umsatzsteuerReport1.hashCode(), umsatzsteuerReport1.hashCode());
        System.assertEquals(umsatzsteuerReport2.hashCode(), umsatzsteuerReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUmsatzsteuerReport umsatzsteuerReport1 = OASUmsatzsteuerReport.getExample();
        OASUmsatzsteuerReport umsatzsteuerReport2 = OASUmsatzsteuerReport.getExample();
        OASUmsatzsteuerReport umsatzsteuerReport3 = new OASUmsatzsteuerReport();
        OASUmsatzsteuerReport umsatzsteuerReport4 = new OASUmsatzsteuerReport();

        System.assert(umsatzsteuerReport1.equals(umsatzsteuerReport2));
        System.assert(umsatzsteuerReport3.equals(umsatzsteuerReport4));
        System.assertEquals(umsatzsteuerReport1.hashCode(), umsatzsteuerReport2.hashCode());
        System.assertEquals(umsatzsteuerReport3.hashCode(), umsatzsteuerReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUmsatzsteuerReport umsatzsteuerReport = new OASUmsatzsteuerReport();
        Map<String, String> x-property-mappings = umsatzsteuerReport.getx-property-mappings();
        System.assertEquals('generatedAt', x-property-mappings.get('generated_at'));
        System.assertEquals('inputTax', x-property-mappings.get('input_tax'));
        System.assertEquals('outputTax', x-property-mappings.get('output_tax'));
        System.assertEquals('totalInputTax', x-property-mappings.get('total_input_tax'));
        System.assertEquals('totalOutputTax', x-property-mappings.get('total_output_tax'));
        System.assertEquals('vatPayable', x-property-mappings.get('vat_payable'));
        System.assertEquals('vatRefund', x-property-mappings.get('vat_refund'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASUmsatzsteuerReport umsatzsteuerReport = new OASUmsatzsteuerReport();
        System.assertEquals(new List<OASVatDetail>(), umsatzsteuerReport.inputTax);
        System.assertEquals(new List<OASVatDetail>(), umsatzsteuerReport.outputTax);
        System.assertEquals(null, umsatzsteuerReport.generatedAt);
        System.assertEquals(null, umsatzsteuerReport.period);
        System.assertEquals(null, umsatzsteuerReport.totalInputTax);
        System.assertEquals(null, umsatzsteuerReport.totalOutputTax);
        System.assertEquals(null, umsatzsteuerReport.vatPayable);
        System.assertEquals(null, umsatzsteuerReport.vatRefund);
    }
}
