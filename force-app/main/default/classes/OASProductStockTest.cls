@isTest
private class OASProductStockTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductStock productStock1 = OASProductStock.getExample();
        OASProductStock productStock2 = productStock1;
        OASProductStock productStock3 = new OASProductStock();
        OASProductStock productStock4 = productStock3;

        System.assert(productStock1.equals(productStock2));
        System.assert(productStock2.equals(productStock1));
        System.assert(productStock1.equals(productStock1));
        System.assert(productStock3.equals(productStock4));
        System.assert(productStock4.equals(productStock3));
        System.assert(productStock3.equals(productStock3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductStock productStock1 = OASProductStock.getExample();
        OASProductStock productStock2 = OASProductStock.getExample();
        OASProductStock productStock3 = new OASProductStock();
        OASProductStock productStock4 = new OASProductStock();

        System.assert(productStock1.equals(productStock2));
        System.assert(productStock2.equals(productStock1));
        System.assert(productStock3.equals(productStock4));
        System.assert(productStock4.equals(productStock3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductStock productStock1 = OASProductStock.getExample();
        OASProductStock productStock2 = new OASProductStock();

        System.assertEquals(false, productStock1.equals('foo'));
        System.assertEquals(false, productStock2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductStock productStock1 = OASProductStock.getExample();
        OASProductStock productStock2 = new OASProductStock();
        OASProductStock productStock3;

        System.assertEquals(false, productStock1.equals(productStock3));
        System.assertEquals(false, productStock2.equals(productStock3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductStock productStock1 = OASProductStock.getExample();
        OASProductStock productStock2 = new OASProductStock();

        System.assertEquals(productStock1.hashCode(), productStock1.hashCode());
        System.assertEquals(productStock2.hashCode(), productStock2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductStock productStock1 = OASProductStock.getExample();
        OASProductStock productStock2 = OASProductStock.getExample();
        OASProductStock productStock3 = new OASProductStock();
        OASProductStock productStock4 = new OASProductStock();

        System.assert(productStock1.equals(productStock2));
        System.assert(productStock3.equals(productStock4));
        System.assertEquals(productStock1.hashCode(), productStock2.hashCode());
        System.assertEquals(productStock3.hashCode(), productStock4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASProductStock productStock = new OASProductStock();
        Map<String, String> x-property-mappings = productStock.getx-property-mappings();
        System.assertEquals('productId', x-property-mappings.get('product_id'));
        System.assertEquals('stockQuantity', x-property-mappings.get('stock_quantity'));
    }
}
