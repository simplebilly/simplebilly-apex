@isTest
private class OASVatSummaryTest {
    @isTest
    private static void equalsSameInstance() {
        OASVatSummary vatSummary1 = OASVatSummary.getExample();
        OASVatSummary vatSummary2 = vatSummary1;
        OASVatSummary vatSummary3 = new OASVatSummary();
        OASVatSummary vatSummary4 = vatSummary3;

        System.assert(vatSummary1.equals(vatSummary2));
        System.assert(vatSummary2.equals(vatSummary1));
        System.assert(vatSummary1.equals(vatSummary1));
        System.assert(vatSummary3.equals(vatSummary4));
        System.assert(vatSummary4.equals(vatSummary3));
        System.assert(vatSummary3.equals(vatSummary3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASVatSummary vatSummary1 = OASVatSummary.getExample();
        OASVatSummary vatSummary2 = OASVatSummary.getExample();
        OASVatSummary vatSummary3 = new OASVatSummary();
        OASVatSummary vatSummary4 = new OASVatSummary();

        System.assert(vatSummary1.equals(vatSummary2));
        System.assert(vatSummary2.equals(vatSummary1));
        System.assert(vatSummary3.equals(vatSummary4));
        System.assert(vatSummary4.equals(vatSummary3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASVatSummary vatSummary1 = OASVatSummary.getExample();
        OASVatSummary vatSummary2 = new OASVatSummary();

        System.assertEquals(false, vatSummary1.equals('foo'));
        System.assertEquals(false, vatSummary2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASVatSummary vatSummary1 = OASVatSummary.getExample();
        OASVatSummary vatSummary2 = new OASVatSummary();
        OASVatSummary vatSummary3;

        System.assertEquals(false, vatSummary1.equals(vatSummary3));
        System.assertEquals(false, vatSummary2.equals(vatSummary3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASVatSummary vatSummary1 = OASVatSummary.getExample();
        OASVatSummary vatSummary2 = new OASVatSummary();

        System.assertEquals(vatSummary1.hashCode(), vatSummary1.hashCode());
        System.assertEquals(vatSummary2.hashCode(), vatSummary2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASVatSummary vatSummary1 = OASVatSummary.getExample();
        OASVatSummary vatSummary2 = OASVatSummary.getExample();
        OASVatSummary vatSummary3 = new OASVatSummary();
        OASVatSummary vatSummary4 = new OASVatSummary();

        System.assert(vatSummary1.equals(vatSummary2));
        System.assert(vatSummary3.equals(vatSummary4));
        System.assertEquals(vatSummary1.hashCode(), vatSummary2.hashCode());
        System.assertEquals(vatSummary3.hashCode(), vatSummary4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASVatSummary vatSummary = new OASVatSummary();
        Map<String, String> x-property-mappings = vatSummary.getx-property-mappings();
        System.assertEquals('inputTaxItems', x-property-mappings.get('input_tax_items'));
        System.assertEquals('outputTaxItems', x-property-mappings.get('output_tax_items'));
        System.assertEquals('totalInputTax', x-property-mappings.get('total_input_tax'));
        System.assertEquals('totalOutputTax', x-property-mappings.get('total_output_tax'));
        System.assertEquals('vatDue', x-property-mappings.get('vat_due'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASVatSummary vatSummary = new OASVatSummary();
        System.assertEquals(new List<OASVatItem>(), vatSummary.inputTaxItems);
        System.assertEquals(new List<OASVatItem>(), vatSummary.outputTaxItems);
        System.assertEquals(null, vatSummary.totalInputTax);
        System.assertEquals(null, vatSummary.totalOutputTax);
        System.assertEquals(null, vatSummary.vatDue);
    }
}
