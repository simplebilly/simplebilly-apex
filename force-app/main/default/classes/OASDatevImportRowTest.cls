@isTest
private class OASDatevImportRowTest {
    @isTest
    private static void equalsSameInstance() {
        OASDatevImportRow datevImportRow1 = OASDatevImportRow.getExample();
        OASDatevImportRow datevImportRow2 = datevImportRow1;
        OASDatevImportRow datevImportRow3 = new OASDatevImportRow();
        OASDatevImportRow datevImportRow4 = datevImportRow3;

        System.assert(datevImportRow1.equals(datevImportRow2));
        System.assert(datevImportRow2.equals(datevImportRow1));
        System.assert(datevImportRow1.equals(datevImportRow1));
        System.assert(datevImportRow3.equals(datevImportRow4));
        System.assert(datevImportRow4.equals(datevImportRow3));
        System.assert(datevImportRow3.equals(datevImportRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDatevImportRow datevImportRow1 = OASDatevImportRow.getExample();
        OASDatevImportRow datevImportRow2 = OASDatevImportRow.getExample();
        OASDatevImportRow datevImportRow3 = new OASDatevImportRow();
        OASDatevImportRow datevImportRow4 = new OASDatevImportRow();

        System.assert(datevImportRow1.equals(datevImportRow2));
        System.assert(datevImportRow2.equals(datevImportRow1));
        System.assert(datevImportRow3.equals(datevImportRow4));
        System.assert(datevImportRow4.equals(datevImportRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDatevImportRow datevImportRow1 = OASDatevImportRow.getExample();
        OASDatevImportRow datevImportRow2 = new OASDatevImportRow();

        System.assertEquals(false, datevImportRow1.equals('foo'));
        System.assertEquals(false, datevImportRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDatevImportRow datevImportRow1 = OASDatevImportRow.getExample();
        OASDatevImportRow datevImportRow2 = new OASDatevImportRow();
        OASDatevImportRow datevImportRow3;

        System.assertEquals(false, datevImportRow1.equals(datevImportRow3));
        System.assertEquals(false, datevImportRow2.equals(datevImportRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDatevImportRow datevImportRow1 = OASDatevImportRow.getExample();
        OASDatevImportRow datevImportRow2 = new OASDatevImportRow();

        System.assertEquals(datevImportRow1.hashCode(), datevImportRow1.hashCode());
        System.assertEquals(datevImportRow2.hashCode(), datevImportRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDatevImportRow datevImportRow1 = OASDatevImportRow.getExample();
        OASDatevImportRow datevImportRow2 = OASDatevImportRow.getExample();
        OASDatevImportRow datevImportRow3 = new OASDatevImportRow();
        OASDatevImportRow datevImportRow4 = new OASDatevImportRow();

        System.assert(datevImportRow1.equals(datevImportRow2));
        System.assert(datevImportRow3.equals(datevImportRow4));
        System.assertEquals(datevImportRow1.hashCode(), datevImportRow2.hashCode());
        System.assertEquals(datevImportRow3.hashCode(), datevImportRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDatevImportRow datevImportRow = new OASDatevImportRow();
        Map<String, String> x-property-mappings = datevImportRow.getx-property-mappings();
        System.assertEquals('baseAmount', x-property-mappings.get('base_amount'));
        System.assertEquals('baseCurrency', x-property-mappings.get('base_currency'));
        System.assertEquals('bookingText', x-property-mappings.get('booking_text'));
        System.assertEquals('buKey', x-property-mappings.get('bu_key'));
        System.assertEquals('costCenter1', x-property-mappings.get('cost_center1'));
        System.assertEquals('costCenter2', x-property-mappings.get('cost_center2'));
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
        System.assertEquals('debitCredit', x-property-mappings.get('debit_credit'));
        System.assertEquals('documentDate', x-property-mappings.get('document_date'));
        System.assertEquals('documentField2', x-property-mappings.get('document_field2'));
        System.assertEquals('documentNumber', x-property-mappings.get('document_number'));
        System.assertEquals('euCountryVatId', x-property-mappings.get('eu_country_vat_id'));
        System.assertEquals('euTaxRate', x-property-mappings.get('eu_tax_rate'));
        System.assertEquals('exchangeRate', x-property-mappings.get('exchange_rate'));
        System.assertEquals('oppositeAccount', x-property-mappings.get('opposite_account'));
    }
}
