@isTest
private class OASDatevBookingPreviewTest {
    @isTest
    private static void equalsSameInstance() {
        OASDatevBookingPreview datevBookingPreview1 = OASDatevBookingPreview.getExample();
        OASDatevBookingPreview datevBookingPreview2 = datevBookingPreview1;
        OASDatevBookingPreview datevBookingPreview3 = new OASDatevBookingPreview();
        OASDatevBookingPreview datevBookingPreview4 = datevBookingPreview3;

        System.assert(datevBookingPreview1.equals(datevBookingPreview2));
        System.assert(datevBookingPreview2.equals(datevBookingPreview1));
        System.assert(datevBookingPreview1.equals(datevBookingPreview1));
        System.assert(datevBookingPreview3.equals(datevBookingPreview4));
        System.assert(datevBookingPreview4.equals(datevBookingPreview3));
        System.assert(datevBookingPreview3.equals(datevBookingPreview3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDatevBookingPreview datevBookingPreview1 = OASDatevBookingPreview.getExample();
        OASDatevBookingPreview datevBookingPreview2 = OASDatevBookingPreview.getExample();
        OASDatevBookingPreview datevBookingPreview3 = new OASDatevBookingPreview();
        OASDatevBookingPreview datevBookingPreview4 = new OASDatevBookingPreview();

        System.assert(datevBookingPreview1.equals(datevBookingPreview2));
        System.assert(datevBookingPreview2.equals(datevBookingPreview1));
        System.assert(datevBookingPreview3.equals(datevBookingPreview4));
        System.assert(datevBookingPreview4.equals(datevBookingPreview3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDatevBookingPreview datevBookingPreview1 = OASDatevBookingPreview.getExample();
        OASDatevBookingPreview datevBookingPreview2 = new OASDatevBookingPreview();

        System.assertEquals(false, datevBookingPreview1.equals('foo'));
        System.assertEquals(false, datevBookingPreview2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDatevBookingPreview datevBookingPreview1 = OASDatevBookingPreview.getExample();
        OASDatevBookingPreview datevBookingPreview2 = new OASDatevBookingPreview();
        OASDatevBookingPreview datevBookingPreview3;

        System.assertEquals(false, datevBookingPreview1.equals(datevBookingPreview3));
        System.assertEquals(false, datevBookingPreview2.equals(datevBookingPreview3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDatevBookingPreview datevBookingPreview1 = OASDatevBookingPreview.getExample();
        OASDatevBookingPreview datevBookingPreview2 = new OASDatevBookingPreview();

        System.assertEquals(datevBookingPreview1.hashCode(), datevBookingPreview1.hashCode());
        System.assertEquals(datevBookingPreview2.hashCode(), datevBookingPreview2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDatevBookingPreview datevBookingPreview1 = OASDatevBookingPreview.getExample();
        OASDatevBookingPreview datevBookingPreview2 = OASDatevBookingPreview.getExample();
        OASDatevBookingPreview datevBookingPreview3 = new OASDatevBookingPreview();
        OASDatevBookingPreview datevBookingPreview4 = new OASDatevBookingPreview();

        System.assert(datevBookingPreview1.equals(datevBookingPreview2));
        System.assert(datevBookingPreview3.equals(datevBookingPreview4));
        System.assertEquals(datevBookingPreview1.hashCode(), datevBookingPreview2.hashCode());
        System.assertEquals(datevBookingPreview3.hashCode(), datevBookingPreview4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDatevBookingPreview datevBookingPreview = new OASDatevBookingPreview();
        Map<String, String> x-property-mappings = datevBookingPreview.getx-property-mappings();
        System.assertEquals('accountNumber', x-property-mappings.get('account_number'));
        System.assertEquals('debitCredit', x-property-mappings.get('debit_credit'));
        System.assertEquals('documentDate', x-property-mappings.get('document_date'));
        System.assertEquals('documentText', x-property-mappings.get('document_text'));
        System.assertEquals('netAmount', x-property-mappings.get('net_amount'));
        System.assertEquals('oppositeAccount', x-property-mappings.get('opposite_account'));
        System.assertEquals('taxAmount', x-property-mappings.get('tax_amount'));
        System.assertEquals('taxRate', x-property-mappings.get('tax_rate'));
    }
}
