@isTest
private class OASQuotationTest {
    @isTest
    private static void equalsSameInstance() {
        OASQuotation quotation1 = OASQuotation.getExample();
        OASQuotation quotation2 = quotation1;
        OASQuotation quotation3 = new OASQuotation();
        OASQuotation quotation4 = quotation3;

        System.assert(quotation1.equals(quotation2));
        System.assert(quotation2.equals(quotation1));
        System.assert(quotation1.equals(quotation1));
        System.assert(quotation3.equals(quotation4));
        System.assert(quotation4.equals(quotation3));
        System.assert(quotation3.equals(quotation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQuotation quotation1 = OASQuotation.getExample();
        OASQuotation quotation2 = OASQuotation.getExample();
        OASQuotation quotation3 = new OASQuotation();
        OASQuotation quotation4 = new OASQuotation();

        System.assert(quotation1.equals(quotation2));
        System.assert(quotation2.equals(quotation1));
        System.assert(quotation3.equals(quotation4));
        System.assert(quotation4.equals(quotation3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQuotation quotation1 = OASQuotation.getExample();
        OASQuotation quotation2 = new OASQuotation();

        System.assertEquals(false, quotation1.equals('foo'));
        System.assertEquals(false, quotation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQuotation quotation1 = OASQuotation.getExample();
        OASQuotation quotation2 = new OASQuotation();
        OASQuotation quotation3;

        System.assertEquals(false, quotation1.equals(quotation3));
        System.assertEquals(false, quotation2.equals(quotation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQuotation quotation1 = OASQuotation.getExample();
        OASQuotation quotation2 = new OASQuotation();

        System.assertEquals(quotation1.hashCode(), quotation1.hashCode());
        System.assertEquals(quotation2.hashCode(), quotation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQuotation quotation1 = OASQuotation.getExample();
        OASQuotation quotation2 = OASQuotation.getExample();
        OASQuotation quotation3 = new OASQuotation();
        OASQuotation quotation4 = new OASQuotation();

        System.assert(quotation1.equals(quotation2));
        System.assert(quotation3.equals(quotation4));
        System.assertEquals(quotation1.hashCode(), quotation2.hashCode());
        System.assertEquals(quotation3.hashCode(), quotation4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQuotation quotation = new OASQuotation();
        Map<String, String> x-property-mappings = quotation.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
