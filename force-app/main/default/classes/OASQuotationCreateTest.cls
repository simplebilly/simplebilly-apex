@isTest
private class OASQuotationCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASQuotationCreate quotationCreate1 = OASQuotationCreate.getExample();
        OASQuotationCreate quotationCreate2 = quotationCreate1;
        OASQuotationCreate quotationCreate3 = new OASQuotationCreate();
        OASQuotationCreate quotationCreate4 = quotationCreate3;

        System.assert(quotationCreate1.equals(quotationCreate2));
        System.assert(quotationCreate2.equals(quotationCreate1));
        System.assert(quotationCreate1.equals(quotationCreate1));
        System.assert(quotationCreate3.equals(quotationCreate4));
        System.assert(quotationCreate4.equals(quotationCreate3));
        System.assert(quotationCreate3.equals(quotationCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQuotationCreate quotationCreate1 = OASQuotationCreate.getExample();
        OASQuotationCreate quotationCreate2 = OASQuotationCreate.getExample();
        OASQuotationCreate quotationCreate3 = new OASQuotationCreate();
        OASQuotationCreate quotationCreate4 = new OASQuotationCreate();

        System.assert(quotationCreate1.equals(quotationCreate2));
        System.assert(quotationCreate2.equals(quotationCreate1));
        System.assert(quotationCreate3.equals(quotationCreate4));
        System.assert(quotationCreate4.equals(quotationCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQuotationCreate quotationCreate1 = OASQuotationCreate.getExample();
        OASQuotationCreate quotationCreate2 = new OASQuotationCreate();

        System.assertEquals(false, quotationCreate1.equals('foo'));
        System.assertEquals(false, quotationCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQuotationCreate quotationCreate1 = OASQuotationCreate.getExample();
        OASQuotationCreate quotationCreate2 = new OASQuotationCreate();
        OASQuotationCreate quotationCreate3;

        System.assertEquals(false, quotationCreate1.equals(quotationCreate3));
        System.assertEquals(false, quotationCreate2.equals(quotationCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQuotationCreate quotationCreate1 = OASQuotationCreate.getExample();
        OASQuotationCreate quotationCreate2 = new OASQuotationCreate();

        System.assertEquals(quotationCreate1.hashCode(), quotationCreate1.hashCode());
        System.assertEquals(quotationCreate2.hashCode(), quotationCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQuotationCreate quotationCreate1 = OASQuotationCreate.getExample();
        OASQuotationCreate quotationCreate2 = OASQuotationCreate.getExample();
        OASQuotationCreate quotationCreate3 = new OASQuotationCreate();
        OASQuotationCreate quotationCreate4 = new OASQuotationCreate();

        System.assert(quotationCreate1.equals(quotationCreate2));
        System.assert(quotationCreate3.equals(quotationCreate4));
        System.assertEquals(quotationCreate1.hashCode(), quotationCreate2.hashCode());
        System.assertEquals(quotationCreate3.hashCode(), quotationCreate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQuotationCreate quotationCreate = new OASQuotationCreate();
        Map<String, String> x-property-mappings = quotationCreate.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
