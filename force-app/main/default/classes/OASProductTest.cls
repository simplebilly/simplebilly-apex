@isTest
private class OASProductTest {
    @isTest
    private static void equalsSameInstance() {
        OASProduct product1 = OASProduct.getExample();
        OASProduct product2 = product1;
        OASProduct product3 = new OASProduct();
        OASProduct product4 = product3;

        System.assert(product1.equals(product2));
        System.assert(product2.equals(product1));
        System.assert(product1.equals(product1));
        System.assert(product3.equals(product4));
        System.assert(product4.equals(product3));
        System.assert(product3.equals(product3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProduct product1 = OASProduct.getExample();
        OASProduct product2 = OASProduct.getExample();
        OASProduct product3 = new OASProduct();
        OASProduct product4 = new OASProduct();

        System.assert(product1.equals(product2));
        System.assert(product2.equals(product1));
        System.assert(product3.equals(product4));
        System.assert(product4.equals(product3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProduct product1 = OASProduct.getExample();
        OASProduct product2 = new OASProduct();

        System.assertEquals(false, product1.equals('foo'));
        System.assertEquals(false, product2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProduct product1 = OASProduct.getExample();
        OASProduct product2 = new OASProduct();
        OASProduct product3;

        System.assertEquals(false, product1.equals(product3));
        System.assertEquals(false, product2.equals(product3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProduct product1 = OASProduct.getExample();
        OASProduct product2 = new OASProduct();

        System.assertEquals(product1.hashCode(), product1.hashCode());
        System.assertEquals(product2.hashCode(), product2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProduct product1 = OASProduct.getExample();
        OASProduct product2 = OASProduct.getExample();
        OASProduct product3 = new OASProduct();
        OASProduct product4 = new OASProduct();

        System.assert(product1.equals(product2));
        System.assert(product3.equals(product4));
        System.assertEquals(product1.hashCode(), product2.hashCode());
        System.assertEquals(product3.hashCode(), product4.hashCode());
    }
}
