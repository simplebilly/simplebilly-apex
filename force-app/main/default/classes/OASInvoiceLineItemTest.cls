@isTest
private class OASInvoiceLineItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASInvoiceLineItem invoiceLineItem1 = OASInvoiceLineItem.getExample();
        OASInvoiceLineItem invoiceLineItem2 = invoiceLineItem1;
        OASInvoiceLineItem invoiceLineItem3 = new OASInvoiceLineItem();
        OASInvoiceLineItem invoiceLineItem4 = invoiceLineItem3;

        System.assert(invoiceLineItem1.equals(invoiceLineItem2));
        System.assert(invoiceLineItem2.equals(invoiceLineItem1));
        System.assert(invoiceLineItem1.equals(invoiceLineItem1));
        System.assert(invoiceLineItem3.equals(invoiceLineItem4));
        System.assert(invoiceLineItem4.equals(invoiceLineItem3));
        System.assert(invoiceLineItem3.equals(invoiceLineItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInvoiceLineItem invoiceLineItem1 = OASInvoiceLineItem.getExample();
        OASInvoiceLineItem invoiceLineItem2 = OASInvoiceLineItem.getExample();
        OASInvoiceLineItem invoiceLineItem3 = new OASInvoiceLineItem();
        OASInvoiceLineItem invoiceLineItem4 = new OASInvoiceLineItem();

        System.assert(invoiceLineItem1.equals(invoiceLineItem2));
        System.assert(invoiceLineItem2.equals(invoiceLineItem1));
        System.assert(invoiceLineItem3.equals(invoiceLineItem4));
        System.assert(invoiceLineItem4.equals(invoiceLineItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInvoiceLineItem invoiceLineItem1 = OASInvoiceLineItem.getExample();
        OASInvoiceLineItem invoiceLineItem2 = new OASInvoiceLineItem();

        System.assertEquals(false, invoiceLineItem1.equals('foo'));
        System.assertEquals(false, invoiceLineItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInvoiceLineItem invoiceLineItem1 = OASInvoiceLineItem.getExample();
        OASInvoiceLineItem invoiceLineItem2 = new OASInvoiceLineItem();
        OASInvoiceLineItem invoiceLineItem3;

        System.assertEquals(false, invoiceLineItem1.equals(invoiceLineItem3));
        System.assertEquals(false, invoiceLineItem2.equals(invoiceLineItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInvoiceLineItem invoiceLineItem1 = OASInvoiceLineItem.getExample();
        OASInvoiceLineItem invoiceLineItem2 = new OASInvoiceLineItem();

        System.assertEquals(invoiceLineItem1.hashCode(), invoiceLineItem1.hashCode());
        System.assertEquals(invoiceLineItem2.hashCode(), invoiceLineItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInvoiceLineItem invoiceLineItem1 = OASInvoiceLineItem.getExample();
        OASInvoiceLineItem invoiceLineItem2 = OASInvoiceLineItem.getExample();
        OASInvoiceLineItem invoiceLineItem3 = new OASInvoiceLineItem();
        OASInvoiceLineItem invoiceLineItem4 = new OASInvoiceLineItem();

        System.assert(invoiceLineItem1.equals(invoiceLineItem2));
        System.assert(invoiceLineItem3.equals(invoiceLineItem4));
        System.assertEquals(invoiceLineItem1.hashCode(), invoiceLineItem2.hashCode());
        System.assertEquals(invoiceLineItem3.hashCode(), invoiceLineItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASInvoiceLineItem invoiceLineItem = new OASInvoiceLineItem();
        Map<String, String> x-property-mappings = invoiceLineItem.getx-property-mappings();
        System.assertEquals('articleNumber', x-property-mappings.get('article_number'));
        System.assertEquals('discountAmount', x-property-mappings.get('discount_amount'));
        System.assertEquals('discountPercentage', x-property-mappings.get('discount_percentage'));
        System.assertEquals('inputVatDeductible', x-property-mappings.get('input_vat_deductible'));
        System.assertEquals('inputVatRate', x-property-mappings.get('input_vat_rate'));
        System.assertEquals('isIntraCommunityAcquisition', x-property-mappings.get('is_intra_community_acquisition'));
        System.assertEquals('isMargin25a', x-property-mappings.get('is_margin_25a'));
        System.assertEquals('ledgerAccount', x-property-mappings.get('ledger_account'));
        System.assertEquals('lineTotal', x-property-mappings.get('line_total'));
        System.assertEquals('lineTotalGross', x-property-mappings.get('line_total_gross'));
        System.assertEquals('margin25aPurchasePrice', x-property-mappings.get('margin_25a_purchase_price'));
        System.assertEquals('meterPointId', x-property-mappings.get('meter_point_id'));
        System.assertEquals('priceComponents', x-property-mappings.get('price_components'));
        System.assertEquals('productId', x-property-mappings.get('product_id'));
        System.assertEquals('productSku', x-property-mappings.get('product_sku'));
        System.assertEquals('supplierArticleNumber', x-property-mappings.get('supplier_article_number'));
        System.assertEquals('taxRate', x-property-mappings.get('tax_rate'));
        System.assertEquals('unitPrice', x-property-mappings.get('unit_price'));
        System.assertEquals('usageDataId', x-property-mappings.get('usage_data_id'));
        System.assertEquals('vatRateNominal', x-property-mappings.get('vat_rate_nominal'));
        System.assertEquals('vatSpecialCase', x-property-mappings.get('vat_special_case'));
    }
}
