@isTest
private class OASDownPaymentInvoiceTest {
    @isTest
    private static void equalsSameInstance() {
        OASDownPaymentInvoice downPaymentInvoice1 = OASDownPaymentInvoice.getExample();
        OASDownPaymentInvoice downPaymentInvoice2 = downPaymentInvoice1;
        OASDownPaymentInvoice downPaymentInvoice3 = new OASDownPaymentInvoice();
        OASDownPaymentInvoice downPaymentInvoice4 = downPaymentInvoice3;

        System.assert(downPaymentInvoice1.equals(downPaymentInvoice2));
        System.assert(downPaymentInvoice2.equals(downPaymentInvoice1));
        System.assert(downPaymentInvoice1.equals(downPaymentInvoice1));
        System.assert(downPaymentInvoice3.equals(downPaymentInvoice4));
        System.assert(downPaymentInvoice4.equals(downPaymentInvoice3));
        System.assert(downPaymentInvoice3.equals(downPaymentInvoice3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDownPaymentInvoice downPaymentInvoice1 = OASDownPaymentInvoice.getExample();
        OASDownPaymentInvoice downPaymentInvoice2 = OASDownPaymentInvoice.getExample();
        OASDownPaymentInvoice downPaymentInvoice3 = new OASDownPaymentInvoice();
        OASDownPaymentInvoice downPaymentInvoice4 = new OASDownPaymentInvoice();

        System.assert(downPaymentInvoice1.equals(downPaymentInvoice2));
        System.assert(downPaymentInvoice2.equals(downPaymentInvoice1));
        System.assert(downPaymentInvoice3.equals(downPaymentInvoice4));
        System.assert(downPaymentInvoice4.equals(downPaymentInvoice3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDownPaymentInvoice downPaymentInvoice1 = OASDownPaymentInvoice.getExample();
        OASDownPaymentInvoice downPaymentInvoice2 = new OASDownPaymentInvoice();

        System.assertEquals(false, downPaymentInvoice1.equals('foo'));
        System.assertEquals(false, downPaymentInvoice2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDownPaymentInvoice downPaymentInvoice1 = OASDownPaymentInvoice.getExample();
        OASDownPaymentInvoice downPaymentInvoice2 = new OASDownPaymentInvoice();
        OASDownPaymentInvoice downPaymentInvoice3;

        System.assertEquals(false, downPaymentInvoice1.equals(downPaymentInvoice3));
        System.assertEquals(false, downPaymentInvoice2.equals(downPaymentInvoice3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDownPaymentInvoice downPaymentInvoice1 = OASDownPaymentInvoice.getExample();
        OASDownPaymentInvoice downPaymentInvoice2 = new OASDownPaymentInvoice();

        System.assertEquals(downPaymentInvoice1.hashCode(), downPaymentInvoice1.hashCode());
        System.assertEquals(downPaymentInvoice2.hashCode(), downPaymentInvoice2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDownPaymentInvoice downPaymentInvoice1 = OASDownPaymentInvoice.getExample();
        OASDownPaymentInvoice downPaymentInvoice2 = OASDownPaymentInvoice.getExample();
        OASDownPaymentInvoice downPaymentInvoice3 = new OASDownPaymentInvoice();
        OASDownPaymentInvoice downPaymentInvoice4 = new OASDownPaymentInvoice();

        System.assert(downPaymentInvoice1.equals(downPaymentInvoice2));
        System.assert(downPaymentInvoice3.equals(downPaymentInvoice4));
        System.assertEquals(downPaymentInvoice1.hashCode(), downPaymentInvoice2.hashCode());
        System.assertEquals(downPaymentInvoice3.hashCode(), downPaymentInvoice4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDownPaymentInvoice downPaymentInvoice = new OASDownPaymentInvoice();
        Map<String, String> x-property-mappings = downPaymentInvoice.getx-property-mappings();
        System.assertEquals('contactId', x-property-mappings.get('contact_id'));
        System.assertEquals('contactName', x-property-mappings.get('contact_name'));
        System.assertEquals('createdAt', x-property-mappings.get('created_at'));
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
        System.assertEquals('paidAmount', x-property-mappings.get('paid_amount'));
        System.assertEquals('totalAmount', x-property-mappings.get('total_amount'));
        System.assertEquals('voucherDate', x-property-mappings.get('voucher_date'));
        System.assertEquals('voucherNumber', x-property-mappings.get('voucher_number'));
        System.assertEquals('voucherStatus', x-property-mappings.get('voucher_status'));
    }
}
